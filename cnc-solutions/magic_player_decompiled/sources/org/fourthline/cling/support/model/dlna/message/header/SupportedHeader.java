package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.g;
import androidx.appcompat.view.a;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

/* JADX INFO: loaded from: classes2.dex */
public class SupportedHeader extends DLNAHeader<String[]> {
    public SupportedHeader() {
        setValue(new String[0]);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        String[] value = getValue();
        String string = value.length > 0 ? value[0] : "";
        for (int i4 = 1; i4 < value.length; i4++) {
            StringBuilder sbA = g.a(string, ",");
            sbA.append(value[i4]);
            string = sbA.toString();
        }
        return string;
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() == 0) {
            throw new InvalidHeaderException(a.a("Invalid Supported header value: ", str));
        }
        if (str.endsWith(";")) {
            str = str.substring(0, str.length() - 1);
        }
        setValue(str.split("\\s*,\\s*"));
    }
}
