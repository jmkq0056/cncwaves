package org.fourthline.cling.protocol.sync;

import android.support.v4.media.f;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.gena.OutgoingUnsubscribeRequestMessage;
import org.fourthline.cling.protocol.SendingSync;

/* JADX INFO: loaded from: classes2.dex */
public class SendingUnsubscribe extends SendingSync<OutgoingUnsubscribeRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(SendingUnsubscribe.class.getName());
    public final RemoteGENASubscription subscription;

    public SendingUnsubscribe(UpnpService upnpService, RemoteGENASubscription remoteGENASubscription) {
        super(upnpService, new OutgoingUnsubscribeRequestMessage(remoteGENASubscription, upnpService.getConfiguration().getEventSubscriptionHeaders(remoteGENASubscription.getService())));
        this.subscription = remoteGENASubscription;
    }

    @Override // org.fourthline.cling.protocol.SendingSync
    public StreamResponseMessage executeSync() {
        Logger logger = log;
        StringBuilder sbA = f.a("Sending unsubscribe request: ");
        sbA.append(getInputMessage());
        logger.fine(sbA.toString());
        try {
            StreamResponseMessage streamResponseMessageSend = getUpnpService().getRouter().send(getInputMessage());
            onUnsubscribe(streamResponseMessageSend);
            return streamResponseMessageSend;
        } catch (Throwable th) {
            onUnsubscribe(null);
            throw th;
        }
    }

    public void onUnsubscribe(final StreamResponseMessage streamResponseMessage) {
        getUpnpService().getRegistry().removeRemoteSubscription(this.subscription);
        getUpnpService().getConfiguration().getRegistryListenerExecutor().execute(new Runnable() { // from class: org.fourthline.cling.protocol.sync.SendingUnsubscribe.1
            @Override // java.lang.Runnable
            public void run() {
                StreamResponseMessage streamResponseMessage2 = streamResponseMessage;
                if (streamResponseMessage2 == null) {
                    SendingUnsubscribe.log.fine("Unsubscribe failed, no response received");
                    SendingUnsubscribe.this.subscription.end(CancelReason.UNSUBSCRIBE_FAILED, null);
                    return;
                }
                if (streamResponseMessage2.getOperation().isFailed()) {
                    Logger logger = SendingUnsubscribe.log;
                    StringBuilder sbA = f.a("Unsubscribe failed, response was: ");
                    sbA.append(streamResponseMessage);
                    logger.fine(sbA.toString());
                    SendingUnsubscribe.this.subscription.end(CancelReason.UNSUBSCRIBE_FAILED, streamResponseMessage.getOperation());
                    return;
                }
                Logger logger2 = SendingUnsubscribe.log;
                StringBuilder sbA2 = f.a("Unsubscribe successful, response was: ");
                sbA2.append(streamResponseMessage);
                logger2.fine(sbA2.toString());
                SendingUnsubscribe.this.subscription.end(null, streamResponseMessage.getOperation());
            }
        });
    }
}
