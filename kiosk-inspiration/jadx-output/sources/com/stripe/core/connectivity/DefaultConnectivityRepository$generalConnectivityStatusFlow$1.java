package com.stripe.core.connectivity;

import com.stripe.core.connectivity.Connection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: ConnectivityRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/core/connectivity/ConnectivityStatus;", "wifi", "Lcom/stripe/core/connectivity/Connection;", "Lcom/stripe/core/connectivity/Connection$Type$Wifi;", "ethernet", "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;", "cellular", "Lcom/stripe/core/connectivity/Connection$Type$Cellular;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.connectivity.DefaultConnectivityRepository$generalConnectivityStatusFlow$1", f = "ConnectivityRepository.kt", i = {}, l = {160}, m = "invokeSuspend", n = {}, s = {})
final class DefaultConnectivityRepository$generalConnectivityStatusFlow$1 extends SuspendLambda implements Function5<FlowCollector<? super ConnectivityStatus>, Connection<Connection.Type.Wifi>, Connection<Connection.Type.Ethernet>, Connection<Connection.Type.Cellular>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    int label;
    final /* synthetic */ DefaultConnectivityRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultConnectivityRepository$generalConnectivityStatusFlow$1(DefaultConnectivityRepository defaultConnectivityRepository, Continuation<? super DefaultConnectivityRepository$generalConnectivityStatusFlow$1> continuation) {
        super(5, continuation);
        this.this$0 = defaultConnectivityRepository;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object invoke(FlowCollector<? super ConnectivityStatus> flowCollector, Connection<Connection.Type.Wifi> connection, Connection<Connection.Type.Ethernet> connection2, Connection<Connection.Type.Cellular> connection3, Continuation<? super Unit> continuation) {
        DefaultConnectivityRepository$generalConnectivityStatusFlow$1 defaultConnectivityRepository$generalConnectivityStatusFlow$1 = new DefaultConnectivityRepository$generalConnectivityStatusFlow$1(this.this$0, continuation);
        defaultConnectivityRepository$generalConnectivityStatusFlow$1.L$0 = flowCollector;
        defaultConnectivityRepository$generalConnectivityStatusFlow$1.L$1 = connection;
        defaultConnectivityRepository$generalConnectivityStatusFlow$1.L$2 = connection2;
        defaultConnectivityRepository$generalConnectivityStatusFlow$1.L$3 = connection3;
        return defaultConnectivityRepository$generalConnectivityStatusFlow$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            Connection connection = (Connection) this.L$1;
            Connection connection2 = (Connection) this.L$2;
            Connection connection3 = (Connection) this.L$3;
            DefaultConnectivityRepository defaultConnectivityRepository = this.this$0;
            Connection[] connectionArr = {connection, connection2, connection3};
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 1;
            if (flowCollector.emit(defaultConnectivityRepository.connectionDataTransformer(connectionArr), this) == coroutine_suspended) {
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
