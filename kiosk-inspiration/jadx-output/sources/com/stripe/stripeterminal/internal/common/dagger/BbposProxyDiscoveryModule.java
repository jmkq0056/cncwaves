package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposProxyDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: BbposProxyDiscoveryModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;", "", "()V", "provideDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;", "defaultBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;", "bbposBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;", "usbDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "Bindings", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class BbposProxyDiscoveryModule {
    public static final BbposProxyDiscoveryModule INSTANCE = new BbposProxyDiscoveryModule();

    /* JADX INFO: compiled from: BbposProxyDiscoveryModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule$Bindings;", "", "()V", "bindDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "proxyDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract DiscoveryController bindDiscoveryController(BbposProxyDiscoveryController proxyDiscoveryController);
    }

    private BbposProxyDiscoveryModule() {
    }

    @Provides
    @Singleton
    public final BbposProxyDiscoveryController provideDiscoveryController(DefaultBluetoothDiscoveryController defaultBluetoothDiscoveryController, BbposBluetoothDiscoveryController bbposBluetoothDiscoveryController, BbposUsbDiscoveryController usbDiscoveryController, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(defaultBluetoothDiscoveryController, "defaultBluetoothDiscoveryController");
        Intrinsics.checkNotNullParameter(bbposBluetoothDiscoveryController, "bbposBluetoothDiscoveryController");
        Intrinsics.checkNotNullParameter(usbDiscoveryController, "usbDiscoveryController");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposProxyDiscoveryController(defaultBluetoothDiscoveryController, bbposBluetoothDiscoveryController, usbDiscoveryController, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposProxyDiscoveryController.class)));
    }
}
