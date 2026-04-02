package org.fourthline.cling.protocol.async;

import android.support.v4.media.f;
import java.util.Iterator;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.discovery.IncomingNotificationRequest;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.protocol.ReceivingAsync;
import org.fourthline.cling.protocol.RetrieveRemoteDescriptors;

/* JADX INFO: loaded from: classes2.dex */
public class ReceivingNotification extends ReceivingAsync<IncomingNotificationRequest> {
    private static final Logger log = Logger.getLogger(ReceivingNotification.class.getName());

    public ReceivingNotification(UpnpService upnpService, IncomingDatagramMessage<UpnpRequest> incomingDatagramMessage) {
        super(upnpService, new IncomingNotificationRequest(incomingDatagramMessage));
    }

    @Override // org.fourthline.cling.protocol.ReceivingAsync
    public void execute() {
        UDN udn = getInputMessage().getUDN();
        if (udn == null) {
            Logger logger = log;
            StringBuilder sbA = f.a("Ignoring notification message without UDN: ");
            sbA.append(getInputMessage());
            logger.fine(sbA.toString());
            return;
        }
        RemoteDeviceIdentity remoteDeviceIdentity = new RemoteDeviceIdentity(getInputMessage());
        Logger logger2 = log;
        logger2.fine("Received device notification: " + remoteDeviceIdentity);
        try {
            RemoteDevice remoteDevice = new RemoteDevice(remoteDeviceIdentity);
            if (!getInputMessage().isAliveMessage()) {
                if (!getInputMessage().isByeByeMessage()) {
                    StringBuilder sbA2 = f.a("Ignoring unknown notification message: ");
                    sbA2.append(getInputMessage());
                    logger2.finer(sbA2.toString());
                    return;
                }
                logger2.fine("Received device BYEBYE advertisement");
                if (getUpnpService().getRegistry().removeDevice(remoteDevice)) {
                    logger2.fine("Removed remote device from registry: " + remoteDevice);
                    return;
                }
                return;
            }
            StringBuilder sbA3 = f.a("Received device ALIVE advertisement, descriptor location is: ");
            sbA3.append(remoteDeviceIdentity.getDescriptorURL());
            logger2.fine(sbA3.toString());
            if (remoteDeviceIdentity.getDescriptorURL() == null) {
                StringBuilder sbA4 = f.a("Ignoring message without location URL header: ");
                sbA4.append(getInputMessage());
                logger2.finer(sbA4.toString());
            } else if (remoteDeviceIdentity.getMaxAgeSeconds() == null) {
                StringBuilder sbA5 = f.a("Ignoring message without max-age header: ");
                sbA5.append(getInputMessage());
                logger2.finer(sbA5.toString());
            } else {
                if (!getUpnpService().getRegistry().update(remoteDeviceIdentity)) {
                    getUpnpService().getConfiguration().getAsyncProtocolExecutor().execute(new RetrieveRemoteDescriptors(getUpnpService(), remoteDevice));
                    return;
                }
                logger2.finer("Remote device was already known: " + udn);
            }
        } catch (ValidationException e4) {
            log.warning("Validation errors of device during discovery: " + remoteDeviceIdentity);
            Iterator<ValidationError> it = e4.getErrors().iterator();
            while (it.hasNext()) {
                log.warning(it.next().toString());
            }
        }
    }
}
