package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class q extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f287g;

    public q(byte[] bArr) {
        super((byte) 9);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        this.f287g = new int[bArr.length - 2];
        int i4 = 0;
        for (int i5 = dataInputStream.read(); i5 != -1; i5 = dataInputStream.read()) {
            this.f287g[i4] = i5;
            i4++;
        }
        dataInputStream.close();
    }

    @Override // b3.u
    public byte[] p() {
        return new byte[0];
    }

    @Override // b3.b, b3.u
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" granted Qos");
        for (int i4 : this.f287g) {
            stringBuffer.append(" ");
            stringBuffer.append(i4);
        }
        return stringBuffer.toString();
    }
}
