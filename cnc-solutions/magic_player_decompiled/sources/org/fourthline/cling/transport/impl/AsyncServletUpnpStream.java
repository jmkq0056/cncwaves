package org.fourthline.cling.transport.impl;

import android.support.v4.media.f;
import g2.a;
import g2.b;
import g2.c;
import g2.e0;
import g2.v;
import j2.e;
import java.io.IOException;
import java.net.URI;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpStatus;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.spi.UpnpStream;
import org.seamless.util.io.IO;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AsyncServletUpnpStream extends UpnpStream implements c {
    private static final Logger log = Logger.getLogger(UpnpStream.class.getName());
    public final a asyncContext;
    public final j2.c request;
    public StreamResponseMessage responseMessage;

    public AsyncServletUpnpStream(ProtocolFactory protocolFactory, a aVar, j2.c cVar) {
        super(protocolFactory);
        this.asyncContext = aVar;
        this.request = cVar;
        aVar.addListener(this);
    }

    public void complete() {
        try {
            this.asyncContext.complete();
        } catch (IllegalStateException e4) {
            log.info("Error calling servlet container's AsyncContext#complete() method: " + e4);
        }
    }

    public abstract Connection createConnection();

    public j2.c getRequest() {
        return this.request;
    }

    public e getResponse() {
        e0 response = this.asyncContext.getResponse();
        if (response != null) {
            return (e) response;
        }
        throw new IllegalStateException("Couldn't get response from asynchronous context, already timed out");
    }

    @Override // g2.c
    public void onComplete(b bVar) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINER)) {
            StringBuilder sbA = f.a("Completed asynchronous processing of HTTP request: ");
            sbA.append(bVar.getSuppliedRequest());
            logger.finer(sbA.toString());
        }
        responseSent(this.responseMessage);
    }

    @Override // g2.c
    public void onError(b bVar) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINER)) {
            StringBuilder sbA = f.a("Asynchronous processing of HTTP request error: ");
            sbA.append(bVar.getThrowable());
            logger.finer(sbA.toString());
        }
        responseException(bVar.getThrowable());
    }

    @Override // g2.c
    public void onStartAsync(b bVar) {
    }

    @Override // g2.c
    public void onTimeout(b bVar) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINER)) {
            StringBuilder sbA = f.a("Asynchronous processing of HTTP request timed out: ");
            sbA.append(bVar.getSuppliedRequest());
            logger.finer(sbA.toString());
        }
        responseException(new Exception("Asynchronous request timed out"));
    }

    public StreamRequestMessage readRequestMessage() throws IOException {
        String method = getRequest().getMethod();
        String requestURI = getRequest().getRequestURI();
        Logger logger = log;
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("Processing HTTP request: " + method + " " + requestURI);
        }
        try {
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(UpnpRequest.Method.getByHttpName(method), URI.create(requestURI));
            if (((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(UpnpRequest.Method.UNKNOWN)) {
                throw new RuntimeException(androidx.appcompat.view.a.a("Method not supported: ", method));
            }
            streamRequestMessage.setConnection(createConnection());
            UpnpHeaders upnpHeaders = new UpnpHeaders();
            Enumeration<String> headerNames = getRequest().getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String strNextElement = headerNames.nextElement();
                Enumeration<String> headers = getRequest().getHeaders(strNextElement);
                while (headers.hasMoreElements()) {
                    upnpHeaders.add(strNextElement, headers.nextElement());
                }
            }
            streamRequestMessage.setHeaders(upnpHeaders);
            v inputStream = null;
            try {
                inputStream = getRequest().getInputStream();
                byte[] bytes = IO.readBytes(inputStream);
                Logger logger2 = log;
                Level level = Level.FINER;
                if (logger2.isLoggable(level)) {
                    StringBuilder sbA = f.a("Reading request body bytes: ");
                    sbA.append(bytes.length);
                    logger2.finer(sbA.toString());
                }
                if (bytes.length > 0 && streamRequestMessage.isContentTypeMissingOrText()) {
                    if (logger2.isLoggable(level)) {
                        logger2.finer("Request contains textual entity body, converting then setting string on message");
                    }
                    streamRequestMessage.setBodyCharacters(bytes);
                } else if (bytes.length > 0) {
                    if (logger2.isLoggable(level)) {
                        logger2.finer("Request contains binary entity body, setting bytes on message");
                    }
                    streamRequestMessage.setBody(UpnpMessage.BodyType.BYTES, bytes);
                } else if (logger2.isLoggable(level)) {
                    logger2.finer("Request did not contain entity body");
                }
                return streamRequestMessage;
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (IllegalArgumentException e4) {
            throw new RuntimeException(androidx.appcompat.view.a.a("Invalid request URI: ", requestURI), e4);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            StreamRequestMessage requestMessage = readRequestMessage();
            Logger logger = log;
            Level level = Level.FINER;
            if (logger.isLoggable(level)) {
                logger.finer("Processing new request message: " + requestMessage);
            }
            StreamResponseMessage streamResponseMessageProcess = process(requestMessage);
            this.responseMessage = streamResponseMessageProcess;
            if (streamResponseMessageProcess != null) {
                if (logger.isLoggable(level)) {
                    logger.finer("Preparing HTTP response message: " + this.responseMessage);
                }
                writeResponseMessage(this.responseMessage);
            } else {
                if (logger.isLoggable(level)) {
                    logger.finer("Sending HTTP response status: 404");
                }
                getResponse().setStatus(HttpStatus.NOT_FOUND_404);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public void writeResponseMessage(StreamResponseMessage streamResponseMessage) throws IOException {
        Logger logger = log;
        if (logger.isLoggable(Level.FINER)) {
            StringBuilder sbA = f.a("Sending HTTP response status: ");
            sbA.append(streamResponseMessage.getOperation().getStatusCode());
            logger.finer(sbA.toString());
        }
        getResponse().setStatus(streamResponseMessage.getOperation().getStatusCode());
        for (Map.Entry<String, List<String>> entry : streamResponseMessage.getHeaders().entrySet()) {
            Iterator<String> it = entry.getValue().iterator();
            while (it.hasNext()) {
                getResponse().addHeader(entry.getKey(), it.next());
            }
        }
        getResponse().setDateHeader(HttpHeaders.DATE, System.currentTimeMillis());
        byte[] bodyBytes = streamResponseMessage.hasBody() ? streamResponseMessage.getBodyBytes() : null;
        int length = bodyBytes != null ? bodyBytes.length : -1;
        if (length > 0) {
            getResponse().setContentLength(length);
            log.finer("Response message has body, writing bytes to stream...");
            IO.writeBytes(getResponse().getOutputStream(), bodyBytes);
        }
    }
}
