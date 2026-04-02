package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.Adapter;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1", f = "BbposUsbAdapter.kt", i = {}, l = {237}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BbposUsbAdapter.ReconnectUsbReaderOperation this$0;
    final /* synthetic */ BbposUsbAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1(BbposUsbAdapter.ReconnectUsbReaderOperation reconnectUsbReaderOperation, BbposUsbAdapter bbposUsbAdapter, Continuation<? super BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = reconnectUsbReaderOperation;
        this.this$1 = bbposUsbAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1(this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Flow<UsbReaderReconnector.ReconnectionEvent> flowReconnect = this.this$0.reconnector.reconnect(this.this$0.reader);
            final BbposUsbAdapter bbposUsbAdapter = this.this$1;
            final BbposUsbAdapter.ReconnectUsbReaderOperation reconnectUsbReaderOperation = this.this$0;
            this.label = 1;
            if (flowReconnect.collect(new FlowCollector() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$ReconnectUsbReaderOperation$execute$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((UsbReaderReconnector.ReconnectionEvent) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(UsbReaderReconnector.ReconnectionEvent reconnectionEvent, Continuation<? super Unit> continuation) {
                    if (reconnectionEvent instanceof UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity) {
                        UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity updateConnectivity = (UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity) reconnectionEvent;
                        if (updateConnectivity instanceof UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity.StartConnectAttempt) {
                            bbposUsbAdapter.connectionManager.startConnect(((UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity.StartConnectAttempt) reconnectionEvent).getReader());
                        } else if (updateConnectivity instanceof UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity.GetReaderInfo) {
                            bbposUsbAdapter.connectionManager.startReaderInfo();
                        } else if (updateConnectivity instanceof UsbReaderReconnector.ReconnectionEvent.UpdateConnectivity.EndConnectAttempt) {
                            bbposUsbAdapter.connectionManager.endOperation();
                        }
                        bbposUsbAdapter.update();
                    } else if (reconnectionEvent instanceof UsbReaderReconnector.ReconnectionEvent.FailedToReconnect) {
                        reconnectUsbReaderOperation.failReconnection();
                    } else if (reconnectionEvent instanceof UsbReaderReconnector.ReconnectionEvent.ReconnectedToReader) {
                        reconnectUsbReaderOperation.set(((UsbReaderReconnector.ReconnectionEvent.ReconnectedToReader) reconnectionEvent).getReader());
                        bbposUsbAdapter.setOperationInProgress(new Adapter.NullOperation());
                    }
                    return Unit.INSTANCE;
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
