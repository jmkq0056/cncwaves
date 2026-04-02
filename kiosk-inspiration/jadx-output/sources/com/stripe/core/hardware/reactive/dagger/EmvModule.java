package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository;
import com.stripe.core.hardware.reactive.emv.ReactiveConfigurationListener;
import com.stripe.core.hardware.reactive.emv.ReaderSettingsRepository;
import com.stripe.hardware.emv.ConfigurationListener;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.IO;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: EmvModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH'¨\u0006\r"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/EmvModule;", "", "()V", "bindReaderSettingsRepository", "Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;", "defaultReaderSettingsRepository", "Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;", "bindReaderSettingsRepository$hardware_reactive_release", "providerConfigurationListener", "Lcom/stripe/hardware/emv/ConfigurationListener;", "reactiveConfigurationListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "Companion", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class EmvModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract ReaderSettingsRepository bindReaderSettingsRepository$hardware_reactive_release(DefaultReaderSettingsRepository defaultReaderSettingsRepository);

    @Singleton
    @Binds
    public abstract ConfigurationListener providerConfigurationListener(ReactiveConfigurationListener reactiveConfigurationListener);

    /* JADX INFO: compiled from: EmvModule.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;", "", "()V", "provideDefaultReaderSettingsRepository", "Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "provideDefaultReaderSettingsRepository$hardware_reactive_release", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        @Singleton
        public final DefaultReaderSettingsRepository provideDefaultReaderSettingsRepository$hardware_reactive_release(@AppScope CoroutineScope appScope, @IO CoroutineDispatcher dispatcher, ConfigurationHandler configurationHandler) {
            Intrinsics.checkNotNullParameter(appScope, "appScope");
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
            return new DefaultReaderSettingsRepository(appScope, dispatcher, configurationHandler);
        }
    }
}
