package a3;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f98a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f99b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f101d;

    public d(byte b4, boolean z3, byte[] bArr) {
        this.f101d = false;
        this.f98a = b4;
        this.f99b = z3;
        if (bArr != null) {
            this.f100c = (byte[]) bArr.clone();
        }
    }

    public static void a(ByteBuffer byteBuffer, int i4, boolean z3) {
        if (i4 < 0) {
            throw new IllegalArgumentException("Length cannot be negative");
        }
        int i5 = z3 ? -128 : 0;
        if (i4 <= 65535) {
            if (i4 < 126) {
                byteBuffer.put((byte) (i4 | i5));
                return;
            }
            byteBuffer.put((byte) (i5 | 126));
            byteBuffer.put((byte) (i4 >> 8));
            byteBuffer.put((byte) (i4 & 255));
            return;
        }
        byteBuffer.put((byte) (i5 | WKSRecord.Service.LOCUS_CON));
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) 0);
        byteBuffer.put((byte) ((i4 >> 24) & 255));
        byteBuffer.put((byte) ((i4 >> 16) & 255));
        byteBuffer.put((byte) ((i4 >> 8) & 255));
        byteBuffer.put((byte) (i4 & 255));
    }

    public byte[] b() {
        byte[] bArr = this.f100c;
        int length = bArr.length + 6;
        if (bArr.length > 65535) {
            length += 8;
        } else if (bArr.length >= 126) {
            length += 2;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        int i4 = 0;
        byteBufferAllocate.put((byte) ((this.f98a & 15) | (this.f99b ? (byte) 128 : (byte) 0)));
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr2 = {(byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255), (byte) secureRandom.nextInt(255)};
        a(byteBufferAllocate, this.f100c.length, true);
        byteBufferAllocate.put(bArr2);
        while (true) {
            byte[] bArr3 = this.f100c;
            if (i4 >= bArr3.length) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.array();
            }
            byte b4 = (byte) (bArr3[i4] ^ bArr2[i4 % 4]);
            bArr3[i4] = b4;
            byteBufferAllocate.put(b4);
            i4++;
        }
    }

    public d(InputStream inputStream) throws IOException {
        byte[] bArr;
        int i4 = 0;
        this.f101d = false;
        byte b4 = (byte) inputStream.read();
        this.f99b = (b4 & 128) != 0;
        byte b5 = (byte) (b4 & 15);
        this.f98a = b5;
        int i5 = 2;
        if (b5 != 2) {
            if (b5 == 8) {
                this.f101d = true;
                return;
            } else {
                throw new IOException("Invalid Frame: Opcode: " + ((int) this.f98a));
            }
        }
        byte b6 = (byte) inputStream.read();
        boolean z3 = (b6 & 128) != 0;
        int i6 = (byte) (b6 & 127);
        if (i6 == 127) {
            i5 = 8;
        } else if (i6 != 126) {
            i5 = 0;
        }
        i6 = i5 > 0 ? 0 : i6;
        while (true) {
            i5--;
            if (i5 < 0) {
                break;
            } else {
                i6 |= (((byte) inputStream.read()) & 255) << (i5 * 8);
            }
        }
        if (z3) {
            bArr = new byte[4];
            inputStream.read(bArr, 0, 4);
        } else {
            bArr = null;
        }
        this.f100c = new byte[i6];
        int i7 = i6;
        int i8 = 0;
        while (i8 != i6) {
            int i9 = inputStream.read(this.f100c, i8, i7);
            i8 += i9;
            i7 -= i9;
        }
        if (!z3) {
            return;
        }
        while (true) {
            byte[] bArr2 = this.f100c;
            if (i4 >= bArr2.length) {
                return;
            }
            bArr2[i4] = (byte) (bArr2[i4] ^ bArr[i4 % 4]);
            i4++;
        }
    }
}
