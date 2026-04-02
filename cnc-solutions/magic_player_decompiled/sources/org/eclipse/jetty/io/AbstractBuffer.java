package org.eclipse.jetty.io;

import android.support.v4.media.f;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBuffer implements Buffer {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String __IMMUTABLE = "IMMUTABLE";
    public static final String __READONLY = "READONLY";
    public static final String __READWRITE = "READWRITE";
    public static final String __VOLATILE = "VOLATILE";
    public int _access;
    public int _get;
    public int _hash;
    public int _hashGet;
    public int _hashPut;
    public int _mark;
    public int _put;
    public String _string;
    public View _view;
    public boolean _volatile;
    private static final Logger LOG = Log.getLogger((Class<?>) AbstractBuffer.class);
    private static final boolean __boundsChecking = Boolean.getBoolean("org.eclipse.jetty.io.AbstractBuffer.boundsChecking");

    public AbstractBuffer(int i4, boolean z3) {
        if (i4 == 0 && z3) {
            throw new IllegalArgumentException("IMMUTABLE && VOLATILE");
        }
        setMarkIndex(-1);
        this._access = i4;
        this._volatile = z3;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] asArray() {
        int length = length();
        byte[] bArr = new byte[length];
        byte[] bArrArray = array();
        if (bArrArray != null) {
            System.arraycopy(bArrArray, getIndex(), bArr, 0, length);
        } else {
            peek(getIndex(), bArr, 0, length());
        }
        return bArr;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer asImmutableBuffer() {
        return isImmutable() ? this : duplicate(0);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer asMutableBuffer() {
        if (!isImmutable()) {
            return this;
        }
        Buffer buffer = buffer();
        return buffer.isReadOnly() ? duplicate(2) : new View(buffer, markIndex(), getIndex(), putIndex(), this._access);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer asNonVolatileBuffer() {
        return !isVolatile() ? this : duplicate(this._access);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer asReadOnlyBuffer() {
        return isReadOnly() ? this : new View(this, markIndex(), getIndex(), putIndex(), 1);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer buffer() {
        return this;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void clear() {
        setMarkIndex(-1);
        setGetIndex(0);
        setPutIndex(0);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void compact() {
        if (isReadOnly()) {
            throw new IllegalStateException(__READONLY);
        }
        int iMarkIndex = markIndex() >= 0 ? markIndex() : getIndex();
        if (iMarkIndex > 0) {
            byte[] bArrArray = array();
            int iPutIndex = putIndex() - iMarkIndex;
            if (iPutIndex > 0) {
                if (bArrArray != null) {
                    System.arraycopy(array(), iMarkIndex, array(), 0, iPutIndex);
                } else {
                    poke(0, peek(iMarkIndex, iPutIndex));
                }
            }
            if (markIndex() > 0) {
                setMarkIndex(markIndex() - iMarkIndex);
            }
            setGetIndex(getIndex() - iMarkIndex);
            setPutIndex(putIndex() - iMarkIndex);
        }
    }

    public ByteArrayBuffer duplicate(int i4) {
        return ((this instanceof Buffer.CaseInsensitve) || (buffer() instanceof Buffer.CaseInsensitve)) ? new ByteArrayBuffer.CaseInsensitive(asArray(), 0, length(), i4) : new ByteArrayBuffer(asArray(), 0, length(), i4);
    }

    public boolean equals(Object obj) {
        int i4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if ((this instanceof Buffer.CaseInsensitve) || (buffer instanceof Buffer.CaseInsensitve)) {
            return equalsIgnoreCase(buffer);
        }
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
            if (peek(i6) != buffer.peek(iPutIndex)) {
                return false;
            }
            iPutIndex2 = i6;
        }
    }

    @Override // org.eclipse.jetty.io.Buffer
    public boolean equalsIgnoreCase(Buffer buffer) {
        int i4;
        if (buffer == this) {
            return true;
        }
        if (buffer.length() != length()) {
            return false;
        }
        int i5 = this._hash;
        if (i5 != 0 && (buffer instanceof AbstractBuffer) && (i4 = ((AbstractBuffer) buffer)._hash) != 0 && i5 != i4) {
            return false;
        }
        int index = getIndex();
        int iPutIndex = buffer.putIndex();
        byte[] bArrArray = array();
        byte[] bArrArray2 = buffer.array();
        if (bArrArray != null && bArrArray2 != null) {
            int iPutIndex2 = putIndex();
            while (true) {
                int i6 = iPutIndex2 - 1;
                if (iPutIndex2 <= index) {
                    break;
                }
                byte b4 = bArrArray[i6];
                iPutIndex--;
                byte b5 = bArrArray2[iPutIndex];
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
                byte bPeek = peek(i7);
                iPutIndex--;
                byte bPeek2 = buffer.peek(iPutIndex);
                if (bPeek != bPeek2) {
                    if (97 <= bPeek && bPeek <= 122) {
                        bPeek = (byte) ((bPeek - 97) + 65);
                    }
                    if (97 <= bPeek2 && bPeek2 <= 122) {
                        bPeek2 = (byte) ((bPeek2 - 97) + 65);
                    }
                    if (bPeek != bPeek2) {
                        return false;
                    }
                }
                iPutIndex3 = i7;
            }
        }
        return true;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte get() {
        int i4 = this._get;
        this._get = i4 + 1;
        return peek(i4);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public final int getIndex() {
        return this._get;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public boolean hasContent() {
        return this._put > this._get;
    }

    public int hashCode() {
        if (this._hash == 0 || this._hashGet != this._get || this._hashPut != this._put) {
            int index = getIndex();
            byte[] bArrArray = array();
            if (bArrArray != null) {
                int iPutIndex = putIndex();
                while (true) {
                    int i4 = iPutIndex - 1;
                    if (iPutIndex <= index) {
                        break;
                    }
                    byte b4 = bArrArray[i4];
                    if (97 <= b4 && b4 <= 122) {
                        b4 = (byte) ((b4 - 97) + 65);
                    }
                    this._hash = (this._hash * 31) + b4;
                    iPutIndex = i4;
                }
            } else {
                int iPutIndex2 = putIndex();
                while (true) {
                    int i5 = iPutIndex2 - 1;
                    if (iPutIndex2 <= index) {
                        break;
                    }
                    byte bPeek = peek(i5);
                    if (97 <= bPeek && bPeek <= 122) {
                        bPeek = (byte) ((bPeek - 97) + 65);
                    }
                    this._hash = (this._hash * 31) + bPeek;
                    iPutIndex2 = i5;
                }
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
    public boolean isImmutable() {
        return this._access <= 0;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public boolean isReadOnly() {
        return this._access <= 1;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public boolean isVolatile() {
        return this._volatile;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int length() {
        return this._put - this._get;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void mark() {
        setMarkIndex(this._get - 1);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int markIndex() {
        return this._mark;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek() {
        return peek(this._get);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int poke(int i4, Buffer buffer) {
        int i5 = 0;
        this._hash = 0;
        int length = buffer.length();
        if (i4 + length > capacity()) {
            length = capacity() - i4;
        }
        byte[] bArrArray = buffer.array();
        byte[] bArrArray2 = array();
        if (bArrArray != null && bArrArray2 != null) {
            System.arraycopy(bArrArray, buffer.getIndex(), bArrArray2, i4, length);
        } else if (bArrArray != null) {
            int index = buffer.getIndex();
            while (i5 < length) {
                poke(i4, bArrArray[index]);
                i5++;
                i4++;
                index++;
            }
        } else if (bArrArray2 != null) {
            int index2 = buffer.getIndex();
            while (i5 < length) {
                bArrArray2[i4] = buffer.peek(index2);
                i5++;
                i4++;
                index2++;
            }
        } else {
            int index3 = buffer.getIndex();
            while (i5 < length) {
                poke(i4, buffer.peek(index3));
                i5++;
                i4++;
                index3++;
            }
        }
        return length;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int put(Buffer buffer) {
        int iPutIndex = putIndex();
        int iPoke = poke(iPutIndex, buffer);
        setPutIndex(iPutIndex + iPoke);
        return iPoke;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public final int putIndex() {
        return this._put;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int readFrom(InputStream inputStream, int i4) throws IOException {
        byte[] bArrArray = array();
        int iSpace = space();
        if (iSpace <= i4) {
            i4 = iSpace;
        }
        if (bArrArray != null) {
            int i5 = inputStream.read(bArrArray, this._put, i4);
            if (i5 > 0) {
                this._put += i5;
            }
            return i5;
        }
        int i6 = i4 <= 1024 ? i4 : 1024;
        byte[] bArr = new byte[i6];
        while (i4 > 0) {
            int i7 = inputStream.read(bArr, 0, i6);
            if (i7 < 0) {
                return -1;
            }
            put(bArr, 0, i7);
            i4 -= i7;
        }
        return 0;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void reset() {
        if (markIndex() >= 0) {
            setGetIndex(markIndex());
        }
    }

    public void rewind() {
        setGetIndex(0);
        setMarkIndex(-1);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void setGetIndex(int i4) {
        this._get = i4;
        this._hash = 0;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void setMarkIndex(int i4) {
        this._mark = i4;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void setPutIndex(int i4) {
        this._put = i4;
        this._hash = 0;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int skip(int i4) {
        if (length() < i4) {
            i4 = length();
        }
        setGetIndex(getIndex() + i4);
        return i4;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer slice() {
        return peek(getIndex(), length());
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer sliceFromMark() {
        return sliceFromMark((getIndex() - markIndex()) - 1);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int space() {
        return capacity() - this._put;
    }

    public String toDebugString() {
        return getClass() + "@" + super.hashCode();
    }

    @Override // org.eclipse.jetty.io.Buffer
    public String toDetailString() {
        StringBuilder sbA = f.a("[");
        sbA.append(super.hashCode());
        sbA.append(",");
        sbA.append(buffer().hashCode());
        sbA.append(",m=");
        sbA.append(markIndex());
        sbA.append(",g=");
        sbA.append(getIndex());
        sbA.append(",p=");
        sbA.append(putIndex());
        sbA.append(",c=");
        sbA.append(capacity());
        sbA.append("]={");
        if (markIndex() >= 0) {
            for (int iMarkIndex = markIndex(); iMarkIndex < getIndex(); iMarkIndex++) {
                TypeUtil.toHex(peek(iMarkIndex), (Appendable) sbA);
            }
            sbA.append("}{");
        }
        int i4 = 0;
        int index = getIndex();
        while (index < putIndex()) {
            TypeUtil.toHex(peek(index), (Appendable) sbA);
            int i5 = i4 + 1;
            if (i4 == 50 && putIndex() - index > 20) {
                sbA.append(" ... ");
                index = putIndex() - 20;
            }
            index++;
            i4 = i5;
        }
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    public String toString() {
        if (!isImmutable()) {
            return new String(asArray(), 0, length());
        }
        if (this._string == null) {
            this._string = new String(asArray(), 0, length());
        }
        return this._string;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void writeTo(OutputStream outputStream) throws IOException {
        byte[] bArrArray = array();
        if (bArrArray != null) {
            outputStream.write(bArrArray, getIndex(), length());
        } else {
            int length = length();
            int i4 = length <= 1024 ? length : 1024;
            byte[] bArr = new byte[i4];
            int i5 = this._get;
            while (length > 0) {
                int iPeek = peek(i5, bArr, 0, length > i4 ? i4 : length);
                outputStream.write(bArr, 0, iPeek);
                i5 += iPeek;
                length -= iPeek;
            }
        }
        clear();
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int get(byte[] bArr, int i4, int i5) {
        int index = getIndex();
        int length = length();
        if (length == 0) {
            return -1;
        }
        if (i5 > length) {
            i5 = length;
        }
        int iPeek = peek(index, bArr, i4, i5);
        if (iPeek > 0) {
            setGetIndex(index + iPeek);
        }
        return iPeek;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void mark(int i4) {
        setMarkIndex(this._get + i4);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer peek(int i4, int i5) {
        View view = this._view;
        if (view == null) {
            this._view = new View(this, -1, i4, i4 + i5, isReadOnly() ? 1 : 2);
        } else {
            view.update(buffer());
            this._view.setMarkIndex(-1);
            this._view.setGetIndex(0);
            this._view.setPutIndex(i5 + i4);
            this._view.setGetIndex(i4);
        }
        return this._view;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer sliceFromMark(int i4) {
        if (markIndex() < 0) {
            return null;
        }
        Buffer bufferPeek = peek(markIndex(), i4);
        setMarkIndex(-1);
        return bufferPeek;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void put(byte b4) {
        int iPutIndex = putIndex();
        poke(iPutIndex, b4);
        setPutIndex(iPutIndex + 1);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public Buffer get(int i4) {
        int index = getIndex();
        Buffer bufferPeek = peek(index, i4);
        setGetIndex(index + i4);
        return bufferPeek;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public String toString(String str) {
        try {
            byte[] bArrArray = array();
            if (bArrArray != null) {
                return new String(bArrArray, getIndex(), length(), str);
            }
            return new String(asArray(), 0, length(), str);
        } catch (Exception e4) {
            LOG.warn(e4);
            return new String(asArray(), 0, length());
        }
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int put(byte[] bArr, int i4, int i5) {
        int iPutIndex = putIndex();
        int iPoke = poke(iPutIndex, bArr, i4, i5);
        setPutIndex(iPutIndex + iPoke);
        return iPoke;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int put(byte[] bArr) {
        int iPutIndex = putIndex();
        int iPoke = poke(iPutIndex, bArr, 0, bArr.length);
        setPutIndex(iPutIndex + iPoke);
        return iPoke;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public String toString(Charset charset) {
        try {
            byte[] bArrArray = array();
            if (bArrArray != null) {
                return new String(bArrArray, getIndex(), length(), charset);
            }
            return new String(asArray(), 0, length(), charset);
        } catch (Exception e4) {
            LOG.warn(e4);
            return new String(asArray(), 0, length());
        }
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int poke(int i4, byte[] bArr, int i5, int i6) {
        int i7 = 0;
        this._hash = 0;
        if (i4 + i6 > capacity()) {
            i6 = capacity() - i4;
        }
        byte[] bArrArray = array();
        if (bArrArray != null) {
            System.arraycopy(bArr, i5, bArrArray, i4, i6);
        } else {
            while (i7 < i6) {
                poke(i4, bArr[i5]);
                i7++;
                i4++;
                i5++;
            }
        }
        return i6;
    }
}
