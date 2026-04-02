package io.ktor.utils.io.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.ktor.utils.io.bits.Memory;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.UnsafeKt;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InputArrays.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\b\u001a/\u0010\u0000\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\n\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0018\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001aj\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\b\u001a\u0082\u0001\u0010\u0019\u001a\u00020\t*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2`\u0010\u001b\u001a\\\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150\"H\u0082\bø\u0001\u0001\u001ar\u0010$\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\b\u001a\r\u0010&\u001a\u00020\u0015*\u00020\u0001H\u0082\b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006'"}, d2 = {"readAvailable", "", "Lio/ktor/utils/io/core/Input;", FirebaseAnalytics.Param.DESTINATION, "Lio/ktor/utils/io/bits/Memory;", "destinationOffset", "length", "readAvailable-UAd2zVI", "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)I", "", "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J", "dst", "Lio/ktor/utils/io/core/Buffer;", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "", "", "", "", "readFully", "", "readFully-UAd2zVI", "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)V", "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V", "readFullyBytesTemplate", "initialDstOffset", "readBlock", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "src", "dstOffset", "count", "Lkotlin/Function4;", "srcOffset", "readFullyTemplate", "componentSize", "requireNoRemaining", "ktor-io"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class InputArraysKt {
    public static /* synthetic */ void readFully$default(Input input, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        readFully(input, bArr, i, i2);
    }

    public static /* synthetic */ void readFully$default(Input input, short[] sArr, int i, int i2, int i3, Object obj) throws Throwable {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = sArr.length - i;
        }
        readFully(input, sArr, i, i2);
    }

    public static /* synthetic */ void readFully$default(Input input, int[] iArr, int i, int i2, int i3, Object obj) throws Throwable {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = iArr.length - i;
        }
        readFully(input, iArr, i, i2);
    }

    public static /* synthetic */ void readFully$default(Input input, long[] jArr, int i, int i2, int i3, Object obj) throws Throwable {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = jArr.length - i;
        }
        readFully(input, jArr, i, i2);
    }

    public static /* synthetic */ void readFully$default(Input input, float[] fArr, int i, int i2, int i3, Object obj) throws Throwable {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = fArr.length - i;
        }
        readFully(input, fArr, i, i2);
    }

    public static /* synthetic */ void readFully$default(Input input, double[] dArr, int i, int i2, int i3, Object obj) throws Throwable {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = dArr.length - i;
        }
        readFully(input, dArr, i, i2);
    }

    /* JADX INFO: renamed from: readFully-UAd2zVI, reason: not valid java name */
    public static final void m730readFullyUAd2zVI(Input readFully, ByteBuffer destination, int i, int i2) throws EOFException {
        Intrinsics.checkNotNullParameter(readFully, "$this$readFully");
        Intrinsics.checkNotNullParameter(destination, "destination");
        m731readFullyUAd2zVI(readFully, destination, i, i2);
    }

    /* JADX INFO: renamed from: readFully-UAd2zVI, reason: not valid java name */
    public static final void m731readFullyUAd2zVI(Input readFully, ByteBuffer destination, long j, long j2) throws EOFException {
        Intrinsics.checkNotNullParameter(readFully, "$this$readFully");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (m729readAvailableUAd2zVI(readFully, destination, j, j2) == j2) {
            return;
        }
        StringsKt.prematureEndOfStream(j2);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ int readAvailable$default(Input input, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length - i;
        }
        return readAvailable(input, bArr, i, i2);
    }

    public static /* synthetic */ int readAvailable$default(Input input, short[] sArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = sArr.length - i;
        }
        return readAvailable(input, sArr, i, i2);
    }

    public static /* synthetic */ int readAvailable$default(Input input, int[] iArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = iArr.length - i;
        }
        return readAvailable(input, iArr, i, i2);
    }

    public static /* synthetic */ int readAvailable$default(Input input, long[] jArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = jArr.length - i;
        }
        return readAvailable(input, jArr, i, i2);
    }

    public static /* synthetic */ int readAvailable$default(Input input, float[] fArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = fArr.length - i;
        }
        return readAvailable(input, fArr, i, i2);
    }

    public static /* synthetic */ int readAvailable$default(Input input, double[] dArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = dArr.length - i;
        }
        return readAvailable(input, dArr, i, i2);
    }

    /* JADX INFO: renamed from: readAvailable-UAd2zVI, reason: not valid java name */
    public static final int m728readAvailableUAd2zVI(Input readAvailable, ByteBuffer destination, int i, int i2) {
        Intrinsics.checkNotNullParameter(readAvailable, "$this$readAvailable");
        Intrinsics.checkNotNullParameter(destination, "destination");
        return (int) m729readAvailableUAd2zVI(readAvailable, destination, i, i2);
    }

    private static final void requireNoRemaining(int i) throws EOFException {
        if (i <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, byte[] dst, int i, int i2) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    int iMin = Math.min(i2, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                    BufferPrimitivesKt.readFully((Buffer) chunkBuffer, dst, i, iMin);
                    i2 -= iMin;
                    i += iMin;
                    if (i2 > 0) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                            if (chunkBufferPrepareReadFirstHead == null) {
                                break;
                            }
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
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, short[] dst, int i, int i2) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            int i3 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i3) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 2);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i2 -= iMin;
                            i += iMin;
                            i3 = i2 > 0 ? 2 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i3) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    } else {
                        chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                        if (i3 <= 0) {
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, int[] dst, int i, int i2) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            int i3 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i3) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 4);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i2 -= iMin;
                            i += iMin;
                            i3 = i2 > 0 ? 4 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i3) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    } else {
                        chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                        if (i3 <= 0) {
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, long[] dst, int i, int i2) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            int i3 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i3) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 8);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i2 -= iMin;
                            i += iMin;
                            i3 = i2 > 0 ? 8 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i3) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    } else {
                        chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                        if (i3 <= 0) {
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, float[] dst, int i, int i2) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            int i3 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i3) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 4);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i2 -= iMin;
                            i += iMin;
                            i3 = i2 > 0 ? 4 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i3) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    } else {
                        chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                        if (i3 <= 0) {
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, double[] dst, int i, int i2) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            int i3 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i3) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 8);
                            BufferPrimitivesKt.readFully(chunkBuffer2, dst, i, iMin);
                            i2 -= iMin;
                            i += iMin;
                            i3 = i2 > 0 ? 8 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i3) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i3);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    } else {
                        chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                        if (i3 <= 0) {
                            break;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        if (i2 <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i2);
        throw new KotlinNothingValueException();
    }

    public static final void readFully(Input input, Buffer dst, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead != null) {
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    int iMin = Math.min(i, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                    BufferPrimitivesKt.readFully(chunkBuffer, dst, iMin);
                    i -= iMin;
                    if (i > 0) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                            if (chunkBufferPrepareReadFirstHead == null) {
                                break;
                            }
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
            }
        }
        if (i <= 0) {
            return;
        }
        StringsKt.prematureEndOfStream(i);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void readFully$default(Input input, Buffer buffer, int i, int i2, Object obj) throws Throwable {
        if ((i2 & 2) != 0) {
            i = buffer.getLimit() - buffer.getWritePosition();
        }
        readFully(input, buffer, i);
    }

    public static final int readAvailable(Input input, byte[] dst, int i, int i2) throws Throwable {
        int i3;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i3 = i2;
        } else {
            i3 = i2;
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    int iMin = Math.min(i3, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                    BufferPrimitivesKt.readFully((Buffer) chunkBuffer, dst, i, iMin);
                    i3 -= iMin;
                    i += iMin;
                    if (i3 > 0) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                            if (chunkBufferPrepareReadFirstHead == null) {
                                break;
                            }
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
            }
        }
        return i2 - i3;
    }

    public static final int readAvailable(Input input, short[] dst, int i, int i2) throws Throwable {
        int i3;
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i3 = i2;
        } else {
            i3 = i2;
            int i4 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i4) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i3, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 2);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i3 -= iMin;
                            i += iMin;
                            i4 = i3 > 0 ? 2 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i4) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    }
                    chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                    if (i4 <= 0) {
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        return i2 - i3;
    }

    public static final int readAvailable(Input input, int[] dst, int i, int i2) throws Throwable {
        int i3;
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i3 = i2;
        } else {
            i3 = i2;
            int i4 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i4) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i3, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 4);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i3 -= iMin;
                            i += iMin;
                            i4 = i3 > 0 ? 4 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i4) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    }
                    chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                    if (i4 <= 0) {
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        return i2 - i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int readAvailable(io.ktor.utils.io.core.Input r8, long[] r9, int r10, int r11) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "dst"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r0 = 1
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadFirstHead(r8, r0)
            if (r1 != 0) goto L14
            r3 = r11
            goto L8b
        L14:
            r3 = r11
            r2 = r0
        L16:
            r4 = r1
            io.ktor.utils.io.core.Buffer r4 = (io.ktor.utils.io.core.Buffer) r4     // Catch: java.lang.Throwable -> L8d
            int r5 = r4.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            int r4 = r4.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r5 - r4
            r4 = 0
            r6 = 8
            if (r5 < r2) goto L5b
            r2 = r1
            io.ktor.utils.io.core.Buffer r2 = (io.ktor.utils.io.core.Buffer) r2     // Catch: java.lang.Throwable -> L50
            int r5 = r2.getWritePosition()     // Catch: java.lang.Throwable -> L50
            int r7 = r2.getReadPosition()     // Catch: java.lang.Throwable -> L50
            int r5 = r5 - r7
            int r5 = r5 / r6
            int r5 = java.lang.Math.min(r3, r5)     // Catch: java.lang.Throwable -> L50
            io.ktor.utils.io.core.BufferPrimitivesKt.readFully(r2, r9, r10, r5)     // Catch: java.lang.Throwable -> L50
            int r3 = r3 - r5
            int r10 = r10 + r5
            if (r3 <= 0) goto L41
            r2 = r6
            goto L42
        L41:
            r2 = r4
        L42:
            r5 = r1
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5     // Catch: java.lang.Throwable -> L8d
            int r7 = r5.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r5.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r7 - r5
            goto L5b
        L50:
            r9 = move-exception
            r10 = r1
            io.ktor.utils.io.core.Buffer r10 = (io.ktor.utils.io.core.Buffer) r10     // Catch: java.lang.Throwable -> L8d
            r10.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            r10.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            throw r9     // Catch: java.lang.Throwable -> L8d
        L5b:
            if (r5 != 0) goto L65
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadNextHead(r8, r1)     // Catch: java.lang.Throwable -> L62
            goto L7f
        L62:
            r9 = move-exception
            r0 = r4
            goto L8e
        L65:
            if (r5 < r2) goto L78
            r5 = r1
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5     // Catch: java.lang.Throwable -> L62
            int r7 = r5.getCapacity()     // Catch: java.lang.Throwable -> L62
            int r5 = r5.getLimit()     // Catch: java.lang.Throwable -> L62
            int r7 = r7 - r5
            if (r7 >= r6) goto L76
            goto L78
        L76:
            r5 = r1
            goto L7f
        L78:
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)     // Catch: java.lang.Throwable -> L62
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadFirstHead(r8, r2)     // Catch: java.lang.Throwable -> L62
        L7f:
            if (r5 != 0) goto L83
            r0 = r4
            goto L86
        L83:
            r1 = r5
            if (r2 > 0) goto L16
        L86:
            if (r0 == 0) goto L8b
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)
        L8b:
            int r11 = r11 - r3
            return r11
        L8d:
            r9 = move-exception
        L8e:
            if (r0 == 0) goto L93
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)
        L93:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.core.InputArraysKt.readAvailable(io.ktor.utils.io.core.Input, long[], int, int):int");
    }

    public static final int readAvailable(Input input, float[] dst, int i, int i2) throws Throwable {
        int i3;
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i3 = i2;
        } else {
            i3 = i2;
            int i4 = 1;
            while (true) {
                try {
                    int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                    if (writePosition >= i4) {
                        try {
                            ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                            int iMin = Math.min(i3, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / 4);
                            BufferPrimitivesKt.readFully((Buffer) chunkBuffer2, dst, i, iMin);
                            i3 -= iMin;
                            i += iMin;
                            i4 = i3 > 0 ? 4 : 0;
                            ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                            writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                        } finally {
                        }
                    }
                    if (writePosition == 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            }
                            throw th;
                        }
                    } else if (writePosition >= i4) {
                        ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                        if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                        } else {
                            chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                        }
                    } else {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                    }
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    }
                    chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                    if (i4 <= 0) {
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (z) {
                UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
            }
        }
        return i2 - i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int readAvailable(io.ktor.utils.io.core.Input r8, double[] r9, int r10, int r11) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "dst"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r0 = 1
            io.ktor.utils.io.core.internal.ChunkBuffer r1 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadFirstHead(r8, r0)
            if (r1 != 0) goto L14
            r3 = r11
            goto L8b
        L14:
            r3 = r11
            r2 = r0
        L16:
            r4 = r1
            io.ktor.utils.io.core.Buffer r4 = (io.ktor.utils.io.core.Buffer) r4     // Catch: java.lang.Throwable -> L8d
            int r5 = r4.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            int r4 = r4.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r5 - r4
            r4 = 0
            r6 = 8
            if (r5 < r2) goto L5b
            r2 = r1
            io.ktor.utils.io.core.Buffer r2 = (io.ktor.utils.io.core.Buffer) r2     // Catch: java.lang.Throwable -> L50
            int r5 = r2.getWritePosition()     // Catch: java.lang.Throwable -> L50
            int r7 = r2.getReadPosition()     // Catch: java.lang.Throwable -> L50
            int r5 = r5 - r7
            int r5 = r5 / r6
            int r5 = java.lang.Math.min(r3, r5)     // Catch: java.lang.Throwable -> L50
            io.ktor.utils.io.core.BufferPrimitivesKt.readFully(r2, r9, r10, r5)     // Catch: java.lang.Throwable -> L50
            int r3 = r3 - r5
            int r10 = r10 + r5
            if (r3 <= 0) goto L41
            r2 = r6
            goto L42
        L41:
            r2 = r4
        L42:
            r5 = r1
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5     // Catch: java.lang.Throwable -> L8d
            int r7 = r5.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r5.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            int r5 = r7 - r5
            goto L5b
        L50:
            r9 = move-exception
            r10 = r1
            io.ktor.utils.io.core.Buffer r10 = (io.ktor.utils.io.core.Buffer) r10     // Catch: java.lang.Throwable -> L8d
            r10.getWritePosition()     // Catch: java.lang.Throwable -> L8d
            r10.getReadPosition()     // Catch: java.lang.Throwable -> L8d
            throw r9     // Catch: java.lang.Throwable -> L8d
        L5b:
            if (r5 != 0) goto L65
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadNextHead(r8, r1)     // Catch: java.lang.Throwable -> L62
            goto L7f
        L62:
            r9 = move-exception
            r0 = r4
            goto L8e
        L65:
            if (r5 < r2) goto L78
            r5 = r1
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5     // Catch: java.lang.Throwable -> L62
            int r7 = r5.getCapacity()     // Catch: java.lang.Throwable -> L62
            int r5 = r5.getLimit()     // Catch: java.lang.Throwable -> L62
            int r7 = r7 - r5
            if (r7 >= r6) goto L76
            goto L78
        L76:
            r5 = r1
            goto L7f
        L78:
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)     // Catch: java.lang.Throwable -> L62
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = io.ktor.utils.io.core.internal.UnsafeKt.prepareReadFirstHead(r8, r2)     // Catch: java.lang.Throwable -> L62
        L7f:
            if (r5 != 0) goto L83
            r0 = r4
            goto L86
        L83:
            r1 = r5
            if (r2 > 0) goto L16
        L86:
            if (r0 == 0) goto L8b
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)
        L8b:
            int r11 = r11 - r3
            return r11
        L8d:
            r9 = move-exception
        L8e:
            if (r0 == 0) goto L93
            io.ktor.utils.io.core.internal.UnsafeKt.completeReadHead(r8, r1)
        L93:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.core.InputArraysKt.readAvailable(io.ktor.utils.io.core.Input, double[], int, int):int");
    }

    public static final int readAvailable(Input input, Buffer dst, int i) throws Throwable {
        int i2;
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            i2 = i;
        } else {
            i2 = i;
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                    int iMin = Math.min(i2, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                    BufferPrimitivesKt.readFully(chunkBuffer, dst, iMin);
                    i2 -= iMin;
                    if (i2 > 0) {
                        try {
                            chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                            if (chunkBufferPrepareReadFirstHead == null) {
                                break;
                            }
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
            }
        }
        return i - i2;
    }

    public static /* synthetic */ int readAvailable$default(Input input, Buffer buffer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = buffer.getLimit() - buffer.getWritePosition();
        }
        return readAvailable(input, buffer, i);
    }

    /* JADX INFO: renamed from: readAvailable-UAd2zVI, reason: not valid java name */
    public static final long m729readAvailableUAd2zVI(Input readAvailable, ByteBuffer byteBuffer, long j, long j2) throws Throwable {
        long j3;
        boolean z;
        Intrinsics.checkNotNullParameter(readAvailable, "$this$readAvailable");
        ByteBuffer destination = byteBuffer;
        Intrinsics.checkNotNullParameter(destination, "destination");
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(readAvailable, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            j3 = j2;
        } else {
            long j4 = j;
            j3 = j2;
            ChunkBuffer chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareReadNextHead;
                    int iMin = (int) Math.min(j3, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                    long j5 = iMin;
                    Memory.m544copyToJT6ljtQ(chunkBuffer.getMemory(), destination, chunkBuffer.getReadPosition(), j5, j4);
                    chunkBuffer.discardExact(iMin);
                    j3 -= j5;
                    j4 += j5;
                    if (j3 > 0) {
                        try {
                            chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(readAvailable, chunkBufferPrepareReadNextHead);
                            if (chunkBufferPrepareReadNextHead == null) {
                                break;
                            }
                            destination = byteBuffer;
                        } catch (Throwable th) {
                            th = th;
                            z = false;
                            if (z) {
                                UnsafeKt.completeReadHead(readAvailable, chunkBufferPrepareReadNextHead);
                            }
                            throw th;
                        }
                    } else {
                        UnsafeKt.completeReadHead(readAvailable, chunkBufferPrepareReadNextHead);
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                }
            }
        }
        long j6 = j2 - j3;
        if (j6 == 0 && readAvailable.getEndOfInput()) {
            return -1L;
        }
        return j6;
    }

    private static final int readFullyBytesTemplate(Input input, int i, int i2, Function3<? super Buffer, ? super Integer, ? super Integer, Unit> function3) throws Throwable {
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            return i2;
        }
        while (true) {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                int iMin = Math.min(i2, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                function3.invoke(chunkBuffer, Integer.valueOf(i), Integer.valueOf(iMin));
                i2 -= iMin;
                i += iMin;
                if (i2 <= 0) {
                    break;
                }
                try {
                    ChunkBuffer chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    }
                    chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                } catch (Throwable th) {
                    th = th;
                    z = false;
                    if (z) {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (z) {
            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
        }
        return i2;
    }

    private static final long readFullyBytesTemplate(Input input, long j, long j2, Function4<? super Memory, ? super Long, ? super Long, ? super Integer, Unit> function4) throws Throwable {
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            return j2;
        }
        while (true) {
            try {
                ChunkBuffer chunkBuffer = chunkBufferPrepareReadFirstHead;
                int iMin = (int) Math.min(j2, chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition());
                function4.invoke(Memory.m541boximpl(chunkBuffer.getMemory()), Long.valueOf(chunkBuffer.getReadPosition()), Long.valueOf(j), Integer.valueOf(iMin));
                chunkBuffer.discardExact(iMin);
                long j3 = iMin;
                j2 -= j3;
                j += j3;
                if (j2 <= 0) {
                    break;
                }
                try {
                    ChunkBuffer chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    if (chunkBufferPrepareReadNextHead == null) {
                        z = false;
                        break;
                    }
                    chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                } catch (Throwable th) {
                    th = th;
                    z = false;
                    if (z) {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (z) {
            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
        }
        return j2;
    }

    private static final int readFullyTemplate(Input input, int i, int i2, int i3, Function3<? super Buffer, ? super Integer, ? super Integer, Unit> function3) throws Throwable {
        ChunkBuffer chunkBuffer;
        ChunkBuffer chunkBufferPrepareReadNextHead;
        boolean z = true;
        ChunkBuffer chunkBufferPrepareReadFirstHead = UnsafeKt.prepareReadFirstHead(input, 1);
        if (chunkBufferPrepareReadFirstHead == null) {
            return i2;
        }
        int i4 = 1;
        while (true) {
            try {
                int writePosition = chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
                if (writePosition >= i4) {
                    try {
                        ChunkBuffer chunkBuffer2 = chunkBufferPrepareReadFirstHead;
                        int iMin = Math.min(i2, (chunkBuffer2.getWritePosition() - chunkBuffer2.getReadPosition()) / i3);
                        function3.invoke(chunkBuffer2, Integer.valueOf(i), Integer.valueOf(iMin));
                        i2 -= iMin;
                        i += iMin;
                        i4 = i2 > 0 ? i3 : 0;
                        ChunkBuffer chunkBuffer3 = chunkBufferPrepareReadFirstHead;
                        writePosition = chunkBuffer3.getWritePosition() - chunkBuffer3.getReadPosition();
                    } finally {
                    }
                }
                if (writePosition == 0) {
                    try {
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadNextHead(input, chunkBufferPrepareReadFirstHead);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (z) {
                            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        }
                        throw th;
                    }
                } else if (writePosition >= i4) {
                    ChunkBuffer chunkBuffer4 = chunkBufferPrepareReadFirstHead;
                    if (chunkBuffer4.getCapacity() - chunkBuffer4.getLimit() < 8) {
                        UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                        chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                    } else {
                        chunkBufferPrepareReadNextHead = chunkBufferPrepareReadFirstHead;
                    }
                } else {
                    UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
                    chunkBufferPrepareReadNextHead = UnsafeKt.prepareReadFirstHead(input, i4);
                }
                if (chunkBufferPrepareReadNextHead == null) {
                    z = false;
                    break;
                }
                chunkBufferPrepareReadFirstHead = chunkBufferPrepareReadNextHead;
                if (i4 <= 0) {
                    break;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (z) {
            UnsafeKt.completeReadHead(input, chunkBufferPrepareReadFirstHead);
        }
        return i2;
    }
}
