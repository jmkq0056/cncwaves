package io.ktor.utils.io.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.ktor.http.LinkHeader;
import io.ktor.utils.io.DeprecationKt;
import io.ktor.utils.io.bits.Memory;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.MalformedUTF8InputException;
import io.ktor.utils.io.core.internal.UnsafeKt;
import io.ktor.utils.io.pool.ObjectPool;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes4.dex */
@Deprecated(message = DeprecationKt.IO_DEPRECATION_MESSAGE)
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0001\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b'\u0018\u0000 \u008e\u00012\u00060\u0001j\u0002`\u0002:\u0002\u008e\u0001B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b¢\u0006\u0002\u0010\tJ\u0010\u00107\u001a\u0002082\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0015\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u0004H\u0000¢\u0006\u0002\b;J\u0010\u0010<\u001a\u0002082\u0006\u0010=\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0017H\u0002J\u0006\u0010A\u001a\u00020\u000fJ\b\u0010B\u001a\u000208H\u0016J\b\u0010C\u001a\u000208H$J\u000e\u0010D\u001a\u00020\u00172\u0006\u0010E\u001a\u00020\u0017J\u000e\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u0006J\u0018\u0010F\u001a\u00020\u00172\u0006\u0010E\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u0017H\u0002J\u0019\u0010F\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0006H\u0082\u0010J\u000e\u0010H\u001a\u0002082\u0006\u0010E\u001a\u00020\u0017J\n\u0010I\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010J\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u0006H\u0002J\u0012\u0010K\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u0004H\u0001J\u001b\u0010K\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0004H\u0082\u0010J\u0017\u0010N\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u0004H\u0000¢\u0006\u0002\bOJ\n\u0010P\u001a\u0004\u0018\u00010\u0004H\u0014J-\u0010P\u001a\u00020\u00172\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u00172\u0006\u0010S\u001a\u00020\u0017H$ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bT\u0010UJ\u0015\u0010V\u001a\u0002082\u0006\u0010L\u001a\u00020\u0004H\u0000¢\u0006\u0002\bWJ\u0010\u0010X\u001a\u0002082\u0006\u0010L\u001a\u00020\u0004H\u0002J \u0010Y\u001a\u0002082\u0006\u0010L\u001a\u00020\u00042\u0006\u0010Z\u001a\u00020\u00172\u0006\u0010[\u001a\u00020\u0017H\u0002J\u000e\u0010\\\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\u0017J\b\u0010]\u001a\u000208H\u0004J\u0018\u0010^\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J\u0010\u0010`\u001a\u00020?2\u0006\u0010a\u001a\u00020\u0017H\u0002J\u0010\u0010b\u001a\u00020?2\u0006\u0010E\u001a\u00020\u0017H\u0002JA\u0010c\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010d\u001a\u00020\u00062\b\b\u0002\u0010R\u001a\u00020\u00062\b\b\u0002\u0010@\u001a\u00020\u00062\b\b\u0002\u0010_\u001a\u00020\u0006ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\be\u0010fJ\u000e\u0010c\u001a\u00020\u00172\u0006\u0010g\u001a\u00020\u0004J\u0015\u0010h\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u0006H\u0000¢\u0006\u0002\biJ\u0018\u0010j\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010k\u001a\u00020\u0017H\u0002J\u0012\u0010l\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u0017H\u0001J\u001a\u0010l\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004H\u0001J\u0017\u0010m\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u0017H\u0000¢\u0006\u0002\bnJ\u001b\u0010o\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0010J$\u0010p\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J)\u0010t\u001a\u00020\u00172\u0006\u0010u\u001a\u00020v2\u0006\u0010R\u001a\u00020\u00172\u0006\u0010S\u001a\u00020\u00172\u0006\u0010k\u001a\u00020\u0017H\u0082\u0010J%\u0010w\u001a\u00020\u00172\u0006\u0010Q\u001a\u00020x2\u0006\u0010y\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u0017H\u0000¢\u0006\u0002\b{J\u0006\u0010|\u001a\u00020}J\b\u0010~\u001a\u00020}H\u0002J\u001b\u0010\u007f\u001a\u00030\u0080\u00012\b\b\u0002\u0010@\u001a\u00020\u00172\b\b\u0002\u0010_\u001a\u00020\u0017J&\u0010\u007f\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\b\b\u0002\u0010@\u001a\u00020\u00172\b\b\u0002\u0010_\u001a\u00020\u0017J\u0011\u0010\u0081\u0001\u001a\u00030\u0080\u00012\u0007\u0010\u0082\u0001\u001a\u00020\u0017J\u001c\u0010\u0081\u0001\u001a\u0002082\n\u0010q\u001a\u00060rj\u0002`s2\u0007\u0010\u0082\u0001\u001a\u00020\u0017J%\u0010\u0083\u0001\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J\u0007\u0010\u0084\u0001\u001a\u000208J\u0017\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0003\b\u0086\u0001J\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0003\b\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0003\b\u008a\u0001J\u0007\u0010\u008b\u0001\u001a\u00020\u0017J\u0017\u0010\u008c\u0001\u001a\u00020\u000f2\u0006\u0010:\u001a\u00020\u0004H\u0000¢\u0006\u0003\b\u008d\u0001R\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0003\u001a\u00020\u00048@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR/\u0010\u001d\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0016\n\u0002\u0010$\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b&\u0010\u0013\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001cR\u001b\u0010)\u001a\u00020\u00178À\u0002X\u0081\u0004¢\u0006\f\u0012\u0004\b*\u0010\u0013\u001a\u0004\b+\u0010\u001aR\u000e\u0010,\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b/\u00100R,\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00068\u0000@@X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b3\u0010\u0013\u001a\u0004\b4\u00100\"\u0004\b5\u00106\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u008f\u0001"}, d2 = {"Lio/ktor/utils/io/core/Input;", "Ljava/io/Closeable;", "Lio/ktor/utils/io/core/Closeable;", "head", "Lio/ktor/utils/io/core/internal/ChunkBuffer;", "remaining", "", "pool", "Lio/ktor/utils/io/pool/ObjectPool;", "(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V", "newHead", "_head", "set_head", "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V", "endOfInput", "", "getEndOfInput", "()Z", "getHead$annotations", "()V", "getHead", "()Lio/ktor/utils/io/core/internal/ChunkBuffer;", "headEndExclusive", "", "getHeadEndExclusive$annotations", "getHeadEndExclusive", "()I", "setHeadEndExclusive", "(I)V", "headMemory", "Lio/ktor/utils/io/bits/Memory;", "getHeadMemory-SK3TCg8$annotations", "getHeadMemory-SK3TCg8", "()Ljava/nio/ByteBuffer;", "setHeadMemory-3GNKZMM", "(Ljava/nio/ByteBuffer;)V", "Ljava/nio/ByteBuffer;", "headPosition", "getHeadPosition$annotations", "getHeadPosition", "setHeadPosition", "headRemaining", "getHeadRemaining$annotations", "getHeadRemaining", "noMoreChunksAvailable", "getPool", "()Lio/ktor/utils/io/pool/ObjectPool;", "getRemaining", "()J", "newValue", "tailRemaining", "getTailRemaining$annotations", "getTailRemaining", "setTailRemaining", "(J)V", "afterRead", "", "append", "chain", "append$ktor_io", "appendView", "chunk", "atLeastMinCharactersRequire", "", "min", "canRead", "close", "closeSource", "discard", "n", "discardAsMuchAsPossible", "skipped", "discardExact", "doFill", "doPrefetch", "ensureNext", "current", "empty", "ensureNextHead", "ensureNextHead$ktor_io", "fill", FirebaseAnalytics.Param.DESTINATION, TypedValues.CycleType.S_WAVE_OFFSET, "length", "fill-62zg_DM", "(Ljava/nio/ByteBuffer;II)I", "fixGapAfterRead", "fixGapAfterRead$ktor_io", "fixGapAfterReadFallback", "fixGapAfterReadFallbackUnreserved", "size", "overrun", "hasBytes", "markNoMoreChunksAvailable", "minShouldBeLess", "max", "minSizeIsTooBig", "minSize", "notEnoughBytesAvailable", "peekTo", "destinationOffset", "peekTo-9zorpBc", "(Ljava/nio/ByteBuffer;JJJJ)J", "buffer", LinkHeader.Rel.Prefetch, "prefetch$ktor_io", "prematureEndOfStreamChars", "copied", "prepareRead", "prepareReadHead", "prepareReadHead$ktor_io", "prepareReadLoop", "readASCII", "out", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "readAsMuchAsPossible", "array", "", "readAvailableCharacters", "", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "readAvailableCharacters$ktor_io", "readByte", "", "readByteSlow", "readText", "", "readTextExact", "exactCharacters", "readUtf8", "release", "releaseHead", "releaseHead$ktor_io", "steal", "steal$ktor_io", "stealAll", "stealAll$ktor_io", "tryPeek", "tryWriteAppend", "tryWriteAppend$ktor_io", "Companion", "ktor-io"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Input implements Closeable {
    private ChunkBuffer _head;
    private int headEndExclusive;
    private ByteBuffer headMemory;
    private int headPosition;
    private boolean noMoreChunksAvailable;
    private final ObjectPool<ChunkBuffer> pool;
    private long tailRemaining;

    public Input() {
        this(null, 0L, null, 7, null);
    }

    public static /* synthetic */ void getHead$annotations() {
    }

    public static /* synthetic */ void getHeadEndExclusive$annotations() {
    }

    /* JADX INFO: renamed from: getHeadMemory-SK3TCg8$annotations, reason: not valid java name */
    public static /* synthetic */ void m723getHeadMemorySK3TCg8$annotations() {
    }

    public static /* synthetic */ void getHeadPosition$annotations() {
    }

    public static /* synthetic */ void getHeadRemaining$annotations() {
    }

    public static /* synthetic */ void getTailRemaining$annotations() {
    }

    protected abstract void closeSource();

    /* JADX INFO: renamed from: fill-62zg_DM */
    protected abstract int mo722fill62zg_DM(ByteBuffer destination, int offset, int length);

    public Input(ChunkBuffer head, long j, ObjectPool<ChunkBuffer> pool) {
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.pool = pool;
        this._head = head;
        this.headMemory = head.getMemory();
        this.headPosition = head.getReadPosition();
        int writePosition = head.getWritePosition();
        this.headEndExclusive = writePosition;
        this.tailRemaining = j - ((long) (writePosition - this.headPosition));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Input(ChunkBuffer chunkBuffer, long j, ObjectPool objectPool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        chunkBuffer = (i & 1) != 0 ? ChunkBuffer.INSTANCE.getEmpty() : chunkBuffer;
        this(chunkBuffer, (i & 2) != 0 ? BuffersKt.remainingAll(chunkBuffer) : j, (i & 4) != 0 ? ChunkBuffer.INSTANCE.getPool() : objectPool);
    }

    public final ObjectPool<ChunkBuffer> getPool() {
        return this.pool;
    }

    private final void set_head(ChunkBuffer chunkBuffer) {
        this._head = chunkBuffer;
        this.headMemory = chunkBuffer.getMemory();
        this.headPosition = chunkBuffer.getReadPosition();
        this.headEndExclusive = chunkBuffer.getWritePosition();
    }

    public final ChunkBuffer getHead() {
        ChunkBuffer chunkBuffer = this._head;
        chunkBuffer.discardUntilIndex$ktor_io(this.headPosition);
        return chunkBuffer;
    }

    /* JADX INFO: renamed from: getHeadMemory-SK3TCg8, reason: not valid java name and from getter */
    public final ByteBuffer getHeadMemory() {
        return this.headMemory;
    }

    /* JADX INFO: renamed from: setHeadMemory-3GNKZMM, reason: not valid java name */
    public final void m727setHeadMemory3GNKZMM(ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<set-?>");
        this.headMemory = byteBuffer;
    }

    public final int getHeadPosition() {
        return this.headPosition;
    }

    public final void setHeadPosition(int i) {
        this.headPosition = i;
    }

    public final int getHeadEndExclusive() {
        return this.headEndExclusive;
    }

    public final void setHeadEndExclusive(int i) {
        this.headEndExclusive = i;
    }

    public final long getTailRemaining() {
        return this.tailRemaining;
    }

    public final void setTailRemaining(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(("tailRemaining shouldn't be negative: " + j).toString());
        }
        this.tailRemaining = j;
    }

    public final int getHeadRemaining() {
        return getHeadEndExclusive() - getHeadPosition();
    }

    /* JADX INFO: renamed from: peekTo-9zorpBc$default, reason: not valid java name */
    public static /* synthetic */ long m724peekTo9zorpBc$default(Input input, ByteBuffer byteBuffer, long j, long j2, long j3, long j4, int i, Object obj) {
        if (obj == null) {
            return input.m726peekTo9zorpBc(byteBuffer, j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? 1L : j3, (i & 16) != 0 ? Long.MAX_VALUE : j4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: peekTo-9zorpBc");
    }

    /* JADX INFO: renamed from: peekTo-9zorpBc, reason: not valid java name */
    public final long m726peekTo9zorpBc(ByteBuffer destination, long destinationOffset, long offset, long min, long max) {
        ByteBuffer destination2 = destination;
        Intrinsics.checkNotNullParameter(destination2, "destination");
        prefetch$ktor_io(min + offset);
        ChunkBuffer head = getHead();
        long jMin = Math.min(max, ((long) destination2.limit()) - destinationOffset);
        long j = destinationOffset;
        ChunkBuffer next = head;
        long j2 = 0;
        long j3 = offset;
        while (j2 < min && j2 < jMin) {
            ChunkBuffer chunkBuffer = next;
            long writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
            if (writePosition > j3) {
                long jMin2 = Math.min(writePosition - j3, jMin - j2);
                Memory.m544copyToJT6ljtQ(next.getMemory(), destination2, ((long) next.getReadPosition()) + j3, jMin2, j);
                j2 += jMin2;
                j += jMin2;
                j3 = 0;
            } else {
                j3 -= writePosition;
            }
            next = next.getNext();
            if (next == null) {
                return j2;
            }
            destination2 = destination;
        }
        return j2;
    }

    private final boolean doPrefetch(long min) {
        ChunkBuffer chunkBufferFindTail = BuffersKt.findTail(this._head);
        long headEndExclusive = ((long) (getHeadEndExclusive() - getHeadPosition())) + this.tailRemaining;
        do {
            ChunkBuffer chunkBufferFill = fill();
            if (chunkBufferFill == null) {
                this.noMoreChunksAvailable = true;
                return false;
            }
            ChunkBuffer chunkBuffer = chunkBufferFill;
            int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
            if (chunkBufferFindTail == ChunkBuffer.INSTANCE.getEmpty()) {
                set_head(chunkBufferFill);
                chunkBufferFindTail = chunkBufferFill;
            } else {
                chunkBufferFindTail.setNext(chunkBufferFill);
                setTailRemaining(this.tailRemaining + ((long) writePosition));
            }
            headEndExclusive += (long) writePosition;
        } while (headEndExclusive < min);
        return true;
    }

    public final boolean canRead() {
        return (this.headPosition == this.headEndExclusive && this.tailRemaining == 0) ? false : true;
    }

    public final void release() {
        ChunkBuffer head = getHead();
        ChunkBuffer empty = ChunkBuffer.INSTANCE.getEmpty();
        if (head != empty) {
            set_head(empty);
            setTailRemaining(0L);
            BuffersKt.releaseAll(head, this.pool);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
        if (!this.noMoreChunksAvailable) {
            this.noMoreChunksAvailable = true;
        }
        closeSource();
    }

    public final ChunkBuffer stealAll$ktor_io() {
        ChunkBuffer head = getHead();
        ChunkBuffer empty = ChunkBuffer.INSTANCE.getEmpty();
        if (head == empty) {
            return null;
        }
        set_head(empty);
        setTailRemaining(0L);
        return head;
    }

    public final ChunkBuffer steal$ktor_io() {
        ChunkBuffer head = getHead();
        ChunkBuffer next = head.getNext();
        ChunkBuffer empty = ChunkBuffer.INSTANCE.getEmpty();
        if (head == empty) {
            return null;
        }
        if (next == null) {
            set_head(empty);
            setTailRemaining(0L);
        } else {
            set_head(next);
            ChunkBuffer chunkBuffer = next;
            setTailRemaining(this.tailRemaining - ((long) (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition())));
        }
        head.setNext(null);
        return head;
    }

    public final void append$ktor_io(ChunkBuffer chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (chain == ChunkBuffer.INSTANCE.getEmpty()) {
            return;
        }
        long jRemainingAll = BuffersKt.remainingAll(chain);
        if (this._head == ChunkBuffer.INSTANCE.getEmpty()) {
            set_head(chain);
            setTailRemaining(jRemainingAll - ((long) (getHeadEndExclusive() - getHeadPosition())));
        } else {
            BuffersKt.findTail(this._head).setNext(chain);
            setTailRemaining(this.tailRemaining + jRemainingAll);
        }
    }

    public final boolean tryWriteAppend$ktor_io(ChunkBuffer chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        ChunkBuffer chunkBufferFindTail = BuffersKt.findTail(getHead());
        ChunkBuffer chunkBuffer = chain;
        int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
        if (writePosition == 0) {
            return false;
        }
        ChunkBuffer chunkBuffer2 = chunkBufferFindTail;
        if (chunkBuffer2.getLimit() - chunkBuffer2.getWritePosition() < writePosition) {
            return false;
        }
        BufferAppendKt.writeBufferAppend(chunkBuffer2, chunkBuffer, writePosition);
        if (getHead() == chunkBufferFindTail) {
            this.headEndExclusive = chunkBufferFindTail.getWritePosition();
            return true;
        }
        setTailRemaining(this.tailRemaining + ((long) writePosition));
        return true;
    }

    public final byte readByte() {
        int i = this.headPosition;
        int i2 = i + 1;
        if (i2 < this.headEndExclusive) {
            this.headPosition = i2;
            return this.headMemory.get(i);
        }
        return readByteSlow();
    }

    private final byte readByteSlow() throws EOFException {
        int i = this.headPosition;
        if (i >= this.headEndExclusive) {
            ChunkBuffer chunkBufferPrepareRead = prepareRead(1);
            if (chunkBufferPrepareRead == null) {
                StringsKt.prematureEndOfStream(1);
                throw new KotlinNothingValueException();
            }
            byte b = chunkBufferPrepareRead.readByte();
            UnsafeKt.completeReadHead(this, chunkBufferPrepareRead);
            return b;
        }
        byte b2 = this.headMemory.get(i);
        this.headPosition = i;
        ChunkBuffer chunkBuffer = this._head;
        chunkBuffer.discardUntilIndex$ktor_io(i);
        ensureNext(chunkBuffer);
        return b2;
    }

    public final int discard(int n) {
        if (n < 0) {
            throw new IllegalArgumentException(("Negative discard is not allowed: " + n).toString());
        }
        return discardAsMuchAsPossible(n, 0);
    }

    public final void discardExact(int n) {
        if (discard(n) != n) {
            throw new EOFException("Unable to discard " + n + " bytes due to end of packet");
        }
    }

    public final int tryPeek() {
        ChunkBuffer chunkBufferPrepareReadLoop;
        ChunkBuffer head = getHead();
        if (getHeadEndExclusive() - getHeadPosition() > 0) {
            return head.tryPeekByte();
        }
        if ((this.tailRemaining == 0 && this.noMoreChunksAvailable) || (chunkBufferPrepareReadLoop = prepareReadLoop(1, head)) == null) {
            return -1;
        }
        return chunkBufferPrepareReadLoop.tryPeekByte();
    }

    public final int peekTo(ChunkBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        ChunkBuffer chunkBufferPrepareReadHead$ktor_io = prepareReadHead$ktor_io(1);
        if (chunkBufferPrepareReadHead$ktor_io == null) {
            return -1;
        }
        ChunkBuffer chunkBuffer = buffer;
        ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadHead$ktor_io;
        int iMin = Math.min(chunkBuffer.getLimit() - chunkBuffer.getWritePosition(), chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition());
        BufferPrimitivesKt.writeFully(chunkBuffer, chunkBuffer2, iMin);
        return iMin;
    }

    public final long discard(long n) {
        if (n <= 0) {
            return 0L;
        }
        return discardAsMuchAsPossible(n, 0L);
    }

    public final int readAvailableCharacters$ktor_io(final char[] destination, final int off, int len) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (getEndOfInput()) {
            return -1;
        }
        return readText(new Appendable(off, destination) { // from class: io.ktor.utils.io.core.Input$readAvailableCharacters$out$1
            final /* synthetic */ char[] $destination;
            private int idx;

            {
                this.$destination = destination;
                this.idx = off;
            }

            @Override // java.lang.Appendable
            public Appendable append(char value) {
                char[] cArr = this.$destination;
                int i = this.idx;
                this.idx = i + 1;
                cArr[i] = value;
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence value) {
                if (value instanceof String) {
                    String str = (String) value;
                    StringsJVMKt.getCharsInternal(str, this.$destination, this.idx);
                    this.idx += str.length();
                } else if (value != null) {
                    int length = value.length();
                    for (int i = 0; i < length; i++) {
                        char[] cArr = this.$destination;
                        int i2 = this.idx;
                        this.idx = i2 + 1;
                        cArr[i2] = value.charAt(i);
                    }
                }
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence value, int startIndex, int endIndex) {
                throw new UnsupportedOperationException();
            }
        }, 0, len);
    }

    public static /* synthetic */ int readText$default(Input input, Appendable appendable, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readText");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return input.readText(appendable, i, i2);
    }

    public final int readText(Appendable out, int min, int max) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        if (max >= getRemaining()) {
            String textExactBytes$default = StringsKt.readTextExactBytes$default(this, (int) getRemaining(), (Charset) null, 2, (Object) null);
            out.append(textExactBytes$default);
            return textExactBytes$default.length();
        }
        return readASCII(out, min, max);
    }

    public final void readTextExact(Appendable out, int exactCharacters) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        readText(out, exactCharacters, exactCharacters);
    }

    public static /* synthetic */ String readText$default(Input input, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readText");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        return input.readText(i, i2);
    }

    public final String readText(int min, int max) throws Throwable {
        if (min == 0 && (max == 0 || getEndOfInput())) {
            return "";
        }
        long remaining = getRemaining();
        if (remaining > 0 && max >= remaining) {
            return StringsKt.readTextExactBytes$default(this, (int) remaining, (Charset) null, 2, (Object) null);
        }
        StringBuilder sb = new StringBuilder(RangesKt.coerceAtMost(RangesKt.coerceAtLeast(min, 16), max));
        readASCII(sb, min, max);
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public final String readTextExact(int exactCharacters) {
        return readText(exactCharacters, exactCharacters);
    }

    private final int readASCII(Appendable out, int min, int max) throws Throwable {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        if (max == 0 && min == 0) {
            return 0;
        }
        if (getEndOfInput()) {
            if (min == 0) {
                return 0;
            }
            atLeastMinCharactersRequire(min);
            throw new KotlinNothingValueException();
        }
        if (max < min) {
            minShouldBeLess(min, max);
            throw new KotlinNothingValueException();
        }
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(this, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i = 0;
        } else {
            i = 0;
            boolean z6 = false;
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    ByteBuffer memory = chunkBuffer.getMemory();
                    int readPosition = chunkBuffer.getReadPosition();
                    int writePosition = chunkBuffer.getWritePosition();
                    for (int i2 = readPosition; i2 < writePosition; i2++) {
                        byte b = memory.get(i2);
                        int i3 = b & 255;
                        if ((b & 128) != 128) {
                            char c = (char) i3;
                            if (i == max) {
                                z4 = false;
                            } else {
                                out.append(c);
                                i++;
                                z4 = true;
                            }
                            if (z4) {
                            }
                        }
                        chunkBuffer.discardExact(i2 - readPosition);
                        z2 = false;
                        break;
                    }
                    chunkBuffer.discardExact(writePosition - readPosition);
                    z2 = true;
                    if (z2) {
                        z3 = true;
                    } else {
                        if (i != max) {
                            z6 = true;
                        }
                        z3 = false;
                    }
                    if (z3) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(this, chunkBufferPrepareReadFirstHead);
                            if (chunkBufferPrepareReadFirstHead == null) {
                                break;
                            }
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(this, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else {
                        UnsafeKt.completeReadHead(this, chunkBufferPrepareReadFirstHead);
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                }
            }
            z5 = z6;
        }
        if (z5) {
            return i + readUtf8(out, min - i, max - i);
        }
        if (i >= min) {
            return i;
        }
        prematureEndOfStreamChars(min, i);
        throw new KotlinNothingValueException();
    }

    private final Void atLeastMinCharactersRequire(int min) throws EOFException {
        throw new EOFException("at least " + min + " characters required but no bytes available");
    }

    private final Void minShouldBeLess(int min, int max) {
        throw new IllegalArgumentException("min should be less or equal to max but min = " + min + ", max = " + max);
    }

    private final Void prematureEndOfStreamChars(int min, int copied) throws MalformedUTF8InputException {
        throw new MalformedUTF8InputException("Premature end of stream: expected at least " + min + " chars but had only " + copied);
    }

    private final long discardAsMuchAsPossible(long n, long skipped) {
        ChunkBuffer chunkBufferPrepareRead;
        while (n != 0 && (chunkBufferPrepareRead = prepareRead(1)) != null) {
            ChunkBuffer chunkBuffer = chunkBufferPrepareRead;
            int iMin = (int) Math.min(chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition(), n);
            chunkBufferPrepareRead.discardExact(iMin);
            this.headPosition += iMin;
            afterRead(chunkBufferPrepareRead);
            long j = iMin;
            n -= j;
            skipped += j;
        }
        return skipped;
    }

    private final int discardAsMuchAsPossible(int n, int skipped) {
        while (n != 0) {
            ChunkBuffer chunkBufferPrepareRead = prepareRead(1);
            if (chunkBufferPrepareRead == null) {
                break;
            }
            ChunkBuffer chunkBuffer = chunkBufferPrepareRead;
            int iMin = Math.min(chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition(), n);
            chunkBufferPrepareRead.discardExact(iMin);
            this.headPosition += iMin;
            afterRead(chunkBufferPrepareRead);
            n -= iMin;
            skipped += iMin;
        }
        return skipped;
    }

    private final int readAsMuchAsPossible(byte[] array, int offset, int length, int copied) {
        while (length != 0) {
            ChunkBuffer chunkBufferPrepareRead = prepareRead(1);
            if (chunkBufferPrepareRead == null) {
                break;
            }
            ChunkBuffer chunkBuffer = chunkBufferPrepareRead;
            int iMin = Math.min(length, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
            BufferPrimitivesKt.readFully((Buffer) chunkBuffer, array, offset, iMin);
            this.headPosition = chunkBufferPrepareRead.getReadPosition();
            if (iMin == length && chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition() != 0) {
                return copied + iMin;
            }
            afterRead(chunkBufferPrepareRead);
            offset += iMin;
            length -= iMin;
            copied += iMin;
        }
        return copied;
    }

    private final Void notEnoughBytesAvailable(int n) throws EOFException {
        throw new EOFException("Not enough data in packet (" + getRemaining() + ") to read " + n + " byte(s)");
    }

    public final ChunkBuffer prepareReadHead$ktor_io(int minSize) {
        return prepareReadLoop(minSize, getHead());
    }

    public final ChunkBuffer ensureNextHead$ktor_io(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return ensureNext(current);
    }

    public final ChunkBuffer ensureNext(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return ensureNext(current, ChunkBuffer.INSTANCE.getEmpty());
    }

    public final void fixGapAfterRead$ktor_io(ChunkBuffer current) {
        Intrinsics.checkNotNullParameter(current, "current");
        ChunkBuffer next = current.getNext();
        if (next == null) {
            fixGapAfterReadFallback(current);
            return;
        }
        ChunkBuffer chunkBuffer = current;
        int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
        int iMin = Math.min(writePosition, 8 - (chunkBuffer.getCapacity() - chunkBuffer.getLimit()));
        if (next.getStartGap() < iMin) {
            fixGapAfterReadFallback(current);
            return;
        }
        ChunkBuffer chunkBuffer2 = next;
        BufferKt.restoreStartGap(chunkBuffer2, iMin);
        if (writePosition > iMin) {
            current.releaseEndGap$ktor_io();
            this.headEndExclusive = current.getWritePosition();
            setTailRemaining(this.tailRemaining + ((long) iMin));
        } else {
            set_head(next);
            setTailRemaining(this.tailRemaining - ((long) ((chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) - iMin)));
            current.cleanNext();
            current.release(this.pool);
        }
    }

    private final void fixGapAfterReadFallback(ChunkBuffer current) {
        if (this.noMoreChunksAvailable && current.getNext() == null) {
            this.headPosition = current.getReadPosition();
            this.headEndExclusive = current.getWritePosition();
            setTailRemaining(0L);
            return;
        }
        ChunkBuffer chunkBuffer = current;
        int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
        int iMin = Math.min(writePosition, 8 - (chunkBuffer.getCapacity() - chunkBuffer.getLimit()));
        if (writePosition > iMin) {
            fixGapAfterReadFallbackUnreserved(current, writePosition, iMin);
        } else {
            ChunkBuffer chunkBufferBorrow = this.pool.borrow();
            chunkBufferBorrow.reserveEndGap(8);
            chunkBufferBorrow.setNext(current.cleanNext());
            BufferAppendKt.writeBufferAppend(chunkBufferBorrow, chunkBuffer, writePosition);
            set_head(chunkBufferBorrow);
        }
        current.release(this.pool);
    }

    private final void fixGapAfterReadFallbackUnreserved(ChunkBuffer current, int size, int overrun) {
        ChunkBuffer chunkBufferBorrow = this.pool.borrow();
        ChunkBuffer chunkBufferBorrow2 = this.pool.borrow();
        chunkBufferBorrow.reserveEndGap(8);
        chunkBufferBorrow2.reserveEndGap(8);
        chunkBufferBorrow.setNext(chunkBufferBorrow2);
        chunkBufferBorrow2.setNext(current.cleanNext());
        ChunkBuffer chunkBuffer = current;
        BufferAppendKt.writeBufferAppend(chunkBufferBorrow, chunkBuffer, size - overrun);
        BufferAppendKt.writeBufferAppend(chunkBufferBorrow2, chunkBuffer, overrun);
        set_head(chunkBufferBorrow);
        setTailRemaining(BuffersKt.remainingAll(chunkBufferBorrow2));
    }

    private final ChunkBuffer ensureNext(ChunkBuffer current, ChunkBuffer empty) {
        while (current != empty) {
            ChunkBuffer chunkBufferCleanNext = current.cleanNext();
            current.release(this.pool);
            if (chunkBufferCleanNext == null) {
                set_head(empty);
                setTailRemaining(0L);
                current = empty;
            } else {
                ChunkBuffer chunkBuffer = chunkBufferCleanNext;
                if (chunkBuffer.getWritePosition() > chunkBuffer.getReadPosition()) {
                    set_head(chunkBufferCleanNext);
                    setTailRemaining(this.tailRemaining - ((long) (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition())));
                    return chunkBufferCleanNext;
                }
                current = chunkBufferCleanNext;
            }
        }
        return doFill();
    }

    protected ChunkBuffer fill() {
        ChunkBuffer chunkBufferBorrow = this.pool.borrow();
        try {
            chunkBufferBorrow.reserveEndGap(8);
            ChunkBuffer chunkBuffer = chunkBufferBorrow;
            int iMo722fill62zg_DM = mo722fill62zg_DM(chunkBufferBorrow.getMemory(), chunkBufferBorrow.getWritePosition(), chunkBuffer.getLimit() - chunkBuffer.getWritePosition());
            if (iMo722fill62zg_DM == 0) {
                this.noMoreChunksAvailable = true;
                ChunkBuffer chunkBuffer2 = chunkBufferBorrow;
                if (chunkBuffer2.getWritePosition() <= chunkBuffer2.getReadPosition()) {
                    chunkBufferBorrow.release(this.pool);
                    return null;
                }
            }
            chunkBufferBorrow.commitWritten(iMo722fill62zg_DM);
            return chunkBufferBorrow;
        } catch (Throwable th) {
            chunkBufferBorrow.release(this.pool);
            throw th;
        }
    }

    protected final void markNoMoreChunksAvailable() {
        if (this.noMoreChunksAvailable) {
            return;
        }
        this.noMoreChunksAvailable = true;
    }

    private final ChunkBuffer doFill() {
        if (this.noMoreChunksAvailable) {
            return null;
        }
        ChunkBuffer chunkBufferFill = fill();
        if (chunkBufferFill == null) {
            this.noMoreChunksAvailable = true;
            return null;
        }
        appendView(chunkBufferFill);
        return chunkBufferFill;
    }

    private final void appendView(ChunkBuffer chunk) {
        ChunkBuffer chunkBufferFindTail = BuffersKt.findTail(this._head);
        if (chunkBufferFindTail == ChunkBuffer.INSTANCE.getEmpty()) {
            set_head(chunk);
            if (this.tailRemaining != 0) {
                throw new IllegalStateException("It should be no tail remaining bytes if current tail is EmptyBuffer");
            }
            ChunkBuffer next = chunk.getNext();
            setTailRemaining(next != null ? BuffersKt.remainingAll(next) : 0L);
            return;
        }
        chunkBufferFindTail.setNext(chunk);
        setTailRemaining(this.tailRemaining + BuffersKt.remainingAll(chunk));
    }

    public final ChunkBuffer prepareRead(int minSize) {
        ChunkBuffer head = getHead();
        return this.headEndExclusive - this.headPosition >= minSize ? head : prepareReadLoop(minSize, head);
    }

    public final ChunkBuffer prepareRead(int minSize, ChunkBuffer head) {
        Intrinsics.checkNotNullParameter(head, "head");
        return this.headEndExclusive - this.headPosition >= minSize ? head : prepareReadLoop(minSize, head);
    }

    private final Void minSizeIsTooBig(int minSize) {
        throw new IllegalStateException("minSize of " + minSize + " is too big (should be less than 8)");
    }

    private final void afterRead(ChunkBuffer head) {
        ChunkBuffer chunkBuffer = head;
        if (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition() == 0) {
            releaseHead$ktor_io(head);
        }
    }

    public final ChunkBuffer releaseHead$ktor_io(ChunkBuffer head) {
        Intrinsics.checkNotNullParameter(head, "head");
        ChunkBuffer chunkBufferCleanNext = head.cleanNext();
        if (chunkBufferCleanNext == null) {
            chunkBufferCleanNext = ChunkBuffer.INSTANCE.getEmpty();
        }
        set_head(chunkBufferCleanNext);
        ChunkBuffer chunkBuffer = chunkBufferCleanNext;
        setTailRemaining(this.tailRemaining - ((long) (chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition())));
        head.release(this.pool);
        return chunkBufferCleanNext;
    }

    public final boolean getEndOfInput() {
        if (getHeadEndExclusive() - getHeadPosition() == 0 && this.tailRemaining == 0) {
            return this.noMoreChunksAvailable || doFill() == null;
        }
        return false;
    }

    public final boolean prefetch$ktor_io(long min) {
        if (min <= 0) {
            return true;
        }
        long headEndExclusive = getHeadEndExclusive() - getHeadPosition();
        if (headEndExclusive >= min || headEndExclusive + this.tailRemaining >= min) {
            return true;
        }
        return doPrefetch(min);
    }

    public final long getRemaining() {
        return ((long) (getHeadEndExclusive() - getHeadPosition())) + this.tailRemaining;
    }

    public final boolean hasBytes(int n) {
        return ((long) (getHeadEndExclusive() - getHeadPosition())) + this.tailRemaining >= ((long) n);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int readUtf8(java.lang.Appendable r20, int r21, int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.core.Input.readUtf8(java.lang.Appendable, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final io.ktor.utils.io.core.internal.ChunkBuffer prepareReadLoop(int r10, io.ktor.utils.io.core.internal.ChunkBuffer r11) {
        /*
            r9 = this;
        L0:
            int r0 = r9.getHeadEndExclusive()
            int r1 = r9.getHeadPosition()
            int r0 = r0 - r1
            if (r0 < r10) goto Lc
            goto L6a
        Lc:
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = r11.getNext()
            r2 = 0
            if (r1 != 0) goto L1a
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = r9.doFill()
            if (r1 != 0) goto L1a
            return r2
        L1a:
            if (r0 != 0) goto L29
            io.ktor.utils.io.core.internal.ChunkBuffer$Companion r0 = io.ktor.utils.io.core.internal.ChunkBuffer.INSTANCE
            io.ktor.utils.io.core.internal.ChunkBuffer r0 = r0.getEmpty()
            if (r11 == r0) goto L27
            r9.releaseHead$ktor_io(r11)
        L27:
            r11 = r1
            goto L0
        L29:
            int r0 = r10 - r0
            r3 = r11
            io.ktor.utils.io.core.Buffer r3 = (io.ktor.utils.io.core.Buffer) r3
            r4 = r1
            io.ktor.utils.io.core.Buffer r4 = (io.ktor.utils.io.core.Buffer) r4
            int r0 = io.ktor.utils.io.core.BufferAppendKt.writeBufferAppend(r3, r4, r0)
            int r5 = r11.getWritePosition()
            r9.headEndExclusive = r5
            long r5 = r9.tailRemaining
            long r7 = (long) r0
            long r5 = r5 - r7
            r9.setTailRemaining(r5)
            int r5 = r4.getWritePosition()
            int r4 = r4.getReadPosition()
            if (r5 <= r4) goto L50
            r1.reserveStartGap(r0)
            goto L5f
        L50:
            r11.setNext(r2)
            io.ktor.utils.io.core.internal.ChunkBuffer r0 = r1.cleanNext()
            r11.setNext(r0)
            io.ktor.utils.io.pool.ObjectPool<io.ktor.utils.io.core.internal.ChunkBuffer> r0 = r9.pool
            r1.release(r0)
        L5f:
            int r0 = r3.getWritePosition()
            int r1 = r3.getReadPosition()
            int r0 = r0 - r1
            if (r0 < r10) goto L6b
        L6a:
            return r11
        L6b:
            r0 = 8
            if (r10 > r0) goto L70
            goto L0
        L70:
            r9.minSizeIsTooBig(r10)
            kotlin.KotlinNothingValueException r10 = new kotlin.KotlinNothingValueException
            r10.<init>()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.core.Input.prepareReadLoop(int, io.ktor.utils.io.core.internal.ChunkBuffer):io.ktor.utils.io.core.internal.ChunkBuffer");
    }
}
