package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.DeviceListenerRegistry;
import com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.ElementsIntoSet;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;
import javax.inject.Qualifier;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DeviceListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0005\u0011\u0012\u0013\u0014\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\b\u001a\u00020\u00062\b\b\u0001\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\fJ\u0018\u0010\r\u001a\r\u0012\t\u0012\u00070\u0006¢\u0006\u0002\b\u000f0\u000eH\u0001¢\u0006\u0002\b\u0010¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule;", "", "()V", "provideListenerRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;", "encryptionHandler", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "observabilityHandler", "missingKeyHandler", "readerStatusHandler", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideListenerRegistry$hardware_release", "providesDeviceListenerSet", "", "Lkotlin/jvm/JvmSuppressWildcards;", "providesDeviceListenerSet$hardware_release", "Bindings", "EncryptionHandler", "MissingKeyHandler", "ObservabilityHandler", "ReaderStatusHandler", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class DeviceListenerModule {
    public static final DeviceListenerModule INSTANCE = new DeviceListenerModule();

    /* JADX INFO: compiled from: DeviceListenerModule.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$Bindings;", "", "()V", "bindRegistryAsMainWrapper", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "registry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;", "bindRegistryAsMainWrapper$hardware_release", "bindRegistryAsRegistry", "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "bindRegistryAsRegistry$hardware_release", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract DeviceListenerWrapper bindRegistryAsMainWrapper$hardware_release(DeviceListenerRegistryImpl registry);

        @Binds
        public abstract DeviceListenerRegistry bindRegistryAsRegistry$hardware_release(DeviceListenerRegistryImpl registry);
    }

    /* JADX INFO: compiled from: DeviceListenerModule.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$EncryptionHandler;", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.RUNTIME)
    public @interface EncryptionHandler {
    }

    /* JADX INFO: compiled from: DeviceListenerModule.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$MissingKeyHandler;", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.RUNTIME)
    public @interface MissingKeyHandler {
    }

    /* JADX INFO: compiled from: DeviceListenerModule.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ObservabilityHandler;", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.RUNTIME)
    public @interface ObservabilityHandler {
    }

    /* JADX INFO: compiled from: DeviceListenerModule.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ReaderStatusHandler;", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.RUNTIME)
    public @interface ReaderStatusHandler {
    }

    private DeviceListenerModule() {
    }

    @Provides
    @Singleton
    public final DeviceListenerRegistryImpl provideListenerRegistry$hardware_release(@EncryptionHandler DeviceListenerWrapper encryptionHandler, @ObservabilityHandler DeviceListenerWrapper observabilityHandler, @MissingKeyHandler DeviceListenerWrapper missingKeyHandler, @ReaderStatusHandler DeviceListenerWrapper readerStatusHandler, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(encryptionHandler, "encryptionHandler");
        Intrinsics.checkNotNullParameter(observabilityHandler, "observabilityHandler");
        Intrinsics.checkNotNullParameter(missingKeyHandler, "missingKeyHandler");
        Intrinsics.checkNotNullParameter(readerStatusHandler, "readerStatusHandler");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DeviceListenerRegistryImpl(encryptionHandler, observabilityHandler, missingKeyHandler, readerStatusHandler, loggerFactory.create(Reflection.getOrCreateKotlinClass(DeviceListenerRegistryImpl.class)));
    }

    @Provides
    @ElementsIntoSet
    public final Set<DeviceListenerWrapper> providesDeviceListenerSet$hardware_release() {
        return SetsKt.emptySet();
    }
}
