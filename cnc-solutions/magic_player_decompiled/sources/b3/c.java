package b3;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f263h;

    public c(byte[] bArr) {
        super((byte) 2);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f263h = (dataInputStream.readUnsignedByte() & 1) == 1;
        this.f262g = dataInputStream.readUnsignedByte();
        dataInputStream.close();
    }

    @Override // b3.u
    public String m() {
        return "Con";
    }

    @Override // b3.u
    public byte[] p() {
        return new byte[0];
    }

    @Override // b3.b, b3.u
    public String toString() {
        return String.valueOf(super.toString()) + " session present:" + this.f263h + " return code: " + this.f262g;
    }
}
