package org.fourthline.cling.protocol.async;

import android.support.v4.media.f;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes2.dex */
public class SendingNotificationByebye extends SendingNotification {
    private static final Logger log = Logger.getLogger(SendingNotification.class.getName());

    public SendingNotificationByebye(UpnpService upnpService, LocalDevice localDevice) {
        super(upnpService, localDevice);
    }

    @Override // org.fourthline.cling.protocol.async.SendingNotification, org.fourthline.cling.protocol.SendingAsync
    public void execute() {
        Logger logger = log;
        StringBuilder sbA = f.a("Sending byebye messages (");
        sbA.append(getBulkRepeat());
        sbA.append(" times) for: ");
        sbA.append(getDevice());
        logger.fine(sbA.toString());
        super.execute();
    }

    @Override // org.fourthline.cling.protocol.async.SendingNotification
    public NotificationSubtype getNotificationSubtype() {
        return NotificationSubtype.BYEBYE;
    }
}
