package org.fourthline.cling.support.model.dlna.message.header;

import androidx.appcompat.view.a;
import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

/* JADX INFO: loaded from: classes2.dex */
public class WCTHeader extends DLNAHeader<Boolean> {
    public static final Pattern pattern = Pattern.compile("^[01]{1}$", 2);

    public WCTHeader() {
        setValue(Boolean.FALSE);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().booleanValue() ? "1" : "0";
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (!pattern.matcher(str).matches()) {
            throw new InvalidHeaderException(a.a("Invalid SCID header value: ", str));
        }
        setValue(Boolean.valueOf(str.equals("1")));
    }
}
