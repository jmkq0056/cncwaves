package com.stripe.offlinemode.storage;

import com.stripe.proto.model.merchant.ApiLocationPb;
import com.sun.jna.platform.win32.WinError;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getSavedLocationsMap$1$1", f = "DefaultOfflineRepository.kt", i = {1, 1, 2, 2}, l = {WinError.ERROR_LOST_WRITEBEHIND_DATA_LOCAL_DISK_ERROR, 797, 798}, m = "invokeSuspend", n = {"destination$iv$iv", "offlineReader", "destination$iv$iv", "offlineReader"}, s = {"L$1", "L$3", "L$1", "L$3"})
final class DefaultOfflineRepository$getSavedLocationsMap$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Map<String, ? extends ApiLocationPb>>, Object> {
    final /* synthetic */ String $accountId;
    final /* synthetic */ List<String> $serials;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$getSavedLocationsMap$1$1(DefaultOfflineRepository defaultOfflineRepository, String str, List<String> list, Continuation<? super DefaultOfflineRepository$getSavedLocationsMap$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$accountId = str;
        this.$serials = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineRepository$getSavedLocationsMap$1$1(this.this$0, this.$accountId, this.$serials, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Map<String, ? extends ApiLocationPb>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Map<String, ApiLocationPb>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Map<String, ApiLocationPb>> continuation) {
        return ((DefaultOfflineRepository$getSavedLocationsMap$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
    
        if (r13 == r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0110, code lost:
    
        if (r13 == r0) goto L36;
     */
    /* JADX WARN: Path cross not found for [B:49:0x0138, B:41:0x0125], limit reached: 59 */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0142  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0110 -> B:37:0x0113). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0138 -> B:50:0x0139). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$getSavedLocationsMap$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
