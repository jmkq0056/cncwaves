package okhttp3.tls.internal.der;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.math.BigInteger;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: compiled from: DerReader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 92\u00020\u0001:\u00029:B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\fJ\b\u0010\u001e\u001a\u0004\u0018\u00010\u0014J7\u0010\u001f\u001a\u0002H \"\u0004\b\u0000\u0010 2\b\u0010!\u001a\u0004\u0018\u00010\u00122\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H 0#H\u0080\bø\u0001\u0000¢\u0006\u0004\b$\u0010%J\u0006\u0010&\u001a\u00020'J\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\fJ\r\u0010+\u001a\u00020\u0014H\u0000¢\u0006\u0002\b,J\u0006\u0010-\u001a\u00020\u0006J\u0006\u0010.\u001a\u00020\u0012J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0012J\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u00020\u0012J\b\u00104\u001a\u00020\u0006H\u0002J\b\u00105\u001a\u00020\u0012H\u0016J\u001f\u00106\u001a\u0002H \"\u0004\b\u0000\u0010 2\f\u0010\"\u001a\b\u0012\u0004\u0012\u0002H 07¢\u0006\u0002\u00108R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0017\u001a\u0004\u0018\u00010\u00012\b\u0010\u0016\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006;"}, d2 = {"Lokhttp3/tls/internal/der/DerReader;", "", FirebaseAnalytics.Param.SOURCE, "Lokio/Source;", "(Lokio/Source;)V", "byteCount", "", "getByteCount", "()J", "bytesLeft", "getBytesLeft", "constructed", "", "countingSource", "Lokhttp3/tls/internal/der/DerReader$CountingSource;", "limit", "path", "", "", "peekedHeader", "Lokhttp3/tls/internal/der/DerHeader;", "Lokio/BufferedSource;", "value", "typeHint", "getTypeHint", "()Ljava/lang/Object;", "setTypeHint", "(Ljava/lang/Object;)V", "typeHintStack", "hasNext", "peekHeader", "read", "T", "name", "block", "Lkotlin/Function1;", "read$okhttp_tls", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "readBigInteger", "Ljava/math/BigInteger;", "readBitString", "Lokhttp3/tls/internal/der/BitString;", "readBoolean", "readHeader", "readHeader$okhttp_tls", "readLong", "readObjectIdentifier", "readOctetString", "Lokio/ByteString;", "readRelativeObjectIdentifier", "readUnknown", "readUtf8String", "readVariableLengthLong", "toString", "withTypeHint", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Companion", "CountingSource", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DerReader {
    private static final DerHeader END_OF_DATA = new DerHeader(0, 0, false, -1);
    private boolean constructed;
    private final CountingSource countingSource;
    private long limit;
    private final List<String> path;
    private DerHeader peekedHeader;
    private final BufferedSource source;
    private final List<Object> typeHintStack;

    public DerReader(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        CountingSource countingSource = new CountingSource(source);
        this.countingSource = countingSource;
        this.source = Okio.buffer(countingSource);
        this.limit = -1L;
        this.typeHintStack = new ArrayList();
        this.path = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getByteCount() {
        return this.countingSource.getBytesRead() - this.source.getBuffer().size();
    }

    public final Object getTypeHint() {
        return CollectionsKt.lastOrNull((List) this.typeHintStack);
    }

    public final void setTypeHint(Object obj) {
        this.typeHintStack.set(r0.size() - 1, obj);
    }

    private final long getBytesLeft() {
        long j = this.limit;
        if (j == -1) {
            return -1L;
        }
        return j - getByteCount();
    }

    public final boolean hasNext() {
        return peekHeader() != null;
    }

    public final DerHeader peekHeader() throws IOException {
        DerHeader header$okhttp_tls = this.peekedHeader;
        if (header$okhttp_tls == null) {
            header$okhttp_tls = readHeader$okhttp_tls();
            this.peekedHeader = header$okhttp_tls;
        }
        if (header$okhttp_tls.isEndOfData()) {
            return null;
        }
        return header$okhttp_tls;
    }

    public final DerHeader readHeader$okhttp_tls() throws IOException {
        long j;
        if (this.peekedHeader != null) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        long byteCount = getByteCount();
        long j2 = this.limit;
        if (byteCount == j2) {
            return END_OF_DATA;
        }
        if (j2 == -1 && this.source.exhausted()) {
            return END_OF_DATA;
        }
        byte b = this.source.readByte();
        int i = b & 192;
        boolean z = (b & 32) == 32;
        int i2 = b & 31;
        long variableLengthLong = i2 == 31 ? readVariableLengthLong() : i2;
        byte b2 = this.source.readByte();
        if ((b2 & 255) == 128) {
            throw new ProtocolException("indefinite length not permitted for DER");
        }
        if ((b2 & 128) == 128) {
            int i3 = b2 & 127;
            if (i3 > 8) {
                throw new ProtocolException("length encoded with more than 8 bytes is not supported");
            }
            long j3 = this.source.readByte();
            j = 255 & j3;
            if (j == 0 || (i3 == 1 && (j3 & 128) == 0)) {
                throw new ProtocolException("invalid encoding for length");
            }
            for (int i4 = 1; i4 < i3; i4++) {
                j = ((long) (this.source.readByte() & 255)) + (j << 8);
            }
            if (j < 0) {
                throw new ProtocolException("length > Long.MAX_VALUE");
            }
        } else {
            j = b2 & 127;
        }
        return new DerHeader(i, variableLengthLong, z, j);
    }

    public final <T> T read$okhttp_tls(String name, Function1<? super DerHeader, ? extends T> block) throws ProtocolException {
        Intrinsics.checkNotNullParameter(block, "block");
        if (hasNext()) {
            DerHeader derHeader = this.peekedHeader;
            Intrinsics.checkNotNull(derHeader);
            this.peekedHeader = null;
            long j = this.limit;
            boolean z = this.constructed;
            long byteCount = derHeader.getLength() != -1 ? getByteCount() + derHeader.getLength() : -1L;
            if (j == -1 || byteCount <= j) {
                this.limit = byteCount;
                this.constructed = derHeader.getConstructed();
                if (name != null) {
                    this.path.add(name);
                }
                try {
                    T tInvoke = block.invoke(derHeader);
                    if (byteCount != -1 && getByteCount() > byteCount) {
                        throw new ProtocolException("unexpected byte count at " + this);
                    }
                    return tInvoke;
                } finally {
                    this.peekedHeader = null;
                    this.limit = j;
                    this.constructed = z;
                    if (name != null) {
                        this.path.remove(this.path.size() - 1);
                    }
                }
            }
            throw new ProtocolException("enclosed object too large");
        }
        throw new ProtocolException("expected a value");
    }

    public final <T> T withTypeHint(Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.typeHintStack.add(null);
        try {
            T tInvoke = block.invoke();
            this.typeHintStack.remove(r0.size() - 1);
            return tInvoke;
        } catch (Throwable th) {
            this.typeHintStack.remove(this.typeHintStack.size() - 1);
            throw th;
        }
    }

    public final boolean readBoolean() throws ProtocolException {
        if (getBytesLeft() == 1) {
            return this.source.readByte() != 0;
        }
        throw new ProtocolException("unexpected length: " + getBytesLeft() + " at " + this);
    }

    public final BigInteger readBigInteger() throws ProtocolException {
        if (getBytesLeft() == 0) {
            throw new ProtocolException("unexpected length: " + getBytesLeft() + " at " + this);
        }
        return new BigInteger(this.source.readByteArray(getBytesLeft()));
    }

    public final long readLong() throws ProtocolException {
        long bytesLeft = getBytesLeft();
        if (1 > bytesLeft || bytesLeft >= 9) {
            throw new ProtocolException("unexpected length: " + getBytesLeft() + " at " + this);
        }
        long j = this.source.readByte();
        while (getByteCount() < this.limit) {
            j = (j << 8) + ((long) (this.source.readByte() & 255));
        }
        return j;
    }

    public final BitString readBitString() throws ProtocolException {
        if (getBytesLeft() == -1 || this.constructed) {
            throw new ProtocolException("constructed bit strings not supported for DER");
        }
        if (getBytesLeft() < 1) {
            throw new ProtocolException("malformed bit string");
        }
        return new BitString(this.source.readByteString(getBytesLeft()), this.source.readByte() & 255);
    }

    public final ByteString readOctetString() throws ProtocolException {
        if (getBytesLeft() == -1 || this.constructed) {
            throw new ProtocolException("constructed octet strings not supported for DER");
        }
        return this.source.readByteString(getBytesLeft());
    }

    public final String readUtf8String() throws ProtocolException {
        if (getBytesLeft() == -1 || this.constructed) {
            throw new ProtocolException("constructed strings not supported for DER");
        }
        return this.source.readUtf8(getBytesLeft());
    }

    public final String readObjectIdentifier() {
        Buffer buffer = new Buffer();
        long variableLengthLong = readVariableLengthLong();
        if (0 <= variableLengthLong && variableLengthLong < 40) {
            buffer.writeDecimalLong(0L);
            buffer.writeByte(46);
            buffer.writeDecimalLong(variableLengthLong);
        } else if (40 <= variableLengthLong && variableLengthLong < 80) {
            buffer.writeDecimalLong(1L);
            buffer.writeByte(46);
            buffer.writeDecimalLong(variableLengthLong - 40);
        } else {
            buffer.writeDecimalLong(2L);
            buffer.writeByte(46);
            buffer.writeDecimalLong(variableLengthLong - 80);
        }
        while (getByteCount() < this.limit) {
            buffer.writeByte(46);
            buffer.writeDecimalLong(readVariableLengthLong());
        }
        return buffer.readUtf8();
    }

    public final String readRelativeObjectIdentifier() {
        Buffer buffer = new Buffer();
        while (getByteCount() < this.limit) {
            if (buffer.size() > 0) {
                buffer.writeByte(46);
            }
            buffer.writeDecimalLong(readVariableLengthLong());
        }
        return buffer.readUtf8();
    }

    private final long readVariableLengthLong() {
        long j = 0;
        while (true) {
            long j2 = this.source.readByte();
            long j3 = 255 & j2;
            if ((j2 & 128) != 128) {
                return j + j3;
            }
            j = (j + (j2 & 127)) << 7;
        }
    }

    public final ByteString readUnknown() {
        return this.source.readByteString(getBytesLeft());
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this.path, " / ", null, null, 0, null, null, 62, null);
    }

    /* JADX INFO: compiled from: DerReader.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lokhttp3/tls/internal/der/DerReader$CountingSource;", "Lokio/ForwardingSource;", FirebaseAnalytics.Param.SOURCE, "Lokio/Source;", "(Lokio/Source;)V", "bytesRead", "", "getBytesRead", "()J", "setBytesRead", "(J)V", "read", "sink", "Lokio/Buffer;", "byteCount", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class CountingSource extends ForwardingSource {
        private long bytesRead;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountingSource(Source source) {
            super(source);
            Intrinsics.checkNotNullParameter(source, "source");
        }

        public final long getBytesRead() {
            return this.bytesRead;
        }

        public final void setBytesRead(long j) {
            this.bytesRead = j;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            long j = delegate().read(sink, byteCount);
            if (j == -1) {
                return -1L;
            }
            this.bytesRead += j;
            return j;
        }
    }
}
