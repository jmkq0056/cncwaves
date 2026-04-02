package b3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class r extends u {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String[] f288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f290i;

    public r(byte[] bArr) {
        super((byte) 8);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f295b = dataInputStream.readUnsignedShort();
        boolean z3 = false;
        this.f290i = 0;
        this.f288g = new String[10];
        this.f289h = new int[10];
        while (!z3) {
            try {
                this.f288g[this.f290i] = u.h(dataInputStream);
                int[] iArr = this.f289h;
                int i4 = this.f290i;
                this.f290i = i4 + 1;
                iArr[i4] = dataInputStream.readByte();
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
            int i4 = 0;
            while (true) {
                String[] strArr = this.f288g;
                if (i4 >= strArr.length) {
                    dataOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                u.k(dataOutputStream, strArr[i4]);
                dataOutputStream.writeByte(this.f289h[i4]);
                i4++;
            }
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
        for (int i4 = 0; i4 < this.f290i; i4++) {
            if (i4 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append("\"");
            stringBuffer.append(this.f288g[i4]);
            stringBuffer.append("\"");
        }
        stringBuffer.append("] qos:[");
        for (int i5 = 0; i5 < this.f290i; i5++) {
            if (i5 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(this.f289h[i5]);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    public r(String[] strArr, int[] iArr) {
        super((byte) 8);
        if (iArr != null) {
            this.f288g = (String[]) strArr.clone();
            int[] iArr2 = (int[]) iArr.clone();
            this.f289h = iArr2;
            if (this.f288g.length == iArr2.length) {
                this.f290i = strArr.length;
                for (int i4 : iArr) {
                    if (i4 < 0 || i4 > 2) {
                        throw new IllegalArgumentException();
                    }
                }
                return;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }
}
