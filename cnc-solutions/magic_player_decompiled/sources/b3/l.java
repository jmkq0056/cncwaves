package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class l extends b {
    public l(byte[] bArr) {
        super((byte) 7);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    @Override // b3.u
    public byte[] p() {
        return j();
    }

    public l(o oVar) {
        super((byte) 7);
        this.f295b = oVar.f295b;
    }

    public l(int i4) {
        super((byte) 7);
        this.f295b = i4;
    }
}
