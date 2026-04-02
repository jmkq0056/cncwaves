package org.fourthline.cling.model.types;

import org.seamless.util.io.HexBin;

/* JADX INFO: loaded from: classes2.dex */
public class BinHexDatatype extends AbstractDatatype<byte[]> {
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
            return HexBin.bytesToString(bArr);
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
            return HexBin.stringToBytes(str);
        } catch (Exception e4) {
            throw new InvalidValueException(e4.getMessage(), e4);
        }
    }
}
