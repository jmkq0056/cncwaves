package io.ktor.utils.io.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.ktor.utils.io.bits.MemoryJvmKt;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.UnsafeKt;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Scanner.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0000\u001a,\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0080\bø\u0001\u0000\u001a<\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\bø\u0001\u0000\u001a\u0012\u0010\u0012\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u001a\u0010\u0015\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005\u001a\u001a\u0010\u0016\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e\u001a.\u0010\u0016\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u0001\u001a\"\u0010\u0017\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e\u001a6\u0010\u0017\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"discardUntilDelimiterImplMemory", "", "buffer", "Lio/ktor/utils/io/core/Buffer;", "delimiter", "", "discardUntilDelimitersImplMemory", "delimiter1", "delimiter2", "copyUntil", "predicate", "Lkotlin/Function1;", "", "dst", "Lio/ktor/utils/io/core/Output;", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "discardUntilDelimiter", "", "Lio/ktor/utils/io/core/Input;", "discardUntilDelimiters", "readUntilDelimiter", "readUntilDelimiters", "ktor-io"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ScannerKt {
    public static /* synthetic */ int readUntilDelimiter$default(Input input, byte b, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = bArr.length;
        }
        return readUntilDelimiter(input, b, bArr, i, i2);
    }

    public static /* synthetic */ int readUntilDelimiters$default(Input input, byte b, byte b2, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            i = 0;
        }
        int i4 = i;
        if ((i3 & 16) != 0) {
            i2 = bArr.length;
        }
        return readUntilDelimiters(input, b, b2, bArr, i4, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int readUntilDelimiters(io.ktor.utils.io.core.Input r8, byte r9, byte r10, byte[] r11, int r12, int r13) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "dst"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            if (r9 != r10) goto L11
            int r8 = readUntilDelimiter(r8, r9, r11, r12, r13)
            return r8
        L11:
            r1 = 1
            io.ktor.utils.io.core.internal.ChunkBuffer r0 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadFirstHead(r8, r1)
            if (r0 != 0) goto L1a
            r6 = r12
            goto L48
        L1a:
            r6 = r12
            r7 = r13
            r13 = r0
        L1d:
            r2 = r13
            io.ktor.utils.io.core.Buffer r2 = (io.ktor.utils.io.core.Buffer) r2     // Catch: java.lang.Throwable -> L4a
            r3 = r9
            r4 = r10
            r5 = r11
            int r9 = io.ktor.utils.io.core.ScannerJVMKt.readUntilDelimitersImpl(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L4a
            int r6 = r6 + r9
            int r7 = r7 - r9
            int r9 = r2.getWritePosition()     // Catch: java.lang.Throwable -> L4a
            int r10 = r2.getReadPosition()     // Catch: java.lang.Throwable -> L4a
            if (r9 <= r10) goto L34
            goto L45
        L34:
            if (r7 <= 0) goto L45
            io.ktor.utils.io.core.internal.ChunkBuffer r13 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadNextHead(r8, r13)     // Catch: java.lang.Throwable -> L41
            if (r13 != 0) goto L3d
            goto L48
        L3d:
            r9 = r3
            r10 = r4
            r11 = r5
            goto L1d
        L41:
            r0 = move-exception
            r9 = r0
            r1 = 0
            goto L4c
        L45:
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r13)
        L48:
            int r6 = r6 - r12
            return r6
        L4a:
            r0 = move-exception
            r9 = r0
        L4c:
            if (r1 == 0) goto L51
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r13)
        L51:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.core.ScannerKt.readUntilDelimiters(io.ktor.utils.io.core.Input, byte, byte, byte[], int, int):int");
    }

    public static final int discardUntilDelimiterImplMemory(Buffer buffer, byte b) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int readPosition = buffer.getReadPosition();
        int writePosition = buffer.getWritePosition();
        ByteBuffer memory = buffer.getMemory();
        int i = readPosition;
        while (i < writePosition && memory.get(i) != b) {
            i++;
        }
        buffer.discardUntilIndex$ktor_io(i);
        return i - readPosition;
    }

    public static final int discardUntilDelimitersImplMemory(Buffer buffer, byte b, byte b2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int readPosition = buffer.getReadPosition();
        int writePosition = buffer.getWritePosition();
        ByteBuffer memory = buffer.getMemory();
        int i = readPosition;
        while (i < writePosition) {
            byte b3 = memory.get(i);
            if (b3 == b || b3 == b2) {
                break;
            }
            i++;
        }
        buffer.discardUntilIndex$ktor_io(i);
        return i - readPosition;
    }

    public static final int copyUntil(Buffer buffer, Function1<? super Byte, Boolean> predicate, byte[] dst, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(dst, "dst");
        int readPosition = buffer.getReadPosition();
        int iMin = Math.min(buffer.getWritePosition(), i2 + readPosition);
        ByteBuffer memory = buffer.getMemory();
        int i3 = readPosition;
        while (true) {
            if (i3 >= iMin) {
                break;
            }
            if (predicate.invoke(Byte.valueOf(memory.get(i3))).booleanValue()) {
                iMin = i3;
                break;
            }
            i3++;
        }
        int i4 = iMin - readPosition;
        MemoryJvmKt.m561copyTo9zorpBc(memory, dst, readPosition, i4, i);
        return i4;
    }

    public static final int copyUntil(Buffer buffer, Function1<? super Byte, Boolean> predicate, Output dst) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(dst, "dst");
        int readPosition = buffer.getReadPosition();
        int writePosition = buffer.getWritePosition();
        ByteBuffer memory = buffer.getMemory();
        while (readPosition != writePosition && !predicate.invoke(Byte.valueOf(memory.get(readPosition))).booleanValue()) {
            readPosition++;
        }
        int readPosition2 = readPosition - buffer.getReadPosition();
        OutputKt.writeFully(dst, buffer, readPosition2);
        return readPosition2;
    }

    public static final long discardUntilDelimiter(Input input, byte b) throws Throwable {
        Intrinsics.checkNotNullParameter(input, "<this>");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        long j = 0;
        if (chunkBufferPrepareReadFirstHead == null) {
            return 0L;
        }
        do {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                int iDiscardUntilDelimiterImpl = ScannerJVMKt.discardUntilDelimiterImpl(chunkBuffer, b);
                j += (long) iDiscardUntilDelimiterImpl;
                if (iDiscardUntilDelimiterImpl > 0 && chunkBuffer.getWritePosition() <= chunkBuffer.getReadPosition()) {
                    try {
                        chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        }
                        throw th;
                    }
                } else {
                    UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    return j;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } while (chunkBufferPrepareReadFirstHead != null);
        return j;
    }

    public static final long discardUntilDelimiters(Input input, byte b, byte b2) throws Throwable {
        Intrinsics.checkNotNullParameter(input, "<this>");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        long j = 0;
        if (chunkBufferPrepareReadFirstHead == null) {
            return 0L;
        }
        do {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                int iDiscardUntilDelimitersImpl = ScannerJVMKt.discardUntilDelimitersImpl(chunkBuffer, b, b2);
                j += (long) iDiscardUntilDelimitersImpl;
                if (iDiscardUntilDelimitersImpl > 0 && chunkBuffer.getWritePosition() <= chunkBuffer.getReadPosition()) {
                    try {
                        chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        }
                        throw th;
                    }
                } else {
                    UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    return j;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } while (chunkBufferPrepareReadFirstHead != null);
        return j;
    }

    public static final int readUntilDelimiter(Input input, byte b, byte[] dst, int i, int i2) throws Throwable {
        int i3;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i3 = i;
        } else {
            i3 = i;
            do {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    int untilDelimiterImpl = ScannerJVMKt.readUntilDelimiterImpl(chunkBuffer, b, dst, i3, i2);
                    i3 += untilDelimiterImpl;
                    i2 -= untilDelimiterImpl;
                    if (i2 > 0 && chunkBuffer.getWritePosition() <= chunkBuffer.getReadPosition()) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } while (chunkBufferPrepareReadFirstHead != null);
        }
        return i3 - i;
    }

    public static final long readUntilDelimiter(Input input, byte b, Output dst) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        long untilDelimiterImpl = 0;
        if (chunkBufferPrepareReadFirstHead == null) {
            return 0L;
        }
        do {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                untilDelimiterImpl += (long) ScannerJVMKt.readUntilDelimiterImpl(chunkBuffer, b, dst);
                if (!(chunkBuffer.getWritePosition() > chunkBuffer.getReadPosition())) {
                    try {
                        chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        }
                        throw th;
                    }
                } else {
                    UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    return untilDelimiterImpl;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } while (chunkBufferPrepareReadFirstHead != null);
        return untilDelimiterImpl;
    }

    public static final long readUntilDelimiters(Input input, byte b, byte b2, Output dst) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        long untilDelimitersImpl = 0;
        if (chunkBufferPrepareReadFirstHead == null) {
            return 0L;
        }
        do {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                untilDelimitersImpl += (long) ScannerJVMKt.readUntilDelimitersImpl(chunkBuffer, b, b2, dst);
                if (!(chunkBuffer.getWritePosition() > chunkBuffer.getReadPosition())) {
                    try {
                        chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        }
                        throw th;
                    }
                } else {
                    UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    return untilDelimitersImpl;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } while (chunkBufferPrepareReadFirstHead != null);
        return untilDelimitersImpl;
    }
}
