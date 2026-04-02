package com.stripe.jvmcore.offlinemode.repositories;

import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.OfflineStatusDetails;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: DefaultOfflineStatusRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "readerOfflineStatus", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "sdkOfflineStatus"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository$offlineStatusStateFlow$1", f = "DefaultOfflineStatusRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineStatusRepository$offlineStatusStateFlow$1 extends SuspendLambda implements Function3<OfflineStatusDetails, OfflineStatusDetails, Continuation<? super OfflineStatus>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DefaultOfflineStatusRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineStatusRepository$offlineStatusStateFlow$1(DefaultOfflineStatusRepository defaultOfflineStatusRepository, Continuation<? super DefaultOfflineStatusRepository$offlineStatusStateFlow$1> continuation) {
        super(3, continuation);
        this.this$0 = defaultOfflineStatusRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(OfflineStatusDetails offlineStatusDetails, OfflineStatusDetails offlineStatusDetails2, Continuation<? super OfflineStatus> continuation) {
        DefaultOfflineStatusRepository$offlineStatusStateFlow$1 defaultOfflineStatusRepository$offlineStatusStateFlow$1 = new DefaultOfflineStatusRepository$offlineStatusStateFlow$1(this.this$0, continuation);
        defaultOfflineStatusRepository$offlineStatusStateFlow$1.L$0 = offlineStatusDetails;
        defaultOfflineStatusRepository$offlineStatusStateFlow$1.L$1 = offlineStatusDetails2;
        return defaultOfflineStatusRepository$offlineStatusStateFlow$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return new OfflineStatus((OfflineStatusDetails) this.L$0, this.this$0.orDefault((OfflineStatusDetails) this.L$1));
    }
}
