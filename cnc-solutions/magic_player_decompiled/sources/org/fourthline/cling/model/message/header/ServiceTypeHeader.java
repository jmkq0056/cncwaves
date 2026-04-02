package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import java.net.URI;
import org.fourthline.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceTypeHeader extends UpnpHeader<ServiceType> {
    public ServiceTypeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(ServiceType.valueOf(str));
        } catch (RuntimeException e4) {
            StringBuilder sbA = f.a("Invalid service type header value, ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public ServiceTypeHeader(URI uri) {
        setString(uri.toString());
    }

    public ServiceTypeHeader(ServiceType serviceType) {
        setValue(serviceType);
    }
}
