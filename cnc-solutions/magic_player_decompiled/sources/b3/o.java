package b3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class o extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public x2.n f284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f286i;

    public o(String str, x2.n nVar) {
        super((byte) 3);
        this.f286i = null;
        this.f285h = str;
        this.f284g = nVar;
    }

    @Override // b3.h, x2.o
    public int a() {
        try {
            return o().length;
        } catch (x2.m unused) {
            return 0;
        }
    }

    @Override // b3.u
    public byte n() {
        x2.n nVar = this.f284g;
        byte b4 = (byte) (nVar.f3983b << 1);
        if (nVar.f3984c) {
            b4 = (byte) (b4 | 1);
        }
        return (nVar.f3985d || this.f296c) ? (byte) (b4 | 8) : b4;
    }

    @Override // b3.u
    public byte[] o() {
        if (this.f286i == null) {
            this.f286i = this.f284g.f3982a;
        }
        return this.f286i;
    }

    @Override // b3.u
    public byte[] p() throws x2.m {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            u.k(dataOutputStream, this.f285h);
            if (this.f284g.f3983b > 0) {
                dataOutputStream.writeShort(this.f295b);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    @Override // b3.u
    public boolean q() {
        return true;
    }

    @Override // b3.u
    public void s(int i4) {
        this.f295b = i4;
        x2.n nVar = this.f284g;
        if (nVar instanceof p) {
            Objects.requireNonNull((p) nVar);
        }
    }

    @Override // b3.u
    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bArr = this.f284g.f3982a;
        int iMin = Math.min(bArr.length, 20);
        for (int i4 = 0; i4 < iMin; i4++) {
            String hexString = Integer.toHexString(bArr[i4]);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            stringBuffer.append(hexString);
        }
        try {
            str = new String(bArr, 0, iMin, StringUtil.__UTF8);
        } catch (Exception unused) {
            str = "?";
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(super.toString());
        stringBuffer2.append(" qos:");
        stringBuffer2.append(this.f284g.f3983b);
        if (this.f284g.f3983b > 0) {
            stringBuffer2.append(" msgId:");
            stringBuffer2.append(this.f295b);
        }
        stringBuffer2.append(" retained:");
        stringBuffer2.append(this.f284g.f3984c);
        stringBuffer2.append(" dup:");
        stringBuffer2.append(this.f296c);
        stringBuffer2.append(" topic:\"");
        stringBuffer2.append(this.f285h);
        stringBuffer2.append("\"");
        stringBuffer2.append(" payload:[hex:");
        stringBuffer2.append(stringBuffer);
        stringBuffer2.append(" utf8:\"");
        stringBuffer2.append(str);
        stringBuffer2.append("\"");
        stringBuffer2.append(" length:");
        stringBuffer2.append(bArr.length);
        stringBuffer2.append("]");
        return stringBuffer2.toString();
    }

    public o(byte b4, byte[] bArr) throws IOException {
        super((byte) 3);
        this.f286i = null;
        p pVar = new p();
        this.f284g = pVar;
        pVar.b(3 & (b4 >> 1));
        if ((b4 & 1) == 1) {
            this.f284g.f3984c = true;
        }
        if ((b4 & 8) == 8) {
            ((p) this.f284g).f3985d = true;
        }
        a aVar = new a(new ByteArrayInputStream(bArr));
        DataInputStream dataInputStream = new DataInputStream(aVar);
        this.f285h = u.h(dataInputStream);
        if (this.f284g.f3983b > 0) {
            this.f295b = dataInputStream.readUnsignedShort();
        }
        byte[] bArr2 = new byte[bArr.length - aVar.f261b];
        dataInputStream.readFully(bArr2);
        dataInputStream.close();
        this.f284g.f3982a = (byte[]) bArr2.clone();
    }
}
