package io.ktor.websocket;

import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.WinUser;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: RawWebSocketCommon.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "io.ktor.websocket.RawWebSocketCommon$readerJob$1", f = "RawWebSocketCommon.kt", i = {2, 3}, l = {88, WinUser.SM_CXPADDEDBORDER, XAttr.ENOTSUP, 99}, m = "invokeSuspend", n = {"cause", "cause"}, s = {"L$0", "L$0"})
final class RawWebSocketCommon$readerJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ RawWebSocketCommon this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RawWebSocketCommon$readerJob$1(RawWebSocketCommon rawWebSocketCommon, Continuation<? super RawWebSocketCommon$readerJob$1> continuation) {
        super(2, continuation);
        this.this$0 = rawWebSocketCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RawWebSocketCommon$readerJob$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RawWebSocketCommon$readerJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067 A[Catch: all -> 0x003a, CancellationException -> 0x003c, ProtocolViolationException -> 0x003f, FrameTooBigException -> 0x0042, ChannelIOException -> 0x00a5, EOFException | ClosedReceiveChannelException -> 0x00b0, EOFException | ClosedReceiveChannelException -> 0x00b0, PHI: r11
      0x0067: PHI (r11v17 java.lang.Object) = (r11v22 java.lang.Object), (r11v0 java.lang.Object) binds: [B:31:0x0063, B:19:0x0036] A[DONT_GENERATE, DONT_INLINE], TryCatch #5 {EOFException | ClosedReceiveChannelException -> 0x00b0, blocks: (B:18:0x0032, B:30:0x0048, B:30:0x0048, B:33:0x0067, B:33:0x0067, B:35:0x0073, B:35:0x0073, B:39:0x0085, B:39:0x0085, B:38:0x007d, B:38:0x007d, B:40:0x0088, B:40:0x0088, B:19:0x0036), top: B:64:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0073 A[Catch: all -> 0x003a, CancellationException -> 0x003c, ProtocolViolationException -> 0x003f, FrameTooBigException -> 0x0042, ChannelIOException -> 0x00a5, EOFException | ClosedReceiveChannelException -> 0x00b0, EOFException | ClosedReceiveChannelException -> 0x00b0, TryCatch #5 {EOFException | ClosedReceiveChannelException -> 0x00b0, blocks: (B:18:0x0032, B:30:0x0048, B:30:0x0048, B:33:0x0067, B:33:0x0067, B:35:0x0073, B:35:0x0073, B:39:0x0085, B:39:0x0085, B:38:0x007d, B:38:0x007d, B:40:0x0088, B:40:0x0088, B:19:0x0036), top: B:64:0x000b }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0097 -> B:30:0x0048). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.RawWebSocketCommon$readerJob$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
