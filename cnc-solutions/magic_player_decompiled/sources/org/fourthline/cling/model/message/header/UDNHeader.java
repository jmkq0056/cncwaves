package org.fourthline.cling.model.message.header;

import androidx.appcompat.view.a;
import org.fourthline.cling.model.types.UDN;

/* JADX INFO: loaded from: classes2.dex */
public class UDNHeader extends UpnpHeader<UDN> {
    public UDNHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (!str.startsWith("uuid:")) {
            throw new InvalidHeaderException(a.a("Invalid UDA header value, must start with 'uuid:': ", str));
        }
        if (str.contains("::urn")) {
            throw new InvalidHeaderException(a.a("Invalid UDA header value, must not contain '::urn': ", str));
        }
        setValue(new UDN(str.substring(5)));
    }

    public UDNHeader(UDN udn) {
        setValue(udn);
    }
}
