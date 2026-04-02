package org.fourthline.cling.transport.impl.jetty;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.client.ContentExchange;
import org.eclipse.jetty.client.HttpClient;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.thread.ExecutorThreadPool;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.transport.spi.AbstractStreamClient;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamClient;
import org.seamless.util.Exceptions;
import org.seamless.util.MimeType;

/* JADX INFO: loaded from: classes2.dex */
public class StreamClientImpl extends AbstractStreamClient<StreamClientConfigurationImpl, HttpContentExchange> {
    private static final Logger log = Logger.getLogger(StreamClient.class.getName());
    public final HttpClient client;
    public final StreamClientConfigurationImpl configuration;

    public static class HttpContentExchange extends ContentExchange {
        public final HttpClient client;
        public final StreamClientConfigurationImpl configuration;
        public Throwable exception;
        public final StreamRequestMessage requestMessage;

        public HttpContentExchange(StreamClientConfigurationImpl streamClientConfigurationImpl, HttpClient httpClient, StreamRequestMessage streamRequestMessage) {
            super(true);
            this.configuration = streamClientConfigurationImpl;
            this.client = httpClient;
            this.requestMessage = streamRequestMessage;
            applyRequestURLMethod();
            applyRequestHeaders();
            applyRequestBody();
        }

        public void applyRequestBody() {
            if (getRequestMessage().hasBody()) {
                if (getRequestMessage().getBodyType() == UpnpMessage.BodyType.STRING) {
                    if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                        Logger logger = StreamClientImpl.log;
                        StringBuilder sbA = f.a("Writing textual request body: ");
                        sbA.append(getRequestMessage());
                        logger.fine(sbA.toString());
                    }
                    MimeType value = getRequestMessage().getContentTypeHeader() != null ? getRequestMessage().getContentTypeHeader().getValue() : ContentTypeHeader.DEFAULT_CONTENT_TYPE_UTF8;
                    String contentTypeCharset = getRequestMessage().getContentTypeCharset() != null ? getRequestMessage().getContentTypeCharset() : StringUtil.__UTF8;
                    setRequestContentType(value.toString());
                    try {
                        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(getRequestMessage().getBodyString(), contentTypeCharset);
                        setRequestHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(byteArrayBuffer.length()));
                        setRequestContent(byteArrayBuffer);
                        return;
                    } catch (UnsupportedEncodingException e4) {
                        throw new RuntimeException(a.a("Unsupported character encoding: ", contentTypeCharset), e4);
                    }
                }
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    Logger logger2 = StreamClientImpl.log;
                    StringBuilder sbA2 = f.a("Writing binary request body: ");
                    sbA2.append(getRequestMessage());
                    logger2.fine(sbA2.toString());
                }
                if (getRequestMessage().getContentTypeHeader() == null) {
                    StringBuilder sbA3 = f.a("Missing content type header in request message: ");
                    sbA3.append(this.requestMessage);
                    throw new RuntimeException(sbA3.toString());
                }
                setRequestContentType(getRequestMessage().getContentTypeHeader().getValue().toString());
                ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(getRequestMessage().getBodyBytes());
                setRequestHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(byteArrayBuffer2.length()));
                setRequestContent(byteArrayBuffer2);
            }
        }

        public void applyRequestHeaders() {
            UpnpHeaders headers = getRequestMessage().getHeaders();
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger logger = StreamClientImpl.log;
                StringBuilder sbA = f.a("Writing headers on HttpContentExchange: ");
                sbA.append(headers.size());
                logger.fine(sbA.toString());
            }
            UpnpHeader.Type type = UpnpHeader.Type.USER_AGENT;
            if (!headers.containsKey(type)) {
                setRequestHeader(type.getHttpName(), getConfiguration().getUserAgentValue(getRequestMessage().getUdaMajorVersion(), getRequestMessage().getUdaMinorVersion()));
            }
            for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                        StreamClientImpl.log.fine("Setting header '" + key + "': " + str);
                    }
                    addRequestHeader(key, str);
                }
            }
        }

        public void applyRequestURLMethod() {
            UpnpRequest operation = getRequestMessage().getOperation();
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger logger = StreamClientImpl.log;
                StringBuilder sbA = f.a("Preparing HTTP request message with method '");
                sbA.append(operation.getHttpMethodName());
                sbA.append("': ");
                sbA.append(getRequestMessage());
                logger.fine(sbA.toString());
            }
            setURL(operation.getURI().toString());
            setMethod(operation.getHttpMethodName());
        }

        public StreamResponseMessage createResponse() {
            UpnpResponse upnpResponse = new UpnpResponse(getResponseStatus(), UpnpResponse.Status.getByStatusCode(getResponseStatus()).getStatusMsg());
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                StreamClientImpl.log.fine("Received response: " + upnpResponse);
            }
            StreamResponseMessage streamResponseMessage = new StreamResponseMessage(upnpResponse);
            UpnpHeaders upnpHeaders = new UpnpHeaders();
            HttpFields responseFields = getResponseFields();
            for (String str : responseFields.getFieldNamesCollection()) {
                Iterator<String> it = responseFields.getValuesCollection(str).iterator();
                while (it.hasNext()) {
                    upnpHeaders.add(str, it.next());
                }
            }
            streamResponseMessage.setHeaders(upnpHeaders);
            byte[] responseContentBytes = getResponseContentBytes();
            if (responseContentBytes != null && responseContentBytes.length > 0 && streamResponseMessage.isContentTypeMissingOrText()) {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    StreamClientImpl.log.fine("Response contains textual entity body, converting then setting string on message");
                }
                try {
                    streamResponseMessage.setBodyCharacters(responseContentBytes);
                } catch (UnsupportedEncodingException e4) {
                    throw new RuntimeException("Unsupported character encoding: " + e4, e4);
                }
            } else if (responseContentBytes != null && responseContentBytes.length > 0) {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    StreamClientImpl.log.fine("Response contains binary entity body, setting bytes on message");
                }
                streamResponseMessage.setBody(UpnpMessage.BodyType.BYTES, responseContentBytes);
            } else if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                StreamClientImpl.log.fine("Response did not contain entity body");
            }
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                StreamClientImpl.log.fine("Response message complete: " + streamResponseMessage);
            }
            return streamResponseMessage;
        }

        public StreamClientConfigurationImpl getConfiguration() {
            return this.configuration;
        }

        public StreamRequestMessage getRequestMessage() {
            return this.requestMessage;
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onConnectionFailed(Throwable th) {
            Logger logger = StreamClientImpl.log;
            Level level = Level.WARNING;
            StringBuilder sbA = f.a("HTTP connection failed: ");
            sbA.append(this.requestMessage);
            logger.log(level, sbA.toString(), Exceptions.unwrap(th));
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onException(Throwable th) {
            Logger logger = StreamClientImpl.log;
            Level level = Level.WARNING;
            StringBuilder sbA = f.a("HTTP request failed: ");
            sbA.append(this.requestMessage);
            logger.log(level, sbA.toString(), Exceptions.unwrap(th));
        }
    }

    public StreamClientImpl(StreamClientConfigurationImpl streamClientConfigurationImpl) {
        this.configuration = streamClientConfigurationImpl;
        log.info("Starting Jetty HttpClient...");
        HttpClient httpClient = new HttpClient();
        this.client = httpClient;
        httpClient.setThreadPool(new ExecutorThreadPool(getConfiguration().getRequestExecutorService()) { // from class: org.fourthline.cling.transport.impl.jetty.StreamClientImpl.1
            @Override // org.eclipse.jetty.util.thread.ExecutorThreadPool, org.eclipse.jetty.util.component.AbstractLifeCycle
            public void doStop() {
            }
        });
        httpClient.setTimeout((streamClientConfigurationImpl.getTimeoutSeconds() + 5) * 1000);
        httpClient.setConnectTimeout((streamClientConfigurationImpl.getTimeoutSeconds() + 5) * 1000);
        httpClient.setMaxRetries(streamClientConfigurationImpl.getRequestRetryCount());
        try {
            httpClient.start();
        } catch (Exception e4) {
            throw new InitializationException("Could not start Jetty HTTP client: " + e4, e4);
        }
    }

    @Override // org.fourthline.cling.transport.spi.AbstractStreamClient
    public boolean logExecutionException(Throwable th) {
        return false;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClient
    public void stop() {
        try {
            this.client.stop();
        } catch (Exception e4) {
            log.info("Error stopping HTTP client: " + e4);
        }
    }

    @Override // org.fourthline.cling.transport.spi.AbstractStreamClient
    public void abort(HttpContentExchange httpContentExchange) {
        httpContentExchange.cancel();
    }

    @Override // org.fourthline.cling.transport.spi.AbstractStreamClient
    public Callable<StreamResponseMessage> createCallable(final StreamRequestMessage streamRequestMessage, final HttpContentExchange httpContentExchange) {
        return new Callable<StreamResponseMessage>() { // from class: org.fourthline.cling.transport.impl.jetty.StreamClientImpl.2
            @Override // java.util.concurrent.Callable
            public StreamResponseMessage call() {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    Logger logger = StreamClientImpl.log;
                    StringBuilder sbA = f.a("Sending HTTP request: ");
                    sbA.append(streamRequestMessage);
                    logger.fine(sbA.toString());
                }
                StreamClientImpl.this.client.send(httpContentExchange);
                int iWaitForDone = httpContentExchange.waitForDone();
                if (iWaitForDone == 7) {
                    try {
                        return httpContentExchange.createResponse();
                    } catch (Throwable th) {
                        Logger logger2 = StreamClientImpl.log;
                        Level level = Level.WARNING;
                        StringBuilder sbA2 = f.a("Error reading response: ");
                        sbA2.append(streamRequestMessage);
                        logger2.log(level, sbA2.toString(), Exceptions.unwrap(th));
                        return null;
                    }
                }
                if (iWaitForDone == 11 || iWaitForDone == 9) {
                    return null;
                }
                StreamClientImpl.log.warning("Unhandled HTTP exchange status: " + iWaitForDone);
                return null;
            }
        };
    }

    @Override // org.fourthline.cling.transport.spi.AbstractStreamClient
    public HttpContentExchange createRequest(StreamRequestMessage streamRequestMessage) {
        return new HttpContentExchange(getConfiguration(), this.client, streamRequestMessage);
    }

    @Override // org.fourthline.cling.transport.spi.StreamClient
    public StreamClientConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
