package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import java.net.URI;
import org.fourthline.cling.model.types.UDAServiceType;

/* JADX INFO: loaded from: classes2.dex */
public class UDAServiceTypeHeader extends ServiceTypeHeader {
    public UDAServiceTypeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.ServiceTypeHeader, org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(UDAServiceType.valueOf(str));
        } catch (Exception e4) {
            StringBuilder sbA = f.a("Invalid UDA service type header value, ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public UDAServiceTypeHeader(URI uri) {
        super(uri);
    }

    public UDAServiceTypeHeader(UDAServiceType uDAServiceType) {
        super(uDAServiceType);
    }
}
