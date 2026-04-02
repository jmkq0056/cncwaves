package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;

/* JADX INFO: loaded from: classes2.dex */
public class ContentRangeHeader extends UpnpHeader<BytesRange> {
    public static final String PREFIX = "bytes ";

    public ContentRangeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().getString(true, PREFIX);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(BytesRange.valueOf(str, PREFIX));
        } catch (InvalidValueException e4) {
            StringBuilder sbA = f.a("Invalid Range Header: ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public ContentRangeHeader(BytesRange bytesRange) {
        setValue(bytesRange);
    }

    public ContentRangeHeader(String str) {
        setString(str);
    }
}
