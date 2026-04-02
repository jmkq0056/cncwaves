package org.fourthline.cling.controlpoint;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.gena.CancelReason;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.gena.LocalGENASubscription;
import org.fourthline.cling.model.gena.RemoteGENASubscription;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.protocol.ProtocolCreationException;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SubscriptionCallback implements Runnable {
    public static Logger log = Logger.getLogger(SubscriptionCallback.class.getName());
    private ControlPoint controlPoint;
    public final Integer requestedDurationSeconds;
    public final Service service;
    private GENASubscription subscription;

    public SubscriptionCallback(Service service) {
        this.service = service;
        this.requestedDurationSeconds = 1800;
    }

    public static String createDefaultFailureMessage(UpnpResponse upnpResponse, Exception exc) {
        if (upnpResponse != null) {
            StringBuilder sbA = g.a("Subscription failed: ", " HTTP response was: ");
            sbA.append(upnpResponse.getResponseDetails());
            return sbA.toString();
        }
        if (exc == null) {
            return "Subscription failed:  No response received.";
        }
        return "Subscription failed:  Exception occured: " + exc;
    }

    private void endLocalSubscription(LocalGENASubscription localGENASubscription) {
        log.fine("Removing local subscription and ending it in callback: " + localGENASubscription);
        getControlPoint().getRegistry().removeLocalSubscription(localGENASubscription);
        localGENASubscription.end(null);
    }

    private void endRemoteSubscription(RemoteGENASubscription remoteGENASubscription) {
        log.fine("Ending remote subscription: " + remoteGENASubscription);
        getControlPoint().getConfiguration().getSyncProtocolExecutorService().execute(getControlPoint().getProtocolFactory().createSendingUnsubscribe(remoteGENASubscription));
    }

    private void establishLocalSubscription(LocalService localService) {
        LocalGENASubscription localGENASubscription;
        if (getControlPoint().getRegistry().getLocalDevice(localService.getDevice().getIdentity().getUdn(), false) == null) {
            log.fine("Local device service is currently not registered, failing subscription immediately");
            failed(null, null, new IllegalStateException("Local device is not registered"));
            return;
        }
        try {
            localGENASubscription = new LocalGENASubscription(localService, Integer.valueOf(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED), Collections.EMPTY_LIST) { // from class: org.fourthline.cling.controlpoint.SubscriptionCallback.1
                @Override // org.fourthline.cling.model.gena.LocalGENASubscription
                public void ended(CancelReason cancelReason) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.ended(this, cancelReason, null);
                    }
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void established() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(this);
                        SubscriptionCallback.this.established(this);
                    }
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void eventReceived() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.log.fine("Local service state updated, notifying callback, sequence is: " + getCurrentSequence());
                        SubscriptionCallback.this.eventReceived(this);
                        incrementSequence();
                    }
                }

                public void failed(Exception exc) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.failed(null, null, exc);
                    }
                }
            };
        } catch (Exception e4) {
            e = e4;
            localGENASubscription = null;
        }
        try {
            log.fine("Local device service is currently registered, also registering subscription");
            getControlPoint().getRegistry().addLocalSubscription(localGENASubscription);
            log.fine("Notifying subscription callback of local subscription availablity");
            localGENASubscription.establish();
            log.fine("Simulating first initial event for local subscription callback, sequence: " + localGENASubscription.getCurrentSequence());
            eventReceived(localGENASubscription);
            localGENASubscription.incrementSequence();
            log.fine("Starting to monitor state changes of local service");
            localGENASubscription.registerOnService();
        } catch (Exception e5) {
            e = e5;
            Logger logger = log;
            StringBuilder sbA = f.a("Local callback creation failed: ");
            sbA.append(e.toString());
            logger.fine(sbA.toString());
            log.log(Level.FINE, "Exception root cause: ", Exceptions.unwrap(e));
            if (localGENASubscription != null) {
                getControlPoint().getRegistry().removeLocalSubscription(localGENASubscription);
            }
            failed(localGENASubscription, null, e);
        }
    }

    private void establishRemoteSubscription(RemoteService remoteService) {
        try {
            getControlPoint().getProtocolFactory().createSendingSubscribe(new RemoteGENASubscription(remoteService, this.requestedDurationSeconds.intValue()) { // from class: org.fourthline.cling.controlpoint.SubscriptionCallback.2
                @Override // org.fourthline.cling.model.gena.RemoteGENASubscription
                public void ended(CancelReason cancelReason, UpnpResponse upnpResponse) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.ended(this, cancelReason, upnpResponse);
                    }
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void established() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(this);
                        SubscriptionCallback.this.established(this);
                    }
                }

                @Override // org.fourthline.cling.model.gena.GENASubscription
                public void eventReceived() {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.eventReceived(this);
                    }
                }

                @Override // org.fourthline.cling.model.gena.RemoteGENASubscription
                public void eventsMissed(int i4) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.eventsMissed(this, i4);
                    }
                }

                @Override // org.fourthline.cling.model.gena.RemoteGENASubscription
                public void failed(UpnpResponse upnpResponse) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.setSubscription(null);
                        SubscriptionCallback.this.failed(this, upnpResponse, null);
                    }
                }

                @Override // org.fourthline.cling.model.gena.RemoteGENASubscription
                public void invalidMessage(UnsupportedDataException unsupportedDataException) {
                    synchronized (SubscriptionCallback.this) {
                        SubscriptionCallback.this.invalidMessage(this, unsupportedDataException);
                    }
                }
            }).run();
        } catch (ProtocolCreationException e4) {
            failed(this.subscription, null, e4);
        }
    }

    public synchronized void end() {
        GENASubscription gENASubscription = this.subscription;
        if (gENASubscription == null) {
            return;
        }
        if (gENASubscription instanceof LocalGENASubscription) {
            endLocalSubscription((LocalGENASubscription) gENASubscription);
        } else if (gENASubscription instanceof RemoteGENASubscription) {
            endRemoteSubscription((RemoteGENASubscription) gENASubscription);
        }
    }

    public abstract void ended(GENASubscription gENASubscription, CancelReason cancelReason, UpnpResponse upnpResponse);

    public abstract void established(GENASubscription gENASubscription);

    public abstract void eventReceived(GENASubscription gENASubscription);

    public abstract void eventsMissed(GENASubscription gENASubscription, int i4);

    public void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc) {
        failed(gENASubscription, upnpResponse, exc, createDefaultFailureMessage(upnpResponse, exc));
    }

    public abstract void failed(GENASubscription gENASubscription, UpnpResponse upnpResponse, Exception exc, String str);

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    public Service getService() {
        return this.service;
    }

    public synchronized GENASubscription getSubscription() {
        return this.subscription;
    }

    public void invalidMessage(RemoteGENASubscription remoteGENASubscription, UnsupportedDataException unsupportedDataException) {
        log.info("Invalid event message received, causing: " + unsupportedDataException);
        if (log.isLoggable(Level.FINE)) {
            log.fine("------------------------------------------------------------------------------");
            log.fine(unsupportedDataException.getData() != null ? unsupportedDataException.getData().toString() : "null");
            log.fine("------------------------------------------------------------------------------");
        }
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        if (getControlPoint() == null) {
            throw new IllegalStateException("Callback must be executed through ControlPoint");
        }
        if (getService() instanceof LocalService) {
            establishLocalSubscription((LocalService) this.service);
        } else if (getService() instanceof RemoteService) {
            establishRemoteSubscription((RemoteService) this.service);
        }
    }

    public synchronized void setControlPoint(ControlPoint controlPoint) {
        this.controlPoint = controlPoint;
    }

    public synchronized void setSubscription(GENASubscription gENASubscription) {
        this.subscription = gENASubscription;
    }

    public String toString() {
        StringBuilder sbA = f.a("(SubscriptionCallback) ");
        sbA.append(getService());
        return sbA.toString();
    }

    public SubscriptionCallback(Service service, int i4) {
        this.service = service;
        this.requestedDurationSeconds = Integer.valueOf(i4);
    }
}
