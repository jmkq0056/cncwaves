package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.Adapter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class TerminalSession$activateReader$response$1 extends FunctionReferenceImpl implements Function2<BluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb, Unit> {
    TerminalSession$activateReader$response$1(Object obj) {
        super(2, obj, Adapter.class, "setReconnectParams", "setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb) throws TerminalException {
        invoke2(bluetoothAutoReconnectConfigPb, usbAutoReconnectConfigPb);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb) throws TerminalException {
        ((Adapter) this.receiver).setReconnectParams(bluetoothAutoReconnectConfigPb, usbAutoReconnectConfigPb);
    }
}
