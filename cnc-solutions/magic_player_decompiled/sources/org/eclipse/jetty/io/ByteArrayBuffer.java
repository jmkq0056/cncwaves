package org.eclipse.jetty.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayBuffer extends AbstractBuffer {
    public static final int MAX_WRITE = Integer.getInteger("org.eclipse.jetty.io.ByteArrayBuffer.MAX_WRITE", 131072).intValue();
    public final byte[] _bytes;

    public static class CaseInsensitive extends ByteArrayBuffer implements Buffer.CaseInsensitve {
        public CaseInsensitive(String str) {
            super(str);
        }

        @Override // org.eclipse.jetty.io.ByteArrayBuffer, org.eclipse.jetty.io.AbstractBuffer
        public boolean equals(Object obj) {
            return (obj instanceof Buffer) && equalsIgnoreCase((Buffer) obj);
        }

        public CaseInsensitive(byte[] bArr, int i4, int i5, int i6) {
            super(bArr, i4, i5, i6);
        }
    }

    public ByteArrayBuffer(int i4, int i5, boolean z3) {
        this(new byte[i4], 0, 0, i5, z3);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return this._bytes;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this._bytes.length;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void compact() {
        if (isReadOnly()) {
            throw new IllegalStateException(AbstractBuffer.__READONLY);
        }
        int iMarkIndex = markIndex() >= 0 ? markIndex() : getIndex();
        if (iMarkIndex > 0) {
            int iPutIndex = putIndex() - iMarkIndex;
            if (iPutIndex > 0) {
                byte[] bArr = this._bytes;
                System.arraycopy(bArr, iMarkIndex, bArr, 0, iPutIndex);
            }
            if (markIndex() > 0) {
                setMarkIndex(markIndex() - iMarkIndex);
            }
            setGetIndex(getIndex() - iMarkIndex);
            setPutIndex(putIndex() - iMarkIndex);
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public boolean equals(Object obj) {
        int i4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Buffer)) {
            return false;
        }
        if (obj instanceof Buffer.CaseInsensitve) {
            return equalsIgnoreCase((Buffer) obj);
        }
        Buffer buffer = (Buffer) obj;
        if (buffer.length() != length()) {
            return false;
        }
        int i5 = this._hash;
        if (i5 != 0 && (obj instanceof AbstractBuffer) && (i4 = ((AbstractBuffer) obj)._hash) != 0 && i5 != i4) {
            return false;
        }
        int index = getIndex();
        int iPutIndex = buffer.putIndex();
        int iPutIndex2 = putIndex();
        while (true) {
            int i6 = iPutIndex2 - 1;
            if (iPutIndex2 <= index) {
                return true;
            }
            iPutIndex--;
            if (this._bytes[i6] != buffer.peek(iPutIndex)) {
                return false;
            }
            iPutIndex2 = i6;
        }
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public boolean equalsIgnoreCase(Buffer buffer) {
        int i4;
        if (buffer == this) {
            return true;
        }
        if (buffer == null || buffer.length() != length()) {
            return false;
        }
        int i5 = this._hash;
        if (i5 != 0 && (buffer instanceof AbstractBuffer) && (i4 = ((AbstractBuffer) buffer)._hash) != 0 && i5 != i4) {
            return false;
        }
        int index = getIndex();
        int iPutIndex = buffer.putIndex();
        byte[] bArrArray = buffer.array();
        if (bArrArray != null) {
            int iPutIndex2 = putIndex();
            while (true) {
                int i6 = iPutIndex2 - 1;
                if (iPutIndex2 <= index) {
                    break;
                }
                byte b4 = this._bytes[i6];
                iPutIndex--;
                byte b5 = bArrArray[iPutIndex];
                if (b4 != b5) {
                    if (97 <= b4 && b4 <= 122) {
                        b4 = (byte) ((b4 - 97) + 65);
                    }
                    if (97 <= b5 && b5 <= 122) {
                        b5 = (byte) ((b5 - 97) + 65);
                    }
                    if (b4 != b5) {
                        return false;
                    }
                }
                iPutIndex2 = i6;
            }
        } else {
            int iPutIndex3 = putIndex();
            while (true) {
                int i7 = iPutIndex3 - 1;
                if (iPutIndex3 <= index) {
                    break;
                }
                byte b6 = this._bytes[i7];
                iPutIndex--;
                byte bPeek = buffer.peek(iPutIndex);
                if (b6 != bPeek) {
                    if (97 <= b6 && b6 <= 122) {
                        b6 = (byte) ((b6 - 97) + 65);
                    }
                    if (97 <= bPeek && bPeek <= 122) {
                        bPeek = (byte) ((bPeek - 97) + 65);
                    }
                    if (b6 != bPeek) {
                        return false;
                    }
                }
                iPutIndex3 = i7;
            }
        }
        return true;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public byte get() {
        byte[] bArr = this._bytes;
        int i4 = this._get;
        this._get = i4 + 1;
        return bArr[i4];
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public int hashCode() {
        if (this._hash == 0 || this._hashGet != this._get || this._hashPut != this._put) {
            int index = getIndex();
            int iPutIndex = putIndex();
            while (true) {
                int i4 = iPutIndex - 1;
                if (iPutIndex <= index) {
                    break;
                }
                byte b4 = this._bytes[i4];
                if (97 <= b4 && b4 <= 122) {
                    b4 = (byte) ((b4 - 97) + 65);
                }
                this._hash = (this._hash * 31) + b4;
                iPutIndex = i4;
            }
            if (this._hash == 0) {
                this._hash = -1;
            }
            this._hashGet = this._get;
            this._hashPut = this._put;
        }
        return this._hash;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i4) {
        return this._bytes[i4];
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i4, byte b4) {
        this._bytes[i4] = b4;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int readFrom(InputStream inputStream, int i4) throws IOException {
        if (i4 < 0 || i4 > space()) {
            i4 = space();
        }
        int iPutIndex = putIndex();
        int i5 = 0;
        int i6 = i4;
        int i7 = 0;
        while (i5 < i4) {
            i7 = inputStream.read(this._bytes, iPutIndex, i6);
            if (i7 < 0) {
                break;
            }
            if (i7 > 0) {
                iPutIndex += i7;
                i5 += i7;
                i6 -= i7;
                setPutIndex(iPutIndex);
            }
            if (inputStream.available() <= 0) {
                break;
            }
        }
        if (i7 >= 0 || i5 != 0) {
            return i5;
        }
        return -1;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int space() {
        return this._bytes.length - this._put;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void writeTo(OutputStream outputStream) throws IOException {
        int length = length();
        int i4 = MAX_WRITE;
        if (i4 <= 0 || length <= i4) {
            outputStream.write(this._bytes, getIndex(), length);
        } else {
            int index = getIndex();
            while (length > 0) {
                int i5 = MAX_WRITE;
                if (length <= i5) {
                    i5 = length;
                }
                outputStream.write(this._bytes, index, i5);
                index += i5;
                length -= i5;
            }
        }
        if (isImmutable()) {
            return;
        }
        clear();
    }

    public ByteArrayBuffer(byte[] bArr) {
        this(bArr, 0, bArr.length, 2);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i4, byte[] bArr, int i5, int i6) {
        if ((i4 + i6 > capacity() && (i6 = capacity() - i4) == 0) || i6 < 0) {
            return -1;
        }
        System.arraycopy(this._bytes, i4, bArr, i5, i6);
        return i6;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i4, Buffer buffer) {
        int i5 = 0;
        this._hash = 0;
        int length = buffer.length();
        if (i4 + length > capacity()) {
            length = capacity() - i4;
        }
        byte[] bArrArray = buffer.array();
        if (bArrArray != null) {
            System.arraycopy(bArrArray, buffer.getIndex(), this._bytes, i4, length);
        } else {
            int index = buffer.getIndex();
            while (i5 < length) {
                this._bytes[i4] = buffer.peek(index);
                i5++;
                i4++;
                index++;
            }
        }
        return length;
    }

    public ByteArrayBuffer(byte[] bArr, int i4, int i5) {
        this(bArr, i4, i5, 2);
    }

    public ByteArrayBuffer(byte[] bArr, int i4, int i5, int i6) {
        super(2, false);
        this._bytes = bArr;
        setPutIndex(i5 + i4);
        setGetIndex(i4);
        this._access = i6;
    }

    public ByteArrayBuffer(byte[] bArr, int i4, int i5, int i6, boolean z3) {
        super(2, z3);
        this._bytes = bArr;
        setPutIndex(i5 + i4);
        setGetIndex(i4);
        this._access = i6;
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i4, byte[] bArr, int i5, int i6) {
        this._hash = 0;
        if (i4 + i6 > capacity()) {
            i6 = capacity() - i4;
        }
        System.arraycopy(bArr, i5, this._bytes, i4, i6);
        return i6;
    }

    public ByteArrayBuffer(int i4) {
        this(new byte[i4], 0, 0, 2);
        setPutIndex(0);
    }

    public ByteArrayBuffer(String str) {
        super(2, false);
        byte[] bytes = StringUtil.getBytes(str);
        this._bytes = bytes;
        setGetIndex(0);
        setPutIndex(bytes.length);
        this._access = 0;
        this._string = str;
    }

    public ByteArrayBuffer(String str, boolean z3) {
        super(2, false);
        byte[] bytes = StringUtil.getBytes(str);
        this._bytes = bytes;
        setGetIndex(0);
        setPutIndex(bytes.length);
        if (z3) {
            this._access = 0;
            this._string = str;
        }
    }

    public ByteArrayBuffer(String str, String str2) throws UnsupportedEncodingException {
        super(2, false);
        byte[] bytes = str.getBytes(str2);
        this._bytes = bytes;
        setGetIndex(0);
        setPutIndex(bytes.length);
        this._access = 0;
        this._string = str;
    }
}
