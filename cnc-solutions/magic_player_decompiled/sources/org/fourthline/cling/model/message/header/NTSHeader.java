package org.fourthline.cling.model.message.header;

import androidx.appcompat.view.a;
import org.fourthline.cling.model.types.NotificationSubtype;

/* JADX INFO: loaded from: classes2.dex */
public class NTSHeader extends UpnpHeader<NotificationSubtype> {
    public NTSHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().getHeaderString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        NotificationSubtype[] notificationSubtypeArrValues = NotificationSubtype.values();
        int length = notificationSubtypeArrValues.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            NotificationSubtype notificationSubtype = notificationSubtypeArrValues[i4];
            if (str.equals(notificationSubtype.getHeaderString())) {
                setValue(notificationSubtype);
                break;
            }
            i4++;
        }
        if (getValue() == null) {
            throw new InvalidHeaderException(a.a("Invalid NTS header value: ", str));
        }
    }

    public NTSHeader(NotificationSubtype notificationSubtype) {
        setValue(notificationSubtype);
    }
}
