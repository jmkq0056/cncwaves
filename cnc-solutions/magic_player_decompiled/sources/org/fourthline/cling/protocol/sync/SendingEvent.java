package org.fourthline.cling.protocol.sync;

import android.support.v4.media.f;
import java.net.URL;
import java.util.Iterator;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.gena.OutgoingEventRequestMessage;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.protocol.SendingSync;

/* JADX INFO: loaded from: classes2.dex */
public class SendingEvent extends SendingSync<OutgoingEventRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingEvent.class.getName());
    public final UnsignedIntegerFourBytes currentSequence;
    public final OutgoingEventRequestMessage[] requestMessages;
    public final String subscriptionId;

    public SendingEvent(UpnpService upnpService, LocalGENASubscription localGENASubscription) {
        super(upnpService, null);
        this.subscriptionId = localGENASubscription.getSubscriptionId();
        this.requestMessages = new OutgoingEventRequestMessage[localGENASubscription.getCallbackURLs().size()];
        Iterator<URL> it = localGENASubscription.getCallbackURLs().iterator();
        int i4 = 0;
        while (it.hasNext()) {
            this.requestMessages[i4] = new OutgoingEventRequestMessage(localGENASubscription, it.next());
            getUpnpService().getConfiguration().getGenaEventProcessor().writeBody(this.requestMessages[i4]);
            i4++;
        }
        this.currentSequence = localGENASubscription.getCurrentSequence();
        localGENASubscription.incrementSequence();
    }

    @Override // org.fourthline.cling.protocol.SendingSync
    public StreamResponseMessage executeSync() {
        Logger logger = log;
        StringBuilder sbA = f.a("Sending event for subscription: ");
        sbA.append(this.subscriptionId);
        logger.fine(sbA.toString());
        StreamResponseMessage streamResponseMessageSend = null;
        for (OutgoingEventRequestMessage outgoingEventRequestMessage : this.requestMessages) {
            if (this.currentSequence.getValue().longValue() == 0) {
                Logger logger2 = log;
                StringBuilder sbA2 = f.a("Sending initial event message to callback URL: ");
                sbA2.append(outgoingEventRequestMessage.getUri());
                logger2.fine(sbA2.toString());
            } else {
                Logger logger3 = log;
                StringBuilder sbA3 = f.a("Sending event message '");
                sbA3.append(this.currentSequence);
                sbA3.append("' to callback URL: ");
                sbA3.append(outgoingEventRequestMessage.getUri());
                logger3.fine(sbA3.toString());
            }
            streamResponseMessageSend = getUpnpService().getRouter().send(outgoingEventRequestMessage);
            log.fine("Received event callback response: " + streamResponseMessageSend);
        }
        return streamResponseMessageSend;
    }
}
