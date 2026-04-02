package com.stripe.core.bbpos.hardware.dagger;

import android.hardware.usb.UsbManager;
import com.stripe.core.bbpos.hardware.BbposReaderConnectionController;
import com.stripe.core.bbpos.hardware.BbposReaderInfoController;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: BbposConnectionAndInfoModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;", "", "()V", "provideBbposReaderConnectionController", "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "usbManager", "Landroid/hardware/usb/UsbManager;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideBbposReaderInfoController", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;", "Bindings", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class BbposConnectionAndInfoModule {
    public static final BbposConnectionAndInfoModule INSTANCE = new BbposConnectionAndInfoModule();

    /* JADX INFO: compiled from: BbposConnectionAndInfoModule.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b!\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\tH'¨\u0006\n"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule$Bindings;", "", "()V", "bindReaderConnectionInterface", "Lcom/stripe/core/hardware/ReaderConnectionController;", "controller", "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;", "bindReaderInfoInterface", "Lcom/stripe/core/hardware/ReaderInfoController;", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract ReaderConnectionController bindReaderConnectionInterface(BbposReaderConnectionController controller);

        @Binds
        public abstract ReaderInfoController bindReaderInfoInterface(BbposReaderInfoController controller);
    }

    private BbposConnectionAndInfoModule() {
    }

    @Provides
    @Singleton
    public final BbposReaderConnectionController provideBbposReaderConnectionController(DeviceControllerWrapper deviceController, UsbManager usbManager, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposReaderConnectionController(deviceController, usbManager, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposReaderConnectionController.class)));
    }

    @Provides
    @Singleton
    public final BbposReaderInfoController provideBbposReaderInfoController(DeviceControllerWrapper deviceController) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        return new BbposReaderInfoController(deviceController);
    }
}
