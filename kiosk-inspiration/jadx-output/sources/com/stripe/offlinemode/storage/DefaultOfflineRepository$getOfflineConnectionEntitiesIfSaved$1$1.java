package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.stripeterminal.external.models.Reader;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0001*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Triple;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1", f = "DefaultOfflineRepository.kt", i = {0, 1, 1, 2, 2, 2}, l = {WinError.ERROR_WAKE_SYSTEM, WinError.ERROR_TRANSLATION_COMPLETE, WinError.ERROR_DBG_EXCEPTION_HANDLED}, m = "invokeSuspend", n = {"$this$runBlocking", "$this$runBlocking", "offlineReader", "$this$runBlocking", "offlineReader", "offlineConnection"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1", "L$2"})
final class DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Triple<? extends OfflineReader, ? extends OfflineConnection, ? extends OfflineLocation>>, Object> {
    final /* synthetic */ String $accountId;
    final /* synthetic */ Reader $reader;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1(DefaultOfflineRepository defaultOfflineRepository, String str, Reader reader, Continuation<? super DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$accountId = str;
        this.$reader = reader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1 defaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1 = new DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1(this.this$0, this.$accountId, this.$reader, continuation);
        defaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1.L$0 = obj;
        return defaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Triple<? extends OfflineReader, ? extends OfflineConnection, ? extends OfflineLocation>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Triple<OfflineReader, OfflineConnection, OfflineLocation>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Triple<OfflineReader, OfflineConnection, OfflineLocation>> continuation) {
        return ((DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0190  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
