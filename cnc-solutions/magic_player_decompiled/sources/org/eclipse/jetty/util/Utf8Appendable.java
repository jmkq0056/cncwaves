package org.eclipse.jetty.util;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.io.IOException;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Utf8Appendable {
    public static final char REPLACEMENT = 65533;
    private static final int UTF8_ACCEPT = 0;
    private static final int UTF8_REJECT = 12;
    public final Appendable _appendable;
    private int _codep;
    public int _state = 0;
    public static final Logger LOG = Log.getLogger((Class<?>) Utf8Appendable.class);
    private static final byte[] BYTE_TABLE = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 10, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, Flags.CD, 6, 6, 6, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};
    private static final byte[] TRANS_TABLE = {0, 12, 24, 36, 60, 96, 84, 12, 12, 12, 48, 72, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 0, 12, 12, 12, 12, 12, 0, 12, 0, 12, 12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 24, 12, 12, 12, 12, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36, 12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    public static class NotUtf8Exception extends IllegalArgumentException {
        public NotUtf8Exception(String str) {
            super(a.a("Not valid UTF8! ", str));
        }
    }

    public Utf8Appendable(Appendable appendable) {
        this._appendable = appendable;
    }

    public void append(byte b4) {
        try {
            appendByte(b4);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public void appendByte(byte b4) throws IOException {
        if (b4 > 0 && this._state == 0) {
            this._appendable.append((char) (b4 & 255));
            return;
        }
        int i4 = b4 & 255;
        byte b5 = BYTE_TABLE[i4];
        int i5 = this._state;
        int i6 = i5 == 0 ? (255 >> b5) & i4 : (i4 & 63) | (this._codep << 6);
        this._codep = i6;
        byte b6 = TRANS_TABLE[i5 + b5];
        if (b6 == 0) {
            this._state = b6;
            if (i6 < 55296) {
                this._appendable.append((char) i6);
                return;
            }
            for (char c4 : Character.toChars(i6)) {
                this._appendable.append(c4);
            }
            return;
        }
        if (b6 != 12) {
            this._state = b6;
            return;
        }
        StringBuilder sbA = f.a("byte ");
        sbA.append(TypeUtil.toHexString(b4));
        sbA.append(" in state ");
        sbA.append(this._state / 12);
        String string = sbA.toString();
        this._codep = 0;
        this._state = 0;
        this._appendable.append(REPLACEMENT);
        throw new NotUtf8Exception(string);
    }

    public void checkState() {
        if (isUtf8SequenceComplete()) {
            return;
        }
        this._codep = 0;
        this._state = 0;
        try {
            this._appendable.append(REPLACEMENT);
            throw new NotUtf8Exception("incomplete UTF8 sequence");
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public boolean isUtf8SequenceComplete() {
        return this._state == 0;
    }

    public abstract int length();

    public void reset() {
        this._state = 0;
    }

    public String toReplacedString() {
        if (!isUtf8SequenceComplete()) {
            this._codep = 0;
            this._state = 0;
            try {
                this._appendable.append(REPLACEMENT);
                NotUtf8Exception notUtf8Exception = new NotUtf8Exception("incomplete UTF8 sequence");
                Logger logger = LOG;
                logger.warn(notUtf8Exception.toString(), new Object[0]);
                logger.debug(notUtf8Exception);
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
        return this._appendable.toString();
    }

    public void append(byte[] bArr, int i4, int i5) {
        int i6 = i5 + i4;
        while (i4 < i6) {
            try {
                appendByte(bArr[i4]);
                i4++;
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    public boolean append(byte[] bArr, int i4, int i5, int i6) {
        int i7 = i5 + i4;
        while (i4 < i7) {
            try {
                if (length() > i6) {
                    return false;
                }
                appendByte(bArr[i4]);
                i4++;
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
        return true;
    }
}
