package b3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class t extends u {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String[] f291g;

    public t(byte[] bArr) {
        super((byte) 10);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        this.f291g = new String[10];
        boolean z3 = false;
        while (!z3) {
            try {
                this.f291g[0] = u.h(dataInputStream);
            } catch (Exception unused) {
                z3 = true;
            }
        }
        dataInputStream.close();
    }

    @Override // b3.u
    public byte n() {
        return (byte) ((this.f296c ? 8 : 0) | 2);
    }

    @Override // b3.u
    public byte[] o() throws x2.m {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (String str : this.f291g) {
                u.k(dataOutputStream, str);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    @Override // b3.u
    public byte[] p() throws x2.m {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.f295b);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    @Override // b3.u
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        stringBuffer.append(" names:[");
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
