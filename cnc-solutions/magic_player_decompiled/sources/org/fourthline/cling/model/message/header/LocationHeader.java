package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class LocationHeader extends UpnpHeader<URL> {
    public LocationHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(new URL(str));
        } catch (MalformedURLException e4) {
            StringBuilder sbA = f.a("Invalid URI: ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public LocationHeader(URL url) {
        setValue(url);
    }

    public LocationHeader(String str) {
        setString(str);
    }
}
