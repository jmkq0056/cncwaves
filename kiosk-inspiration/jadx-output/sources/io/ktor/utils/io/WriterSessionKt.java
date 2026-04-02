package io.ktor.utils.io;

import io.ktor.utils.io.bits.Memory;
import io.ktor.utils.io.core.Buffer;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: WriterSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0002\u001a#\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a%\u0010\b\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0006H\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\r\u001a\u001d\u0010\u000e\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a\u001f\u0010\u0010\u001a\u0004\u0018\u00010\u0001*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001ao\u0010\u0012\u001a\u00020\u0006*\u00020\n2\b\b\u0002\u0010\u0005\u001a\u00020\u00062K\u0010\u0013\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00060\u0014H\u0086Hø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0004*\u00020\nH\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"writeBufferFallback", "Lio/ktor/utils/io/core/Buffer;", "writeBufferSuspend", "session", "Lio/ktor/utils/io/WriterSuspendSession;", "desiredSpace", "", "(Lio/ktor/utils/io/WriterSuspendSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "completeWriting", "", "Lio/ktor/utils/io/ByteWriteChannel;", "buffer", "written", "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "completeWritingFallback", "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestWriteBuffer", "(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "write", "block", "Lkotlin/Function3;", "Lio/ktor/utils/io/bits/Memory;", "Lkotlin/ParameterName;", "name", "freeSpace", "", "startOffset", "endExclusive", "(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeSessionFor", "ktor-io"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class WriterSessionKt {

    /* JADX INFO: renamed from: io.ktor.utils.io.WriterSessionKt$completeWritingFallback$1, reason: invalid class name */
    /* JADX INFO: compiled from: WriterSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.WriterSessionKt", f = "WriterSession.kt", i = {0}, l = {83}, m = "completeWritingFallback", n = {"buffer"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WriterSessionKt.completeWritingFallback(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.WriterSessionKt$write$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WriterSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
    @DebugMetadata(c = "io.ktor.utils.io.WriterSessionKt", f = "WriterSession.kt", i = {0, 0}, l = {22, 29, 29}, m = "write", n = {"$this$write", "block"}, s = {"L$0", "L$1"})
    static final class C06741 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06741(Continuation<? super C06741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WriterSessionKt.write(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.WriterSessionKt$writeBufferSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WriterSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.WriterSessionKt", f = "WriterSession.kt", i = {0, 0}, l = {93}, m = "writeBufferSuspend", n = {"session", "desiredSpace"}, s = {"L$0", "I$0"})
    static final class C06751 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06751(Continuation<? super C06751> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WriterSessionKt.writeBufferSuspend(null, 0, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(1:(1:(2:13|14)(2:15|40))(2:16|39))(1:17))(3:18|(0)|34)|21|(1:23)|24|37|25|26|(2:29|30)|34) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a8, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a9, code lost:
    
        r0.L$0 = r11;
        r0.L$1 = null;
        r0.label = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b3, code lost:
    
        if (completeWriting(r9, r12, r2, r0) != r1) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b7, code lost:
    
        throw r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object write(io.ktor.utils.io.ByteWriteChannel r9, int r10, kotlin.jvm.functions.Function3<? super io.ktor.utils.io.bits.Memory, ? super java.lang.Long, ? super java.lang.Long, java.lang.Integer> r11, kotlin.coroutines.Continuation<? super java.lang.Integer> r12) throws java.lang.Throwable {
        /*
            boolean r0 = r12 instanceof io.ktor.utils.io.WriterSessionKt.C06741
            if (r0 == 0) goto L14
            r0 = r12
            io.ktor.utils.io.WriterSessionKt$write$1 r0 = (io.ktor.utils.io.WriterSessionKt.C06741) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            io.ktor.utils.io.WriterSessionKt$write$1 r0 = new io.ktor.utils.io.WriterSessionKt$write$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L52
            if (r2 == r5) goto L45
            if (r2 == r4) goto L3d
            if (r2 == r3) goto L34
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L34:
            java.lang.Object r9 = r0.L$0
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lb7
        L3d:
            java.lang.Object r9 = r0.L$0
            java.lang.Integer r9 = (java.lang.Integer) r9
            kotlin.ResultKt.throwOnFailure(r12)
            goto La7
        L45:
            java.lang.Object r9 = r0.L$1
            r11 = r9
            kotlin.jvm.functions.Function3 r11 = (kotlin.jvm.functions.Function3) r11
            java.lang.Object r9 = r0.L$0
            io.ktor.utils.io.ByteWriteChannel r9 = (io.ktor.utils.io.ByteWriteChannel) r9
            kotlin.ResultKt.throwOnFailure(r12)
            goto L62
        L52:
            kotlin.ResultKt.throwOnFailure(r12)
            r0.L$0 = r9
            r0.L$1 = r11
            r0.label = r5
            java.lang.Object r12 = requestWriteBuffer(r9, r10, r0)
            if (r12 != r1) goto L62
            goto Lb5
        L62:
            io.ktor.utils.io.core.Buffer r12 = (io.ktor.utils.io.core.Buffer) r12
            if (r12 != 0) goto L6c
            io.ktor.utils.io.core.Buffer$Companion r10 = io.ktor.utils.io.core.Buffer.INSTANCE
            io.ktor.utils.io.core.Buffer r12 = r10.getEmpty()
        L6c:
            r10 = 0
            r2 = 0
            java.nio.ByteBuffer r5 = r12.getMemory()     // Catch: java.lang.Throwable -> La8
            io.ktor.utils.io.bits.Memory r5 = io.ktor.utils.io.bits.Memory.m541boximpl(r5)     // Catch: java.lang.Throwable -> La8
            int r6 = r12.getWritePosition()     // Catch: java.lang.Throwable -> La8
            long r6 = (long) r6     // Catch: java.lang.Throwable -> La8
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)     // Catch: java.lang.Throwable -> La8
            int r7 = r12.getLimit()     // Catch: java.lang.Throwable -> La8
            long r7 = (long) r7     // Catch: java.lang.Throwable -> La8
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r7)     // Catch: java.lang.Throwable -> La8
            java.lang.Object r11 = r11.invoke(r5, r6, r7)     // Catch: java.lang.Throwable -> La8
            java.lang.Number r11 = (java.lang.Number) r11     // Catch: java.lang.Throwable -> La8
            int r2 = r11.intValue()     // Catch: java.lang.Throwable -> La8
            r12.commitWritten(r2)     // Catch: java.lang.Throwable -> La8
            java.lang.Integer r11 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r2)     // Catch: java.lang.Throwable -> La8
            r0.L$0 = r11
            r0.L$1 = r10
            r0.label = r4
            java.lang.Object r9 = completeWriting(r9, r12, r2, r0)
            if (r9 != r1) goto La6
            goto Lb5
        La6:
            r9 = r11
        La7:
            return r9
        La8:
            r11 = move-exception
            r0.L$0 = r11
            r0.L$1 = r10
            r0.label = r3
            java.lang.Object r9 = completeWriting(r9, r12, r2, r0)
            if (r9 != r1) goto Lb6
        Lb5:
            return r1
        Lb6:
            r9 = r11
        Lb7:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.WriterSessionKt.write(io.ktor.utils.io.ByteWriteChannel, int, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Object write$$forInline(ByteWriteChannel byteWriteChannel, int i, Function3<? super Memory, ? super Long, ? super Long, Integer> function3, Continuation<? super Integer> continuation) {
        Buffer empty = (Buffer) requestWriteBuffer(byteWriteChannel, i, continuation);
        if (empty == null) {
            empty = Buffer.INSTANCE.getEmpty();
        }
        int iIntValue = 0;
        try {
            iIntValue = function3.invoke(Memory.m541boximpl(empty.getMemory()), Long.valueOf(empty.getWritePosition()), Long.valueOf(empty.getLimit())).intValue();
            empty.commitWritten(iIntValue);
            return Integer.valueOf(iIntValue);
        } finally {
            completeWriting(byteWriteChannel, empty, iIntValue, continuation);
        }
    }

    public static /* synthetic */ Object write$default(ByteWriteChannel byteWriteChannel, int i, Function3 function3, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        Buffer empty = (Buffer) requestWriteBuffer(byteWriteChannel, i, continuation);
        if (empty == null) {
            empty = Buffer.INSTANCE.getEmpty();
        }
        int iIntValue = 0;
        try {
            iIntValue = ((Number) function3.invoke(Memory.m541boximpl(empty.getMemory()), Long.valueOf(empty.getWritePosition()), Long.valueOf(empty.getLimit()))).intValue();
            empty.commitWritten(iIntValue);
            return Integer.valueOf(iIntValue);
        } finally {
            completeWriting(byteWriteChannel, empty, iIntValue, continuation);
        }
    }

    public static final Object requestWriteBuffer(ByteWriteChannel byteWriteChannel, int i, Continuation<? super Buffer> continuation) {
        WriterSuspendSession writerSuspendSessionWriteSessionFor = writeSessionFor(byteWriteChannel);
        if (writerSuspendSessionWriteSessionFor != null) {
            ChunkBuffer chunkBufferRequest = writerSuspendSessionWriteSessionFor.request(i);
            return chunkBufferRequest != null ? chunkBufferRequest : writeBufferSuspend(writerSuspendSessionWriteSessionFor, i, continuation);
        }
        return writeBufferFallback();
    }

    public static final Object completeWriting(ByteWriteChannel byteWriteChannel, Buffer buffer, int i, Continuation<? super Unit> continuation) {
        if (byteWriteChannel instanceof HasWriteSession) {
            ((HasWriteSession) byteWriteChannel).endWriteSession(i);
            return Unit.INSTANCE;
        }
        Object objCompleteWritingFallback = completeWritingFallback(byteWriteChannel, buffer, continuation);
        return objCompleteWritingFallback == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCompleteWritingFallback : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object completeWritingFallback(io.ktor.utils.io.ByteWriteChannel r4, io.ktor.utils.io.core.Buffer r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.utils.io.WriterSessionKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.WriterSessionKt$completeWritingFallback$1 r0 = (io.ktor.utils.io.WriterSessionKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.WriterSessionKt$completeWritingFallback$1 r0 = new io.ktor.utils.io.WriterSessionKt$completeWritingFallback$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.L$0
            r5 = r4
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r5 instanceof io.ktor.utils.io.core.internal.ChunkBuffer
            if (r6 == 0) goto L57
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r4 = r4.writeFully(r5, r0)
            if (r4 != r1) goto L49
            return r1
        L49:
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = (io.ktor.utils.io.core.internal.ChunkBuffer) r5
            io.ktor.utils.io.core.internal.ChunkBuffer$Companion r4 = io.ktor.utils.io.core.internal.ChunkBuffer.INSTANCE
            io.ktor.utils.io.pool.ObjectPool r4 = r4.getPool()
            r5.release(r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L57:
            java.lang.UnsupportedOperationException r4 = new java.lang.UnsupportedOperationException
            java.lang.String r5 = "Only ChunkBuffer instance is supported."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.WriterSessionKt.completeWritingFallback(io.ktor.utils.io.ByteWriteChannel, io.ktor.utils.io.core.Buffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object writeBufferSuspend(io.ktor.utils.io.WriterSuspendSession r4, int r5, kotlin.coroutines.Continuation<? super io.ktor.utils.io.core.Buffer> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.utils.io.WriterSessionKt.C06751
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.WriterSessionKt$writeBufferSuspend$1 r0 = (io.ktor.utils.io.WriterSessionKt.C06751) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.WriterSessionKt$writeBufferSuspend$1 r0 = new io.ktor.utils.io.WriterSessionKt$writeBufferSuspend$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            int r5 = r0.I$0
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.WriterSuspendSession r4 = (io.ktor.utils.io.WriterSuspendSession) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L48
        L30:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r4
            r0.I$0 = r5
            r0.label = r3
            java.lang.Object r6 = r4.tryAwait(r5, r0)
            if (r6 != r1) goto L48
            return r1
        L48:
            io.ktor.utils.io.core.internal.ChunkBuffer r5 = r4.request(r5)
            if (r5 == 0) goto L51
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5
            return r5
        L51:
            io.ktor.utils.io.core.internal.ChunkBuffer r4 = r4.request(r3)
            io.ktor.utils.io.core.Buffer r4 = (io.ktor.utils.io.core.Buffer) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.WriterSessionKt.writeBufferSuspend(io.ktor.utils.io.WriterSuspendSession, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Buffer writeBufferFallback() {
        ChunkBuffer chunkBufferBorrow = ChunkBuffer.INSTANCE.getPool().borrow();
        ChunkBuffer chunkBuffer = chunkBufferBorrow;
        chunkBuffer.resetForWrite();
        chunkBuffer.reserveEndGap(8);
        return chunkBufferBorrow;
    }

    private static final WriterSuspendSession writeSessionFor(ByteWriteChannel byteWriteChannel) {
        if (byteWriteChannel instanceof HasWriteSession) {
            return ((HasWriteSession) byteWriteChannel).beginWriteSession();
        }
        return null;
    }
}
