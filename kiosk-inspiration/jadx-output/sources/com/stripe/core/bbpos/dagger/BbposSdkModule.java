package com.stripe.core.bbpos.dagger;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.bbpos.BbposDeviceListenerWrapperImpl;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.mappers.DefaultDeviceInfoCache;
import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposSdkModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J \u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J/\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u0014J\r\u0010\u0015\u001a\u00020\fH\u0001¢\u0006\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/bbpos/dagger/BbposSdkModule;", "", "()V", "provideBBDeviceController", "Lcom/bbpos/bbdevice/BBDeviceController;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;", "provideBBDeviceControllerListener", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "deviceInfoCache", "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideBbposDeviceController", "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "controller", "provideBbposDeviceController$sdk_release", "provideDeviceInfoCache", "provideDeviceInfoCache$sdk_release", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {BbposInvocationRecorderModule.class})
public final class BbposSdkModule {
    @Provides
    @Singleton
    public final BBDeviceController provideBBDeviceController(@ForApplication Context context, BBDeviceController.BBDeviceControllerListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        BBDeviceController bBDeviceController = BBDeviceController.getInstance(context, listener);
        Intrinsics.checkNotNullExpressionValue(bBDeviceController, "getInstance(...)");
        return bBDeviceController;
    }

    @Provides
    public final BBDeviceController.BBDeviceControllerListener provideBBDeviceControllerListener(DeviceListenerWrapper listener, DeviceInfoCache deviceInfoCache, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposDeviceListenerWrapperImpl(listener, deviceInfoCache, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposDeviceListenerWrapperImpl.class)));
    }

    @Provides
    public final BbposDeviceControllerImpl provideBbposDeviceController$sdk_release(@AppScope CoroutineScope appScope, BBDeviceController controller, DeviceInfoCache deviceInfoCache, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposDeviceControllerImpl(controller, deviceInfoCache, appScope, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposDeviceControllerImpl.class)));
    }

    @Provides
    @Singleton
    public final DeviceInfoCache provideDeviceInfoCache$sdk_release() {
        return new DefaultDeviceInfoCache();
    }
}
