package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes2.dex */
public class s extends b {
    public s(byte[] bArr) {
        super(Flags.CD);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    @Override // b3.u
    public byte[] p() {
        return new byte[0];
    }
}
