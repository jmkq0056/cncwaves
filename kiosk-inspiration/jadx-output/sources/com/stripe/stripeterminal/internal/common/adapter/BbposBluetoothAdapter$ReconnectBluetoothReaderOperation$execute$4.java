package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.Reader;
import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4", f = "BbposBluetoothAdapter.kt", i = {}, l = {WinError.ERROR_INVALID_ADDRESS}, m = "invokeSuspend", n = {}, s = {})
final class BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Reader $btReader;
    int label;
    final /* synthetic */ BbposBluetoothAdapter this$0;
    final /* synthetic */ BbposBluetoothAdapter.ReconnectBluetoothReaderOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4(BbposBluetoothAdapter bbposBluetoothAdapter, BbposBluetoothAdapter.ReconnectBluetoothReaderOperation reconnectBluetoothReaderOperation, Reader reader, Continuation<? super BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4> continuation) {
        super(2, continuation);
        this.this$0 = bbposBluetoothAdapter;
        this.this$1 = reconnectBluetoothReaderOperation;
        this.$btReader = reader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4(this.this$0, this.this$1, this.$btReader, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long jIntValue = this.this$0.reconnectionMaxTimeoutInSeconds != null ? r9.intValue() * 1000 : 30000L;
            this.label = 1;
            obj = TimeoutKt.withTimeoutOrNull(jIntValue, new BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1(this.this$0, this.$btReader, this.this$1, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            this.this$0.getLogger().d("Reconnect timed out", new Pair[0]);
            this.this$1.healthLoggerTags.put("reconnection_outcome", "hit_timeout");
            this.this$1.failReconnection();
        } else if (bool.booleanValue()) {
            this.this$0.getLogger().d("Reconnect succeeded", new Pair[0]);
            this.this$1.healthLoggerTags.put("reconnection_outcome", "reconnected");
        } else {
            this.this$0.getLogger().d("Reconnect exceeded max attempts", new Pair[0]);
            this.this$1.healthLoggerTags.put("reconnection_outcome", "hit_max_retries");
            this.this$1.failReconnection();
        }
        return Unit.INSTANCE;
    }
}
