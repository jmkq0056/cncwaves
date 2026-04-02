package com.stripe.offlinemode.storage;

import com.stripe.stripeterminal.external.models.Reader;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$discoverOfflineReaderList$1$1", f = "DefaultOfflineRepository.kt", i = {1, 1, 1, 1, 2, 2, 2, 2, 2, 2}, l = {354, 363, 366}, m = "invokeSuspend", n = {"offlineReaders", "serials", "deviceTypes", "destination$iv$iv", "offlineReaders", "serials", "deviceTypes", "locations", "destination$iv$iv", "it"}, s = {"L$0", "L$1", "L$2", "L$5", "L$0", "L$1", "L$2", "L$3", "L$5", "L$7"})
final class DefaultOfflineRepository$discoverOfflineReaderList$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Reader>>, Object> {
    final /* synthetic */ String $accountId;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$discoverOfflineReaderList$1$1(DefaultOfflineRepository defaultOfflineRepository, String str, Continuation<? super DefaultOfflineRepository$discoverOfflineReaderList$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$accountId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineRepository$discoverOfflineReaderList$1$1(this.this$0, this.$accountId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends Reader>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<Reader>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<Reader>> continuation) {
        return ((DefaultOfflineRepository$discoverOfflineReaderList$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0092, code lost:
    
        if (r2 == r1) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0155 -> B:36:0x015c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x01b0 -> B:44:0x01b1). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r57) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$discoverOfflineReaderList$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
