package com.stripe.stripeterminal.internal.common.connectivity;

import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: DefaultNetworkConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository$networkConnectivityState$1", f = "DefaultNetworkConnectivityRepository.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
final class DefaultNetworkConnectivityRepository$networkConnectivityState$1 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultNetworkConnectivityRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultNetworkConnectivityRepository$networkConnectivityState$1(DefaultNetworkConnectivityRepository defaultNetworkConnectivityRepository, Continuation<? super DefaultNetworkConnectivityRepository$networkConnectivityState$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultNetworkConnectivityRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultNetworkConnectivityRepository$networkConnectivityState$1 defaultNetworkConnectivityRepository$networkConnectivityState$1 = new DefaultNetworkConnectivityRepository$networkConnectivityState$1(this.this$0, continuation);
        defaultNetworkConnectivityRepository$networkConnectivityState$1.L$0 = obj;
        return defaultNetworkConnectivityRepository$networkConnectivityState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
        return ((DefaultNetworkConnectivityRepository$networkConnectivityState$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            final ?? r3 = new NetworkConnectivityCallback() { // from class: com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1
                @Override // com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityCallback
                public void onAvailable(int uniqueId) {
                    linkedHashSet.add(Integer.valueOf(uniqueId));
                    producerScope.mo2332trySendJP2dKIU(Boolean.valueOf(!linkedHashSet.isEmpty()));
                }

                @Override // com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityCallback
                public void onLost(int uniqueId) {
                    linkedHashSet.remove(Integer.valueOf(uniqueId));
                    producerScope.mo2332trySendJP2dKIU(Boolean.valueOf(!linkedHashSet.isEmpty()));
                }

                @Override // com.stripe.stripeterminal.internal.common.connectivity.NetworkConnectivityCallback
                public void onUnavailable() {
                    producerScope.mo2332trySendJP2dKIU(false);
                }
            };
            this.this$0.connectivityManager.registerNetworkCallback((NetworkConnectivityCallback) r3);
            final DefaultNetworkConnectivityRepository defaultNetworkConnectivityRepository = this.this$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.connectivity.DefaultNetworkConnectivityRepository$networkConnectivityState$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    defaultNetworkConnectivityRepository.connectivityManager.unregisterNetworkCallback(r3);
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
