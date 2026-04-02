package com.stripe.offlinemode.storage;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1", f = "DefaultOfflineRepository.kt", i = {0, 2}, l = {823, 826, 829, 844}, m = "invokeSuspend", n = {"$this$runBlocking", "offlineReader"}, s = {"L$0", "L$2"})
final class DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $accountId;
    final /* synthetic */ String $locationId;
    final /* synthetic */ String $readerSerial;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1(String str, DefaultOfflineRepository defaultOfflineRepository, String str2, String str3, Continuation<? super DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1> continuation) {
        super(2, continuation);
        this.$locationId = str;
        this.this$0 = defaultOfflineRepository;
        this.$readerSerial = str2;
        this.$accountId = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1 defaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1 = new DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1(this.$locationId, this.this$0, this.$readerSerial, this.$accountId, continuation);
        defaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1.L$0 = obj;
        return defaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x014c, code lost:
    
        if (r11 == r0) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0114  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
