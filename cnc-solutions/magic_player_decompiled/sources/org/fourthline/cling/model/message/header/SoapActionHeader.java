package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import java.net.URI;
import org.fourthline.cling.model.types.SoapActionType;

/* JADX INFO: loaded from: classes2.dex */
public class SoapActionHeader extends UpnpHeader<SoapActionType> {
    public SoapActionHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        StringBuilder sbA = f.a("\"");
        sbA.append(getValue().toString());
        sbA.append("\"");
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            if (!str.startsWith("\"") && str.endsWith("\"")) {
                throw new InvalidHeaderException("Invalid SOAP action header, must be enclosed in doublequotes:" + str);
            }
            setValue(SoapActionType.valueOf(str.substring(1, str.length() - 1)));
        } catch (RuntimeException e4) {
            StringBuilder sbA = f.a("Invalid SOAP action header value, ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public SoapActionHeader(URI uri) {
        setValue(SoapActionType.valueOf(uri.toString()));
    }

    public SoapActionHeader(SoapActionType soapActionType) {
        setValue(soapActionType);
    }

    public SoapActionHeader(String str) {
        setString(str);
    }
}
