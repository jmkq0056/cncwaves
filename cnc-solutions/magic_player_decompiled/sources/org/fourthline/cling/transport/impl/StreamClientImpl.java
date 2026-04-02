package org.fourthline.cling.transport.impl;

import android.support.v4.media.f;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLStreamHandlerFactory;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamClient;
import org.seamless.http.Headers;
import org.seamless.util.io.IO;

/* JADX INFO: loaded from: classes2.dex */
public class StreamClientImpl implements StreamClient {
    public static final String HACK_STREAM_HANDLER_SYSTEM_PROPERTY = "hackStreamHandlerProperty";
    private static final Logger log = Logger.getLogger(StreamClient.class.getName());
    public final StreamClientConfigurationImpl configuration;

    public StreamClientImpl(StreamClientConfigurationImpl streamClientConfigurationImpl) {
        this.configuration = streamClientConfigurationImpl;
        if (ModelUtil.ANDROID_EMULATOR || ModelUtil.ANDROID_RUNTIME) {
            throw new InitializationException("This client does not work on Android. The design of HttpURLConnection is broken, we can not add additional 'permitted' HTTP methods. Read the Cling manual.");
        }
        Logger logger = log;
        StringBuilder sbA = f.a("Using persistent HTTP stream client connections: ");
        sbA.append(streamClientConfigurationImpl.isUsePersistentConnections());
        logger.fine(sbA.toString());
        System.setProperty("http.keepAlive", Boolean.toString(streamClientConfigurationImpl.isUsePersistentConnections()));
        if (System.getProperty(HACK_STREAM_HANDLER_SYSTEM_PROPERTY) == null) {
            logger.fine("Setting custom static URLStreamHandlerFactory to work around bad JDK defaults");
            URL.setURLStreamHandlerFactory((URLStreamHandlerFactory) Class.forName("org.fourthline.cling.transport.impl.FixedSunURLStreamHandler").newInstance());
            System.setProperty(HACK_STREAM_HANDLER_SYSTEM_PROPERTY, "alreadyWorkedAroundTheEvilJDK");
        }
    }

    public void applyHeaders(HttpURLConnection httpURLConnection, Headers headers) {
        Logger logger = log;
        StringBuilder sbA = f.a("Writing headers on HttpURLConnection: ");
        sbA.append(headers.size());
        logger.fine(sbA.toString());
        for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
            for (String str : entry.getValue()) {
                String key = entry.getKey();
                log.fine("Setting header '" + key + "': " + str);
                httpURLConnection.setRequestProperty(key, str);
            }
        }
    }

    public void applyRequestBody(HttpURLConnection httpURLConnection, StreamRequestMessage streamRequestMessage) throws IOException {
        if (!streamRequestMessage.hasBody()) {
            httpURLConnection.setDoOutput(false);
            return;
        }
        httpURLConnection.setDoOutput(true);
        if (streamRequestMessage.getBodyType().equals(UpnpMessage.BodyType.STRING)) {
            IO.writeUTF8(httpURLConnection.getOutputStream(), streamRequestMessage.getBodyString());
        } else if (streamRequestMessage.getBodyType().equals(UpnpMessage.BodyType.BYTES)) {
            IO.writeBytes(httpURLConnection.getOutputStream(), streamRequestMessage.getBodyBytes());
        }
        httpURLConnection.getOutputStream().flush();
    }

    public void applyRequestProperties(HttpURLConnection httpURLConnection, StreamRequestMessage streamRequestMessage) {
        httpURLConnection.setInstanceFollowRedirects(false);
        UpnpHeaders headers = streamRequestMessage.getHeaders();
        UpnpHeader.Type type = UpnpHeader.Type.USER_AGENT;
        if (!headers.containsKey(type)) {
            httpURLConnection.setRequestProperty(type.getHttpName(), getConfiguration().getUserAgentValue(streamRequestMessage.getUdaMajorVersion(), streamRequestMessage.getUdaMinorVersion()));
        }
        applyHeaders(httpURLConnection, streamRequestMessage.getHeaders());
    }

    public StreamResponseMessage createResponse(HttpURLConnection httpURLConnection, InputStream inputStream) throws IOException {
        byte[] bytes = null;
        if (httpURLConnection.getResponseCode() == -1) {
            Logger logger = log;
            StringBuilder sbA = f.a("Received an invalid HTTP response: ");
            sbA.append(httpURLConnection.getURL());
            logger.warning(sbA.toString());
            logger.warning("Is your Cling-based server sending connection heartbeats with RemoteClientInfo#isRequestCancelled? This client can't handle heartbeats, read the manual.");
            return null;
        }
        UpnpResponse upnpResponse = new UpnpResponse(httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage());
        Logger logger2 = log;
        logger2.fine("Received response: " + upnpResponse);
        StreamResponseMessage streamResponseMessage = new StreamResponseMessage(upnpResponse);
        streamResponseMessage.setHeaders(new UpnpHeaders(httpURLConnection.getHeaderFields()));
        if (inputStream != null) {
            try {
                bytes = IO.readBytes(inputStream);
            } finally {
                inputStream.close();
            }
        }
        if (inputStream != null) {
        }
        if (bytes != null && bytes.length > 0 && streamResponseMessage.isContentTypeMissingOrText()) {
            logger2.fine("Response contains textual entity body, converting then setting string on message");
            streamResponseMessage.setBodyCharacters(bytes);
        } else if (bytes == null || bytes.length <= 0) {
            logger2.fine("Response did not contain entity body");
        } else {
            logger2.fine("Response contains binary entity body, setting bytes on message");
            streamResponseMessage.setBody(UpnpMessage.BodyType.BYTES, bytes);
        }
        logger2.fine("Response message complete: " + streamResponseMessage);
        return streamResponseMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016f  */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.net.URL] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.fourthline.cling.transport.impl.StreamClientImpl] */
    @Override // org.fourthline.cling.transport.spi.StreamClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.fourthline.cling.model.message.StreamResponseMessage sendRequest(org.fourthline.cling.model.message.StreamRequestMessage r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.StreamClientImpl.sendRequest(org.fourthline.cling.model.message.StreamRequestMessage):org.fourthline.cling.model.message.StreamResponseMessage");
    }

    @Override // org.fourthline.cling.transport.spi.StreamClient
    public void stop() {
    }

    @Override // org.fourthline.cling.transport.spi.StreamClient
    public StreamClientConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
