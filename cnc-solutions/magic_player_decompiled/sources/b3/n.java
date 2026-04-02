package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class n extends h {
    public n(m mVar) {
        super((byte) 6);
        this.f295b = mVar.f295b;
    }

    @Override // b3.u
    public byte n() {
        return (byte) ((this.f296c ? 8 : 0) | 2);
    }

    @Override // b3.u
    public byte[] p() {
        return j();
    }

    @Override // b3.u
    public String toString() {
        return String.valueOf(super.toString()) + " msgId " + this.f295b;
    }

    public n(byte[] bArr) {
        super((byte) 6);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }
}
