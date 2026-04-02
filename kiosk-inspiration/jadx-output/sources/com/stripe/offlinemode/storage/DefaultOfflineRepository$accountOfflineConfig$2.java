package com.stripe.offlinemode.storage;

import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$accountOfflineConfig$2", f = "DefaultOfflineRepository.kt", i = {0}, l = {WinError.ERROR_META_EXPANSION_TOO_LONG, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
final class DefaultOfflineRepository$accountOfflineConfig$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ OfflineConfigPb.AccountOfflineConfigPb $value;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$accountOfflineConfig$2(DefaultOfflineRepository defaultOfflineRepository, OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb, Continuation<? super DefaultOfflineRepository$accountOfflineConfig$2> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$value = accountOfflineConfigPb;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineRepository$accountOfflineConfig$2 defaultOfflineRepository$accountOfflineConfig$2 = new DefaultOfflineRepository$accountOfflineConfig$2(this.this$0, this.$value, continuation);
        defaultOfflineRepository$accountOfflineConfig$2.L$0 = obj;
        return defaultOfflineRepository$accountOfflineConfig$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DefaultOfflineRepository$accountOfflineConfig$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a4, code lost:
    
        if (r13 == r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$accountOfflineConfig$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
