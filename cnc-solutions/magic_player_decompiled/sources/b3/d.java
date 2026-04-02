package b3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class d extends u {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x2.n f266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public char[] f268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f270m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f271n;

    public d(byte[] bArr) throws IOException, x2.m {
        super((byte) 1);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        u.h(dataInputStream);
        dataInputStream.readByte();
        dataInputStream.readByte();
        this.f269l = dataInputStream.readUnsignedShort();
        this.f264g = u.h(dataInputStream);
        dataInputStream.close();
    }

    @Override // b3.u
    public String m() {
        return "Con";
    }

    @Override // b3.u
    public byte n() {
        return (byte) 0;
    }

    @Override // b3.u
    public byte[] o() throws x2.m {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            u.k(dataOutputStream, this.f264g);
            if (this.f266i != null) {
                u.k(dataOutputStream, this.f270m);
                dataOutputStream.writeShort(this.f266i.f3982a.length);
                dataOutputStream.write(this.f266i.f3982a);
            }
            String str = this.f267j;
            if (str != null) {
                u.k(dataOutputStream, str);
                char[] cArr = this.f268k;
                if (cArr != null) {
                    u.k(dataOutputStream, new String(cArr));
                }
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
            int i4 = this.f271n;
            if (i4 == 3) {
                u.k(dataOutputStream, "MQIsdp");
            } else if (i4 == 4) {
                u.k(dataOutputStream, "MQTT");
            }
            dataOutputStream.write(this.f271n);
            byte b4 = this.f265h ? (byte) 2 : (byte) 0;
            x2.n nVar = this.f266i;
            if (nVar != null) {
                b4 = (byte) (((byte) (b4 | 4)) | (nVar.f3983b << 3));
                if (nVar.f3984c) {
                    b4 = (byte) (b4 | 32);
                }
            }
            if (this.f267j != null) {
                b4 = (byte) (b4 | 128);
                if (this.f268k != null) {
                    b4 = (byte) (b4 | 64);
                }
            }
            dataOutputStream.write(b4);
            dataOutputStream.writeShort(this.f269l);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new x2.m(e4);
        }
    }

    @Override // b3.u
    public boolean q() {
        return false;
    }

    @Override // b3.u
    public String toString() {
        return String.valueOf(super.toString()) + " clientId " + this.f264g + " keepAliveInterval " + this.f269l;
    }

    public d(String str, int i4, boolean z3, int i5, String str2, char[] cArr, x2.n nVar, String str3) {
        super((byte) 1);
        this.f264g = str;
        this.f265h = z3;
        this.f269l = i5;
        this.f267j = str2;
        if (cArr != null) {
            this.f268k = (char[]) cArr.clone();
        }
        this.f266i = null;
        this.f270m = null;
        this.f271n = i4;
    }
}
