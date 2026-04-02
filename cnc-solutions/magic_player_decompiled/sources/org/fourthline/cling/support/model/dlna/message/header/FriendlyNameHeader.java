package org.fourthline.cling.support.model.dlna.message.header;

import androidx.appcompat.view.a;
import org.fourthline.cling.model.message.header.InvalidHeaderException;

/* JADX INFO: loaded from: classes2.dex */
public class FriendlyNameHeader extends DLNAHeader<String> {
    public FriendlyNameHeader() {
        setValue("");
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() == 0) {
            throw new InvalidHeaderException(a.a("Invalid GetAvailableSeekRange header value: ", str));
        }
        setValue(str);
    }

    public FriendlyNameHeader(String str) {
        setValue(str);
    }
}
