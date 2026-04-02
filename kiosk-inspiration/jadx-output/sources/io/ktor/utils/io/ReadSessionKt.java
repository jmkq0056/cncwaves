package io.ktor.utils.io;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.jna.platform.win32.WinError;
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
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: ReadSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001ao\u0010\b\u001a\u00020\u0006*\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00062K\u0010\n\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00060\u000bH\u0086Hø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a\u000e\u0010\u0014\u001a\u0004\u0018\u00010\u0015*\u00020\u0002H\u0002\u001a\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a\u001d\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a\u001f\u0010\u001a\u001a\u0004\u0018\u00010\u0004*\u00020\u00152\u0006\u0010\t\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"completeReadingFromBuffer", "", "Lio/ktor/utils/io/ByteReadChannel;", "buffer", "Lio/ktor/utils/io/core/Buffer;", "bytesRead", "", "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "read", "desiredSize", "block", "Lkotlin/Function3;", "Lio/ktor/utils/io/bits/Memory;", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.SOURCE, "", "start", "endExclusive", "(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readSessionFor", "Lio/ktor/utils/io/SuspendableReadSession;", "requestBuffer", "(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestBufferFallback", "Lio/ktor/utils/io/core/internal/ChunkBuffer;", "requestBufferSuspend", "(Lio/ktor/utils/io/SuspendableReadSession;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ktor-io"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ReadSessionKt {

    /* JADX INFO: renamed from: io.ktor.utils.io.ReadSessionKt$read$1, reason: invalid class name */
    /* JADX INFO: compiled from: ReadSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
    @DebugMetadata(c = "io.ktor.utils.io.ReadSessionKt", f = "ReadSession.kt", i = {0, 0, 1, 1, 1, 2}, l = {24, 28, 31}, m = "read", n = {"$this$read", "block", "$this$read", "buffer", "bytesRead", "cause"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReadSessionKt.read(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ReadSessionKt$requestBufferFallback$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReadSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ReadSessionKt", f = "ReadSession.kt", i = {0}, l = {WinError.ERROR_IS_JOIN_TARGET}, m = "requestBufferFallback", n = {"chunk"}, s = {"L$0"})
    static final class C06721 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06721(Continuation<? super C06721> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReadSessionKt.requestBufferFallback(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ReadSessionKt$requestBufferSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ReadSession.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ReadSessionKt", f = "ReadSession.kt", i = {0}, l = {WinError.ERROR_NO_VOLUME_LABEL}, m = "requestBufferSuspend", n = {"$this$requestBufferSuspend"}, s = {"L$0"})
    static final class C06731 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06731(Continuation<? super C06731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ReadSessionKt.requestBufferSuspend(null, 0, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(1:(1:(2:13|14)(2:15|40))(5:16|43|17|33|34))(1:21))(3:22|(0)|39)|25|(1:27)(1:28)|41|29|(3:32|33|34)|39) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b2, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
    
        r10 = r8;
        r8 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
    
        throw r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object read(io.ktor.utils.io.ByteReadChannel r8, int r9, kotlin.jvm.functions.Function3<? super io.ktor.utils.io.bits.Memory, ? super java.lang.Long, ? super java.lang.Long, java.lang.Integer> r10, kotlin.coroutines.Continuation<? super java.lang.Integer> r11) throws java.lang.Throwable {
        /*
            boolean r0 = r11 instanceof io.ktor.utils.io.ReadSessionKt.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            io.ktor.utils.io.ReadSessionKt$read$1 r0 = (io.ktor.utils.io.ReadSessionKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            io.ktor.utils.io.ReadSessionKt$read$1 r0 = new io.ktor.utils.io.ReadSessionKt$read$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L5b
            if (r2 == r5) goto L4e
            if (r2 == r4) goto L3d
            if (r2 == r3) goto L34
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$0
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lc5
        L3d:
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$1
            io.ktor.utils.io.core.Buffer r9 = (io.ktor.utils.io.core.Buffer) r9
            java.lang.Object r10 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r10 = (io.ktor.utils.io.ByteReadChannel) r10
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L4b
            goto Lad
        L4b:
            r8 = move-exception
            goto Lb6
        L4e:
            java.lang.Object r8 = r0.L$1
            r10 = r8
            kotlin.jvm.functions.Function3 r10 = (kotlin.jvm.functions.Function3) r10
            java.lang.Object r8 = r0.L$0
            io.ktor.utils.io.ByteReadChannel r8 = (io.ktor.utils.io.ByteReadChannel) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L6b
        L5b:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r8
            r0.L$1 = r10
            r0.label = r5
            java.lang.Object r11 = requestBuffer(r8, r9, r0)
            if (r11 != r1) goto L6b
            goto Lc4
        L6b:
            io.ktor.utils.io.core.Buffer r11 = (io.ktor.utils.io.core.Buffer) r11
            if (r11 != 0) goto L76
            io.ktor.utils.io.core.Buffer$Companion r9 = io.ktor.utils.io.core.Buffer.INSTANCE
            io.ktor.utils.io.core.Buffer r9 = r9.getEmpty()
            goto L77
        L76:
            r9 = r11
        L77:
            java.nio.ByteBuffer r11 = r9.getMemory()     // Catch: java.lang.Throwable -> Lb2
            io.ktor.utils.io.bits.Memory r11 = io.ktor.utils.io.bits.Memory.m541boximpl(r11)     // Catch: java.lang.Throwable -> Lb2
            int r2 = r9.getReadPosition()     // Catch: java.lang.Throwable -> Lb2
            long r5 = (long) r2     // Catch: java.lang.Throwable -> Lb2
            java.lang.Long r2 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)     // Catch: java.lang.Throwable -> Lb2
            int r5 = r9.getWritePosition()     // Catch: java.lang.Throwable -> Lb2
            long r5 = (long) r5     // Catch: java.lang.Throwable -> Lb2
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)     // Catch: java.lang.Throwable -> Lb2
            java.lang.Object r10 = r10.invoke(r11, r2, r5)     // Catch: java.lang.Throwable -> Lb2
            java.lang.Number r10 = (java.lang.Number) r10     // Catch: java.lang.Throwable -> Lb2
            int r10 = r10.intValue()     // Catch: java.lang.Throwable -> Lb2
            r0.L$0 = r8     // Catch: java.lang.Throwable -> Lb2
            r0.L$1 = r9     // Catch: java.lang.Throwable -> Lb2
            r0.I$0 = r10     // Catch: java.lang.Throwable -> Lb2
            r0.label = r4     // Catch: java.lang.Throwable -> Lb2
            java.lang.Object r11 = completeReadingFromBuffer(r8, r9, r10, r0)     // Catch: java.lang.Throwable -> Lb2
            if (r11 != r1) goto Laa
            goto Lc4
        Laa:
            r7 = r10
            r10 = r8
            r8 = r7
        Lad:
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)     // Catch: java.lang.Throwable -> L4b
            return r8
        Lb2:
            r10 = move-exception
            r7 = r10
            r10 = r8
            r8 = r7
        Lb6:
            r0.L$0 = r8
            r11 = 0
            r0.L$1 = r11
            r0.label = r3
            r11 = 0
            java.lang.Object r9 = completeReadingFromBuffer(r10, r9, r11, r0)
            if (r9 != r1) goto Lc5
        Lc4:
            return r1
        Lc5:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ReadSessionKt.read(io.ktor.utils.io.ByteReadChannel, int, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final Object read$$forInline(ByteReadChannel byteReadChannel, int i, Function3<? super Memory, ? super Long, ? super Long, Integer> function3, Continuation<? super Integer> continuation) {
        Buffer empty = (Buffer) requestBuffer(byteReadChannel, i, continuation);
        if (empty == null) {
            empty = Buffer.INSTANCE.getEmpty();
        }
        try {
            int iIntValue = function3.invoke(Memory.m541boximpl(empty.getMemory()), Long.valueOf(empty.getReadPosition()), Long.valueOf(empty.getWritePosition())).intValue();
            completeReadingFromBuffer(byteReadChannel, empty, iIntValue, continuation);
            return Integer.valueOf(iIntValue);
        } catch (Throwable th) {
            completeReadingFromBuffer(byteReadChannel, empty, 0, continuation);
            throw th;
        }
    }

    public static /* synthetic */ Object read$default(ByteReadChannel byteReadChannel, int i, Function3 function3, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1;
        }
        Buffer empty = (Buffer) requestBuffer(byteReadChannel, i, continuation);
        if (empty == null) {
            empty = Buffer.INSTANCE.getEmpty();
        }
        try {
            int iIntValue = ((Number) function3.invoke(Memory.m541boximpl(empty.getMemory()), Long.valueOf(empty.getReadPosition()), Long.valueOf(empty.getWritePosition()))).intValue();
            completeReadingFromBuffer(byteReadChannel, empty, iIntValue, continuation);
            return Integer.valueOf(iIntValue);
        } catch (Throwable th) {
            completeReadingFromBuffer(byteReadChannel, empty, 0, continuation);
            throw th;
        }
    }

    public static final Object requestBuffer(ByteReadChannel byteReadChannel, int i, Continuation<? super Buffer> continuation) {
        SuspendableReadSession suspendableReadSessionStartReadSession;
        if (byteReadChannel instanceof SuspendableReadSession) {
            suspendableReadSessionStartReadSession = (SuspendableReadSession) byteReadChannel;
        } else {
            suspendableReadSessionStartReadSession = byteReadChannel instanceof HasReadSession ? ((HasReadSession) byteReadChannel).startReadSession() : null;
        }
        if (suspendableReadSessionStartReadSession != null) {
            ChunkBuffer chunkBufferRequest = suspendableReadSessionStartReadSession.request(RangesKt.coerceAtMost(i, 8));
            return chunkBufferRequest != null ? chunkBufferRequest : requestBufferSuspend(suspendableReadSessionStartReadSession, i, continuation);
        }
        return requestBufferFallback(byteReadChannel, i, continuation);
    }

    public static final Object completeReadingFromBuffer(ByteReadChannel byteReadChannel, Buffer buffer, int i, Continuation<? super Unit> continuation) {
        if (i < 0) {
            throw new IllegalStateException(("bytesRead shouldn't be negative: " + i).toString());
        }
        SuspendableReadSession sessionFor = readSessionFor(byteReadChannel);
        if (sessionFor != null) {
            sessionFor.discard(i);
            if (byteReadChannel instanceof HasReadSession) {
                ((HasReadSession) byteReadChannel).endReadSession();
            }
            return Unit.INSTANCE;
        }
        if ((buffer instanceof ChunkBuffer) && buffer != ChunkBuffer.INSTANCE.getEmpty()) {
            ((ChunkBuffer) buffer).release(ChunkBuffer.INSTANCE.getPool());
            Object objDiscard = byteReadChannel.discard(i, continuation);
            return objDiscard == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDiscard : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object requestBufferSuspend(io.ktor.utils.io.SuspendableReadSession r4, int r5, kotlin.coroutines.Continuation<? super io.ktor.utils.io.core.Buffer> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.utils.io.ReadSessionKt.C06731
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.ReadSessionKt$requestBufferSuspend$1 r0 = (io.ktor.utils.io.ReadSessionKt.C06731) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.ReadSessionKt$requestBufferSuspend$1 r0 = new io.ktor.utils.io.ReadSessionKt$requestBufferSuspend$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.SuspendableReadSession r4 = (io.ktor.utils.io.SuspendableReadSession) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.await(r5, r0)
            if (r5 != r1) goto L44
            return r1
        L44:
            io.ktor.utils.io.core.internal.ChunkBuffer r4 = r4.request(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ReadSessionKt.requestBufferSuspend(io.ktor.utils.io.SuspendableReadSession, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object requestBufferFallback(io.ktor.utils.io.ByteReadChannel r13, int r14, kotlin.coroutines.Continuation<? super io.ktor.utils.io.core.internal.ChunkBuffer> r15) {
        /*
            boolean r0 = r15 instanceof io.ktor.utils.io.ReadSessionKt.C06721
            if (r0 == 0) goto L14
            r0 = r15
            io.ktor.utils.io.ReadSessionKt$requestBufferFallback$1 r0 = (io.ktor.utils.io.ReadSessionKt.C06721) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r15 = r0.label
            int r15 = r15 - r2
            r0.label = r15
            goto L19
        L14:
            io.ktor.utils.io.ReadSessionKt$requestBufferFallback$1 r0 = new io.ktor.utils.io.ReadSessionKt$requestBufferFallback$1
            r0.<init>(r15)
        L19:
            r11 = r0
            java.lang.Object r15 = r11.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r13 = r11.L$0
            io.ktor.utils.io.core.internal.ChunkBuffer r13 = (io.ktor.utils.io.core.internal.ChunkBuffer) r13
            kotlin.ResultKt.throwOnFailure(r15)
            goto L6f
        L2f:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L37:
            kotlin.ResultKt.throwOnFailure(r15)
            io.ktor.utils.io.core.internal.ChunkBuffer$Companion r15 = io.ktor.utils.io.core.internal.ChunkBuffer.INSTANCE
            io.ktor.utils.io.pool.ObjectPool r15 = r15.getPool()
            java.lang.Object r15 = r15.borrow()
            io.ktor.utils.io.core.internal.ChunkBuffer r15 = (io.ktor.utils.io.core.internal.ChunkBuffer) r15
            r1 = r2
            java.nio.ByteBuffer r2 = r15.getMemory()
            int r3 = r15.getWritePosition()
            long r3 = (long) r3
            long r7 = (long) r14
            r14 = r15
            io.ktor.utils.io.core.Buffer r14 = (io.ktor.utils.io.core.Buffer) r14
            int r5 = r14.getLimit()
            int r14 = r14.getWritePosition()
            int r5 = r5 - r14
            long r9 = (long) r5
            r11.L$0 = r15
            r11.label = r1
            r5 = 0
            r1 = r13
            java.lang.Object r13 = r1.mo531peekTolBXzO7A(r2, r3, r5, r7, r9, r11)
            if (r13 != r0) goto L6c
            return r0
        L6c:
            r12 = r15
            r15 = r13
            r13 = r12
        L6f:
            java.lang.Number r15 = (java.lang.Number) r15
            long r14 = r15.longValue()
            int r14 = (int) r14
            r13.commitWritten(r14)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ReadSessionKt.requestBufferFallback(io.ktor.utils.io.ByteReadChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final SuspendableReadSession readSessionFor(ByteReadChannel byteReadChannel) {
        if (byteReadChannel instanceof HasReadSession) {
            return ((HasReadSession) byteReadChannel).startReadSession();
        }
        return null;
    }
}
