package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import com.stripe.stripeterminal.internal.common.adapter.connection.DisconnectReasonRepository;
import com.stripe.time.Clock;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: AdapterModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/dagger/AdapterModule;", "", "()V", "provideDisconnectReasonRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "clock", "Lcom/stripe/time/Clock;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideSimulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class AdapterModule {
    public static final AdapterModule INSTANCE = new AdapterModule();

    private AdapterModule() {
    }

    @Provides
    @Singleton
    public final SimulatorConfigurationRepository provideSimulatorConfigurationRepository() {
        return new SimulatorConfigurationRepository();
    }

    @Provides
    @Singleton
    public final DisconnectReasonRepository provideDisconnectReasonRepository(Clock clock, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DisconnectReasonRepository(clock, loggerFactory.create(Reflection.getOrCreateKotlinClass(DisconnectReasonRepository.class)));
    }
}
