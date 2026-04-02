package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.device.BbposClientDeviceTypeProvider;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.ClientDeviceType;
import com.stripe.core.device.ClientDeviceTypeProvider;
import com.stripe.core.device.EmulatorClientDeviceTypeProvider;
import com.stripe.core.device.VerifoneClientDeviceTypeProvider;
import com.stripe.core.device.dagger.BbposModule;
import com.stripe.core.device.dagger.EmulatorModule;
import com.stripe.core.device.dagger.VerifoneModule;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.stripeterminal.internal.common.deviceinfo.DefaultClientDeviceTypeProvider;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceTypeModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;", "", "()V", "provideClientDeviceType", "Lcom/stripe/core/device/ClientDeviceType;", "clientDeviceTypeProvider", "Lcom/stripe/core/device/ClientDeviceTypeProvider;", "provideClientDeviceTypeParser", "buildValues", "Lcom/stripe/core/device/BuildValues;", "emulatorClientDeviceTypeParser", "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;", "bbposClientDeviceTypeParser", "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;", "verifoneClientDeviceTypeParser", "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {BbposModule.class, EmulatorModule.class, VerifoneModule.class})
public final class DeviceTypeModule {
    public static final DeviceTypeModule INSTANCE = new DeviceTypeModule();

    private DeviceTypeModule() {
    }

    @Provides
    @Singleton
    public final ClientDeviceTypeProvider provideClientDeviceTypeParser(BuildValues buildValues, EmulatorClientDeviceTypeProvider emulatorClientDeviceTypeParser, BbposClientDeviceTypeProvider bbposClientDeviceTypeParser, VerifoneClientDeviceTypeProvider verifoneClientDeviceTypeParser) {
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        Intrinsics.checkNotNullParameter(emulatorClientDeviceTypeParser, "emulatorClientDeviceTypeParser");
        Intrinsics.checkNotNullParameter(bbposClientDeviceTypeParser, "bbposClientDeviceTypeParser");
        Intrinsics.checkNotNullParameter(verifoneClientDeviceTypeParser, "verifoneClientDeviceTypeParser");
        return new DefaultClientDeviceTypeProvider(buildValues, emulatorClientDeviceTypeParser, bbposClientDeviceTypeParser, verifoneClientDeviceTypeParser, Log.INSTANCE.getLogger(DefaultClientDeviceTypeProvider.class));
    }

    @Provides
    public final ClientDeviceType provideClientDeviceType(ClientDeviceTypeProvider clientDeviceTypeProvider) {
        Intrinsics.checkNotNullParameter(clientDeviceTypeProvider, "clientDeviceTypeProvider");
        return clientDeviceTypeProvider.get();
    }
}
