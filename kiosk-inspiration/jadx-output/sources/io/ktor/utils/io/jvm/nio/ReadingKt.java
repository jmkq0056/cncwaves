package io.ktor.utils.io.jvm.nio;

import io.ktor.utils.io.ByteWriteChannel;
import java.nio.channels.Pipe;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Reading.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"copyTo", "", "Ljava/nio/channels/Pipe;", "ch", "Lio/ktor/utils/io/ByteWriteChannel;", "limit", "(Ljava/nio/channels/Pipe;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/nio/channels/ReadableByteChannel;", "(Ljava/nio/channels/ReadableByteChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ktor-io"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ReadingKt {

    /* JADX INFO: renamed from: io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$1, reason: invalid class name */
    /* JADX INFO: compiled from: Reading.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.jvm.nio.ReadingKt", f = "Reading.kt", i = {0, 0, 0, 0, 0, 0}, l = {42}, m = "copyTo", n = {"ch", "copied", "eof", "copy", "limit", "needFlush"}, s = {"L$0", "L$1", "L$2", "L$3", "J$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReadingKt.copyTo((ReadableByteChannel) null, (ByteWriteChannel) null, 0L, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009e -> B:31:0x00a1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object copyTo(final java.nio.channels.ReadableByteChannel r10, io.ktor.utils.io.ByteWriteChannel r11, final long r12, kotlin.coroutines.Continuation<? super java.lang.Long> r14) {
        /*
            boolean r0 = r14 instanceof io.ktor.utils.io.jvm.nio.ReadingKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r14
            io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$1 r0 = (io.ktor.utils.io.jvm.nio.ReadingKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$1 r0 = new io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$1
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L4a
            if (r2 != r3) goto L42
            int r10 = r0.I$0
            long r11 = r0.J$0
            java.lang.Object r13 = r0.L$3
            kotlin.jvm.functions.Function1 r13 = (kotlin.jvm.functions.Function1) r13
            java.lang.Object r2 = r0.L$2
            kotlin.jvm.internal.Ref$BooleanRef r2 = (kotlin.jvm.internal.Ref.BooleanRef) r2
            java.lang.Object r4 = r0.L$1
            kotlin.jvm.internal.Ref$LongRef r4 = (kotlin.jvm.internal.Ref.LongRef) r4
            java.lang.Object r5 = r0.L$0
            io.ktor.utils.io.ByteWriteChannel r5 = (io.ktor.utils.io.ByteWriteChannel) r5
            kotlin.ResultKt.throwOnFailure(r14)
            r7 = r4
            r4 = r13
            r12 = r11
            r11 = r5
            goto La1
        L42:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L4a:
            kotlin.ResultKt.throwOnFailure(r14)
            r4 = 0
            int r14 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r14 < 0) goto Lae
            boolean r14 = r10 instanceof java.nio.channels.SelectableChannel
            if (r14 == 0) goto L69
            r14 = r10
            java.nio.channels.SelectableChannel r14 = (java.nio.channels.SelectableChannel) r14
            boolean r14 = r14.isBlocking()
            if (r14 == 0) goto L61
            goto L69
        L61:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Non-blocking channels are not supported"
            r10.<init>(r11)
            throw r10
        L69:
            kotlin.jvm.internal.Ref$LongRef r7 = new kotlin.jvm.internal.Ref$LongRef
            r7.<init>()
            kotlin.jvm.internal.Ref$BooleanRef r9 = new kotlin.jvm.internal.Ref$BooleanRef
            r9.<init>()
            io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$copy$1 r4 = new io.ktor.utils.io.jvm.nio.ReadingKt$copyTo$copy$1
            r8 = r10
            r5 = r12
            r4.<init>()
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            boolean r10 = r11.getAutoFlush()
            r10 = r10 ^ r3
            r2 = r9
        L82:
            long r5 = r7.element
            int r14 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r14 >= 0) goto La7
            boolean r14 = r2.element
            if (r14 != 0) goto La7
            r0.L$0 = r11
            r0.L$1 = r7
            r0.L$2 = r2
            r0.L$3 = r4
            r0.J$0 = r12
            r0.I$0 = r10
            r0.label = r3
            java.lang.Object r14 = r11.write(r3, r4, r0)
            if (r14 != r1) goto La1
            return r1
        La1:
            if (r10 == 0) goto L82
            r11.flush()
            goto L82
        La7:
            long r10 = r7.element
            java.lang.Long r10 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r10)
            return r10
        Lae:
            r5 = r12
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "Limit shouldn't be negative: "
            r10.<init>(r11)
            java.lang.StringBuilder r10 = r10.append(r5)
            java.lang.String r10 = r10.toString()
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.String r10 = r10.toString()
            r11.<init>(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.jvm.nio.ReadingKt.copyTo(java.nio.channels.ReadableByteChannel, io.ktor.utils.io.ByteWriteChannel, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object copyTo$default(ReadableByteChannel readableByteChannel, ByteWriteChannel byteWriteChannel, long j, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Long.MAX_VALUE;
        }
        return copyTo(readableByteChannel, byteWriteChannel, j, (Continuation<? super Long>) continuation);
    }

    public static final Object copyTo(Pipe pipe, ByteWriteChannel byteWriteChannel, long j, Continuation<? super Long> continuation) {
        Pipe.SourceChannel sourceChannelSource = pipe.source();
        Intrinsics.checkNotNullExpressionValue(sourceChannelSource, "source()");
        return copyTo(sourceChannelSource, byteWriteChannel, j, continuation);
    }

    public static /* synthetic */ Object copyTo$default(Pipe pipe, ByteWriteChannel byteWriteChannel, long j, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Long.MAX_VALUE;
        }
        return copyTo(pipe, byteWriteChannel, j, (Continuation<? super Long>) continuation);
    }
}
