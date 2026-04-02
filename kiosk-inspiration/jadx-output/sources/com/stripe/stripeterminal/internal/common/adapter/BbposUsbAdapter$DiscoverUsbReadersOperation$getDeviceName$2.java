package com.stripe.stripeterminal.internal.common.adapter;

import android.hardware.usb.UsbDevice;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/hardware/status/ReaderInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2", f = "BbposUsbAdapter.kt", i = {0, 1, 2, 3}, l = {WinError.ERROR_INVALID_PORT_ATTRIBUTES, WinError.ERROR_INVALID_PORT_ATTRIBUTES, WinError.ERROR_INVALID_QUOTA_LOWER, WinError.ERROR_INVALID_QUOTA_LOWER, WinError.ERROR_PROFILING_NOT_STARTED, WinError.ERROR_PROFILING_NOT_STARTED}, m = "invokeSuspend", n = {"$this$coroutineScope", "$this$coroutineScope", "$this$coroutineScope", "$this$coroutineScope"}, s = {"L$0", "L$0", "L$0", "L$0"})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Pair<? extends UsbDevice, ? extends ReaderInfo>>, Object> {
    final /* synthetic */ UsbDevice $device;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation this$0;
    final /* synthetic */ BbposUsbAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2(BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation, UsbDevice usbDevice, BbposUsbAdapter bbposUsbAdapter, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2> continuation) {
        super(2, continuation);
        this.this$0 = discoverUsbReadersOperation;
        this.$device = usbDevice;
        this.this$1 = bbposUsbAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2 bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2 = new BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2(this.this$0, this.$device, this.this$1, continuation);
        bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2.L$0 = obj;
        return bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Pair<? extends UsbDevice, ? extends ReaderInfo>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Pair<? extends UsbDevice, ReaderInfo>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Pair<? extends UsbDevice, ReaderInfo>> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[PHI: r1 r9
      0x0051: PHI (r1v11 kotlinx.coroutines.CoroutineScope) = (r1v8 kotlinx.coroutines.CoroutineScope), (r1v14 kotlinx.coroutines.CoroutineScope) binds: [B:24:0x0085, B:17:0x004a] A[DONT_GENERATE, DONT_INLINE]
      0x0051: PHI (r9v9 java.lang.Object) = (r9v8 java.lang.Object), (r9v0 java.lang.Object) binds: [B:24:0x0085, B:17:0x004a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3 A[Catch: all -> 0x0047, PHI: r1 r5 r6 r9
      0x00b3: PHI (r1v18 ??) = (r1v25 ??), (r1v26 ??) binds: [B:33:0x00b0, B:10:0x0032] A[DONT_GENERATE, DONT_INLINE]
      0x00b3: PHI (r5v8 com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation) = 
      (r5v5 com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation)
      (r5v10 com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation)
     binds: [B:33:0x00b0, B:10:0x0032] A[DONT_GENERATE, DONT_INLINE]
      0x00b3: PHI (r6v9 kotlinx.coroutines.CoroutineScope) = (r6v6 kotlinx.coroutines.CoroutineScope), (r6v12 kotlinx.coroutines.CoroutineScope) binds: [B:33:0x00b0, B:10:0x0032] A[DONT_GENERATE, DONT_INLINE]
      0x00b3: PHI (r9v15 java.lang.Object) = (r9v14 java.lang.Object), (r9v0 java.lang.Object) binds: [B:33:0x00b0, B:10:0x0032] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x0047, blocks: (B:10:0x0032, B:35:0x00b3, B:13:0x0043, B:32:0x00a1, B:29:0x0091), top: B:54:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0115 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v18, types: [com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
