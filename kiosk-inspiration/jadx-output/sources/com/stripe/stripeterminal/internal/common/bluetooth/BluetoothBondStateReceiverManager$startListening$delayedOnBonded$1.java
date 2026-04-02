package com.stripe.stripeterminal.internal.common.bluetooth;

import android.os.Looper;
import com.stripe.wrappers.HandlerWrapperKt;
import com.stripe.wrappers.MessageQueueExecutor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: BluetoothBondStateReceiverManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Function0<Unit> $onBonded;
    final /* synthetic */ BluetoothBondStateReceiverManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1(BluetoothBondStateReceiverManager bluetoothBondStateReceiverManager, Function0<Unit> function0) {
        super(0);
        this.this$0 = bluetoothBondStateReceiverManager;
        this.$onBonded = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Looper mainLooper = this.this$0.context.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(mainLooper, "getMainLooper(...)");
        MessageQueueExecutor messageQueueExecutorExecutor = HandlerWrapperKt.executor(mainLooper);
        final Function0<Unit> function0 = this.$onBonded;
        messageQueueExecutorExecutor.postDelayed(new Runnable() { // from class: com.stripe.stripeterminal.internal.common.bluetooth.BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1.invoke$lambda$0(function0);
            }
        }, 1000L);
    }
}
