package org.fourthline.cling.protocol.sync;

import android.support.v4.media.f;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.gena.IncomingUnsubscribeRequestMessage;
import org.fourthline.cling.model.resource.ServiceEventSubscriptionResource;
import org.fourthline.cling.protocol.ReceivingSync;

/* JADX INFO: loaded from: classes2.dex */
public class ReceivingUnsubscribe extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingUnsubscribe.class.getName());

    public ReceivingUnsubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.fourthline.cling.protocol.ReceivingSync
    public StreamResponseMessage executeSync() {
        ServiceEventSubscriptionResource serviceEventSubscriptionResource = (ServiceEventSubscriptionResource) getUpnpService().getRegistry().getResource(ServiceEventSubscriptionResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
        if (serviceEventSubscriptionResource == null) {
            Logger logger = log;
            StringBuilder sbA = f.a("No local resource found: ");
            sbA.append(getInputMessage());
            logger.fine(sbA.toString());
            return null;
        }
        Logger logger2 = log;
        StringBuilder sbA2 = f.a("Found local event subscription matching relative request URI: ");
        sbA2.append(((StreamRequestMessage) getInputMessage()).getUri());
        logger2.fine(sbA2.toString());
        IncomingUnsubscribeRequestMessage incomingUnsubscribeRequestMessage = new IncomingUnsubscribeRequestMessage((StreamRequestMessage) getInputMessage(), serviceEventSubscriptionResource.getModel());
        if (incomingUnsubscribeRequestMessage.getSubscriptionId() != null && (incomingUnsubscribeRequestMessage.hasNotificationHeader() || incomingUnsubscribeRequestMessage.hasCallbackHeader())) {
            StringBuilder sbA3 = f.a("Subscription ID and NT or Callback in unsubcribe request: ");
            sbA3.append(getInputMessage());
            logger2.fine(sbA3.toString());
            return new StreamResponseMessage(UpnpResponse.Status.BAD_REQUEST);
        }
        LocalGENASubscription localSubscription = getUpnpService().getRegistry().getLocalSubscription(incomingUnsubscribeRequestMessage.getSubscriptionId());
        if (localSubscription == null) {
            StringBuilder sbA4 = f.a("Invalid subscription ID for unsubscribe request: ");
            sbA4.append(getInputMessage());
            logger2.fine(sbA4.toString());
            return new StreamResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        logger2.fine("Unregistering subscription: " + localSubscription);
        if (getUpnpService().getRegistry().removeLocalSubscription(localSubscription)) {
            localSubscription.end(null);
        } else {
            logger2.fine("Subscription was already removed from registry");
        }
        return new StreamResponseMessage(UpnpResponse.Status.OK);
    }
}
