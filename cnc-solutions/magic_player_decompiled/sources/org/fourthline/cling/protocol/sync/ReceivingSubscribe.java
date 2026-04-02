package org.fourthline.cling.protocol.sync;

import android.support.v4.media.f;
import java.net.URL;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.gena.IncomingSubscribeRequestMessage;
import org.fourthline.cling.model.message.gena.OutgoingSubscribeResponseMessage;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.ServiceEventSubscriptionResource;
import org.fourthline.cling.protocol.ReceivingSync;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class ReceivingSubscribe extends ReceivingSync<StreamRequestMessage, OutgoingSubscribeResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingSubscribe.class.getName());
    public LocalGENASubscription subscription;

    public ReceivingSubscribe(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    public OutgoingSubscribeResponseMessage processNewSubscription(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        List<URL> callbackURLs = incomingSubscribeRequestMessage.getCallbackURLs();
        if (callbackURLs == null || callbackURLs.size() == 0) {
            Logger logger = log;
            StringBuilder sbA = f.a("Missing or invalid Callback URLs in subscribe request: ");
            sbA.append(getInputMessage());
            logger.fine(sbA.toString());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        if (!incomingSubscribeRequestMessage.hasNotificationHeader()) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("Missing or invalid NT header in subscribe request: ");
            sbA2.append(getInputMessage());
            logger2.fine(sbA2.toString());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        try {
            this.subscription = new LocalGENASubscription(localService, getUpnpService().getConfiguration().isReceivedSubscriptionTimeoutIgnored() ? null : incomingSubscribeRequestMessage.getRequestedTimeoutSeconds(), callbackURLs) { // from class: org.fourthline.cling.protocol.sync.ReceivingSubscribe.1
                @Override // org.fourthline.cling.model.gena.LocalGENASubscription
                public void ended(CancelReason cancelReason) {
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void established() {
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void eventReceived() {
                    ReceivingSubscribe.this.getUpnpService().getConfiguration().getSyncProtocolExecutorService().execute(ReceivingSubscribe.this.getUpnpService().getProtocolFactory().createSendingEvent(this));
                }
            };
            Logger logger3 = log;
            StringBuilder sbA3 = f.a("Adding subscription to registry: ");
            sbA3.append(this.subscription);
            logger3.fine(sbA3.toString());
            getUpnpService().getRegistry().addLocalSubscription(this.subscription);
            logger3.fine("Returning subscription response, waiting to send initial event");
            return new OutgoingSubscribeResponseMessage(this.subscription);
        } catch (Exception e4) {
            Logger logger4 = log;
            StringBuilder sbA4 = f.a("Couldn't create local subscription to service: ");
            sbA4.append(Exceptions.unwrap(e4));
            logger4.warning(sbA4.toString());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
    }

    public OutgoingSubscribeResponseMessage processRenewal(LocalService localService, IncomingSubscribeRequestMessage incomingSubscribeRequestMessage) {
        LocalGENASubscription localSubscription = getUpnpService().getRegistry().getLocalSubscription(incomingSubscribeRequestMessage.getSubscriptionId());
        this.subscription = localSubscription;
        if (localSubscription == null) {
            Logger logger = log;
            StringBuilder sbA = f.a("Invalid subscription ID for renewal request: ");
            sbA.append(getInputMessage());
            logger.fine(sbA.toString());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
        }
        Logger logger2 = log;
        StringBuilder sbA2 = f.a("Renewing subscription: ");
        sbA2.append(this.subscription);
        logger2.fine(sbA2.toString());
        this.subscription.setSubscriptionDuration(incomingSubscribeRequestMessage.getRequestedTimeoutSeconds());
        if (getUpnpService().getRegistry().updateLocalSubscription(this.subscription)) {
            return new OutgoingSubscribeResponseMessage(this.subscription);
        }
        StringBuilder sbA3 = f.a("Subscription went away before it could be renewed: ");
        sbA3.append(getInputMessage());
        logger2.fine(sbA3.toString());
        return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
    }

    @Override // org.fourthline.cling.protocol.ReceivingSync
    public void responseException(Throwable th) {
        if (this.subscription == null) {
            return;
        }
        Logger logger = log;
        StringBuilder sbA = f.a("Response could not be send to subscriber, removing local GENA subscription: ");
        sbA.append(this.subscription);
        logger.fine(sbA.toString());
        getUpnpService().getRegistry().removeLocalSubscription(this.subscription);
    }

    @Override // org.fourthline.cling.protocol.ReceivingSync
    public void responseSent(StreamResponseMessage streamResponseMessage) {
        if (this.subscription == null) {
            return;
        }
        if (streamResponseMessage != null && !streamResponseMessage.getOperation().isFailed() && this.subscription.getCurrentSequence().getValue().longValue() == 0) {
            Logger logger = log;
            logger.fine("Establishing subscription");
            this.subscription.registerOnService();
            this.subscription.establish();
            logger.fine("Response to subscription sent successfully, now sending initial event asynchronously");
            getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(getUpnpService().getProtocolFactory().createSendingEvent(this.subscription));
            return;
        }
        if (this.subscription.getCurrentSequence().getValue().longValue() == 0) {
            Logger logger2 = log;
            logger2.fine("Subscription request's response aborted, not sending initial event");
            if (streamResponseMessage == null) {
                logger2.fine("Reason: No response at all from subscriber");
            } else {
                StringBuilder sbA = f.a("Reason: ");
                sbA.append(streamResponseMessage.getOperation());
                logger2.fine(sbA.toString());
            }
            StringBuilder sbA2 = f.a("Removing subscription from registry: ");
            sbA2.append(this.subscription);
            logger2.fine(sbA2.toString());
            getUpnpService().getRegistry().removeLocalSubscription(this.subscription);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.fourthline.cling.protocol.ReceivingSync
    public OutgoingSubscribeResponseMessage executeSync() {
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
        IncomingSubscribeRequestMessage incomingSubscribeRequestMessage = new IncomingSubscribeRequestMessage((StreamRequestMessage) getInputMessage(), serviceEventSubscriptionResource.getModel());
        if (incomingSubscribeRequestMessage.getSubscriptionId() != null && (incomingSubscribeRequestMessage.hasNotificationHeader() || incomingSubscribeRequestMessage.getCallbackURLs() != null)) {
            StringBuilder sbA3 = f.a("Subscription ID and NT or Callback in subscribe request: ");
            sbA3.append(getInputMessage());
            logger2.fine(sbA3.toString());
            return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.BAD_REQUEST);
        }
        if (incomingSubscribeRequestMessage.getSubscriptionId() != null) {
            return processRenewal(serviceEventSubscriptionResource.getModel(), incomingSubscribeRequestMessage);
        }
        if (incomingSubscribeRequestMessage.hasNotificationHeader() && incomingSubscribeRequestMessage.getCallbackURLs() != null) {
            return processNewSubscription(serviceEventSubscriptionResource.getModel(), incomingSubscribeRequestMessage);
        }
        StringBuilder sbA4 = f.a("No subscription ID, no NT or Callback, neither subscription or renewal: ");
        sbA4.append(getInputMessage());
        logger2.fine(sbA4.toString());
        return new OutgoingSubscribeResponseMessage(UpnpResponse.Status.PRECONDITION_FAILED);
    }
}
