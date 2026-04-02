package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class m extends b {
    public m(byte[] bArr) {
        super((byte) 5);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    @Override // b3.u
    public byte[] p() {
        return j();
    }

    public m(o oVar) {
        super((byte) 5);
        this.f295b = oVar.f295b;
    }
}
