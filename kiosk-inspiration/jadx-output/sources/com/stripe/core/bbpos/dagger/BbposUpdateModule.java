package com.stripe.core.bbpos.dagger;

import android.content.Context;
import android.stripe.bbpos.CustServiceManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceControllerNotSupportOTAException;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.core.bbpos.BbposDeviceOtaController;
import com.stripe.core.bbpos.BbposOtaListener;
import com.stripe.core.bbpos.BbposReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import com.stripe.jvmcore.dagger.ForApplication;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposUpdateModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007J%\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0001¢\u0006\u0002\b\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;", "", "()V", "EMMS_URL", "", "provideBBDeviceOTAController", "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/bbpos/BbposOtaListener;", "deviceController", "Lcom/bbpos/bbdevice/BBDeviceController;", "provideCustServiceManager", "Landroid/bbpos/CustServiceManager;", "provideUpdateController", "Lcom/stripe/core/bbpos/BbposReaderUpdateController;", "otaController", "Lcom/stripe/core/bbpos/BbposDeviceOtaController;", "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", "otaListener", "provideUpdateController$sdk_release", "Bindings", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class BbposUpdateModule {
    private static final String EMMS_URL = "https://api.emms.bbpos.com/";
    public static final BbposUpdateModule INSTANCE = new BbposUpdateModule();

    /* JADX INFO: compiled from: BbposUpdateModule.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/bbpos/dagger/BbposUpdateModule$Bindings;", "", "()V", "bindReaderUpdateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "controller", "Lcom/stripe/core/bbpos/BbposReaderUpdateController;", "bindReaderUpdateController$sdk_release", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract ReaderUpdateController bindReaderUpdateController$sdk_release(BbposReaderUpdateController controller);
    }

    private BbposUpdateModule() {
    }

    @Provides
    @Singleton
    public final BbposReaderUpdateController provideUpdateController$sdk_release(BbposDeviceOtaController otaController, ReaderUpdateListener listener, BbposOtaListener otaListener) {
        Intrinsics.checkNotNullParameter(otaController, "otaController");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(otaListener, "otaListener");
        return new BbposReaderUpdateController(otaController, listener, otaListener);
    }

    @Provides
    @Singleton
    public final BBDeviceOTAController provideBBDeviceOTAController(@ForApplication Context context, BbposOtaListener listener, BBDeviceController deviceController) throws BBDeviceControllerNotSupportOTAException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        BBDeviceOTAController bBDeviceOTAController = BBDeviceOTAController.getInstance(context, listener);
        bBDeviceOTAController.setBBDeviceController(deviceController);
        bBDeviceOTAController.setOTAServerURL(EMMS_URL);
        Intrinsics.checkNotNull(bBDeviceOTAController);
        return bBDeviceOTAController;
    }

    @Provides
    @Singleton
    public final CustServiceManager provideCustServiceManager(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("custservice");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.bbpos.CustServiceManager");
        return (CustServiceManager) systemService;
    }
}
