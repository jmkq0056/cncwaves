package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import org.seamless.util.io.HexBin;

/* JADX INFO: loaded from: classes2.dex */
public class InterfaceMacHeader extends UpnpHeader<byte[]> {
    public InterfaceMacHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return HexBin.bytesToString(getValue(), ":");
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        byte[] bArrStringToBytes = HexBin.stringToBytes(str, ":");
        setValue(bArrStringToBytes);
        if (bArrStringToBytes.length != 6) {
            throw new InvalidHeaderException(a.a("Invalid MAC address: ", str));
        }
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") '");
        sbA.append(getString());
        sbA.append("'");
        return sbA.toString();
    }

    public InterfaceMacHeader(byte[] bArr) {
        setValue(bArr);
    }

    public InterfaceMacHeader(String str) {
        setString(str);
    }
}
