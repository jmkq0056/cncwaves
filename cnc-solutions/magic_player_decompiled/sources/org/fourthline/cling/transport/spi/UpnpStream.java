package org.fourthline.cling.transport.spi;

import android.support.v4.media.f;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.protocol.ProtocolCreationException;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.ReceivingSync;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UpnpStream implements Runnable {
    private static Logger log = Logger.getLogger(UpnpStream.class.getName());
    public final ProtocolFactory protocolFactory;
    public ReceivingSync syncProtocol;

    public UpnpStream(ProtocolFactory protocolFactory) {
        this.protocolFactory = protocolFactory;
    }

    public ProtocolFactory getProtocolFactory() {
        return this.protocolFactory;
    }

    public StreamResponseMessage process(StreamRequestMessage streamRequestMessage) {
        log.fine("Processing stream request message: " + streamRequestMessage);
        try {
            this.syncProtocol = getProtocolFactory().createReceivingSync(streamRequestMessage);
            Logger logger = log;
            StringBuilder sbA = f.a("Running protocol for synchronous message processing: ");
            sbA.append(this.syncProtocol);
            logger.fine(sbA.toString());
            this.syncProtocol.run();
            StreamResponseMessage outputMessage = this.syncProtocol.getOutputMessage();
            if (outputMessage == null) {
                log.finer("Protocol did not return any response message");
                return null;
            }
            log.finer("Protocol returned response: " + outputMessage);
            return outputMessage;
        } catch (ProtocolCreationException e4) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("Processing stream request failed - ");
            sbA2.append(Exceptions.unwrap(e4).toString());
            logger2.warning(sbA2.toString());
            return new StreamResponseMessage(UpnpResponse.Status.NOT_IMPLEMENTED);
        }
    }

    public void responseException(Throwable th) {
        ReceivingSync receivingSync = this.syncProtocol;
        if (receivingSync != null) {
            receivingSync.responseException(th);
        }
    }

    public void responseSent(StreamResponseMessage streamResponseMessage) {
        ReceivingSync receivingSync = this.syncProtocol;
        if (receivingSync != null) {
            receivingSync.responseSent(streamResponseMessage);
        }
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(")");
        return sbA.toString();
    }
}
