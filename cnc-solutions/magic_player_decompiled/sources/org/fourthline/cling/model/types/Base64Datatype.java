package org.fourthline.cling.model.types;

import org.eclipse.jetty.util.StringUtil;
import org.seamless.util.io.Base64Coder;

/* JADX INFO: loaded from: classes2.dex */
public class Base64Datatype extends AbstractDatatype<byte[]> {
    @Override // org.fourthline.cling.model.types.AbstractDatatype
    public Class<byte[]> getValueType() {
        return byte[].class;
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public String getString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new String(Base64Coder.encode(bArr), StringUtil.__UTF8);
        } catch (Exception e4) {
            throw new InvalidValueException(e4.getMessage(), e4);
        }
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public byte[] valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return Base64Coder.decode(str);
        } catch (Exception e4) {
            throw new InvalidValueException(e4.getMessage(), e4);
        }
    }
}
