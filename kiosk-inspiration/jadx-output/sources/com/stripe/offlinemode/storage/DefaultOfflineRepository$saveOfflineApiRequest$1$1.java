package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
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
import org.apache.http.HttpStatus;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$saveOfflineApiRequest$1$1", f = "DefaultOfflineRepository.kt", i = {}, l = {396, HttpStatus.SC_CONFLICT}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineRepository$saveOfflineApiRequest$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
    final /* synthetic */ OfflineApiRequest $offlineApiRequest;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$saveOfflineApiRequest$1$1(DefaultOfflineRepository defaultOfflineRepository, OfflineApiRequest offlineApiRequest, Continuation<? super DefaultOfflineRepository$saveOfflineApiRequest$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$offlineApiRequest = offlineApiRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultOfflineRepository$saveOfflineApiRequest$1$1(this.this$0, this.$offlineApiRequest, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
        return ((DefaultOfflineRepository$saveOfflineApiRequest$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws TerminalException {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.this$0.validatePendingCreateRequirement(this.$offlineApiRequest, this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        if (((Boolean) obj).booleanValue()) {
            throw new TerminalException(TerminalErrorCode.OFFLINE_PAYMENT_INTENT_NOT_FOUND, "Cannot confirm offline payment without a corresponding create request.", null, null, 12, null);
        }
        this.label = 2;
        Object objInsert = this.this$0.offlineApiRequestDao.insert(this.this$0.offlineApiRequestCipher.encrypt(this.$offlineApiRequest), this);
        return objInsert == coroutine_suspended ? coroutine_suspended : objInsert;
    }
}
