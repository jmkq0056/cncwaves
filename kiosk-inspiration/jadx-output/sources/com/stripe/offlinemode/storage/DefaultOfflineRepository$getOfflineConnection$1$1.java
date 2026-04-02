package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineConnection$1$1", f = "DefaultOfflineRepository.kt", i = {}, l = {482}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineRepository$getOfflineConnection$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OfflineConnection>, Object> {
    final /* synthetic */ long $connectionId;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$getOfflineConnection$1$1(DefaultOfflineRepository defaultOfflineRepository, long j, Continuation<? super DefaultOfflineRepository$getOfflineConnection$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$connectionId = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineRepository$getOfflineConnection$1$1(this.this$0, this.$connectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OfflineConnection> continuation) {
        return ((DefaultOfflineRepository$getOfflineConnection$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws TerminalException {
        OfflineConnection offlineConnectionDecrypt;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.this$0.offlineConnectionDao.getById(this.$connectionId, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        OfflineConnectionEntity offlineConnectionEntity = (OfflineConnectionEntity) obj;
        if (offlineConnectionEntity == null || (offlineConnectionDecrypt = this.this$0.offlineConnectionCipher.decrypt(offlineConnectionEntity)) == null) {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Finding offline connection with ID " + this.$connectionId + " returned null.", null, null, 12, null);
        }
        return offlineConnectionDecrypt;
    }
}
