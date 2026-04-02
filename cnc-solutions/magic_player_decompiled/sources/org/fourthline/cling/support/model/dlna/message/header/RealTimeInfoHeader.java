package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTime;

/* JADX INFO: loaded from: classes2.dex */
public class RealTimeInfoHeader extends DLNAHeader<NormalPlayTime> {
    public static final String PREFIX = "DLNA.ORG_TLAG=";

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        NormalPlayTime value = getValue();
        if (value == null) {
            return "DLNA.ORG_TLAG=*";
        }
        StringBuilder sbA = f.a(PREFIX);
        sbA.append(value.getString());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() != 0 && str.startsWith(PREFIX)) {
            try {
                str = str.substring(14);
                setValue(str.equals("*") ? null : NormalPlayTime.valueOf(str));
                return;
            } catch (Exception unused) {
            }
        }
        throw new InvalidHeaderException(a.a("Invalid RealTimeInfo header value: ", str));
    }
}
