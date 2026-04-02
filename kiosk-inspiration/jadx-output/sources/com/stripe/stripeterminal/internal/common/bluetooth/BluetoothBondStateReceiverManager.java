package com.stripe.stripeterminal.internal.common.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.content.IntentCompat;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: BluetoothBondStateReceiverManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0019\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J*\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0013J\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;", "", "context", "Landroid/content/Context;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "receiver", "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;", "startListening", "", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "onBonded", "Lkotlin/Function0;", "onError", "stopListening", "BluetoothBondStateReceiver", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BluetoothBondStateReceiverManager {
    private final Context context;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private BluetoothBondStateReceiver receiver;

    @Inject
    public BluetoothBondStateReceiverManager(@ForApplication Context context, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.context = context;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(BluetoothBondStateReceiver.class));
    }

    /* JADX INFO: compiled from: BluetoothBondStateReceiverManager.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ\u001a\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$BluetoothBondStateReceiver;", "Landroid/content/BroadcastReceiver;", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "onBonded", "Lkotlin/Function0;", "", "onError", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "onReceive", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BluetoothBondStateReceiver extends BroadcastReceiver {
        private final BluetoothDevice bluetoothDevice;
        private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
        private final Function0<Unit> onBonded;
        private final Function0<Unit> onError;

        public BluetoothBondStateReceiver(BluetoothDevice bluetoothDevice, Function0<Unit> onBonded, Function0<Unit> onError, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
            Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
            Intrinsics.checkNotNullParameter(onBonded, "onBonded");
            Intrinsics.checkNotNullParameter(onError, "onError");
            Intrinsics.checkNotNullParameter(logger, "logger");
            this.bluetoothDevice = bluetoothDevice;
            this.onBonded = onBonded;
            this.onError = onError;
            this.logger = logger;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            this.logger.d("onReceive", new Pair[0]);
            BluetoothDevice bluetoothDevice = (BluetoothDevice) IntentCompat.getParcelableExtra(intent, "android.bluetooth.device.extra.DEVICE", BluetoothDevice.class);
            if (Intrinsics.areEqual(this.bluetoothDevice.getAddress(), bluetoothDevice != null ? bluetoothDevice.getAddress() : null)) {
                int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1);
                int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", -1);
                if (intExtra != 11) {
                    if (intExtra == 12) {
                        this.onBonded.invoke();
                    } else if (intExtra == 10 && intExtra2 == 11) {
                        this.onError.invoke();
                    }
                }
            }
        }
    }

    public final void startListening(BluetoothDevice bluetoothDevice, Function0<Unit> onBonded, Function0<Unit> onError) {
        Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
        Intrinsics.checkNotNullParameter(onBonded, "onBonded");
        Intrinsics.checkNotNullParameter(onError, "onError");
        this.logger.d("startListening", new Pair[0]);
        if (this.receiver == null) {
            BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1 bluetoothBondStateReceiverManager$startListening$delayedOnBonded$1 = new BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1(this, onBonded);
            IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.BOND_STATE_CHANGED");
            BluetoothBondStateReceiver bluetoothBondStateReceiver = new BluetoothBondStateReceiver(bluetoothDevice, bluetoothBondStateReceiverManager$startListening$delayedOnBonded$1, onError, this.logger);
            this.receiver = bluetoothBondStateReceiver;
            this.context.registerReceiver(bluetoothBondStateReceiver, intentFilter);
        }
    }

    public final void stopListening() {
        this.logger.d("stopListening", new Pair[0]);
        BluetoothBondStateReceiver bluetoothBondStateReceiver = this.receiver;
        if (bluetoothBondStateReceiver != null) {
            this.context.unregisterReceiver(bluetoothBondStateReceiver);
            this.receiver = null;
        }
    }
}
