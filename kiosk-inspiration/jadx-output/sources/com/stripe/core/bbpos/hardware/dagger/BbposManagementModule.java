package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposSdkLoggerKt;
import com.stripe.core.bbpos.hardware.ObservabilityDeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.hardware.dagger.DeviceListenerModule;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.loggingmodels.StructuredEventLogger;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: BbposManagementModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b'\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule;", "", "()V", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {DeviceListenerModule.class})
public abstract class BbposManagementModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: BbposManagementModule.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;", "", "()V", "provideObservabilityListener", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "structuredEventLogger", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideObservabilityListener$hardware_release", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        @Singleton
        @DeviceListenerModule.ObservabilityHandler
        public final DeviceListenerWrapper provideObservabilityListener$hardware_release(HealthLoggerBuilder healthLoggerBuilder, StructuredEventLogger structuredEventLogger, LoggerFactory loggerFactory) {
            Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
            Intrinsics.checkNotNullParameter(structuredEventLogger, "structuredEventLogger");
            Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
            return new ObservabilityDeviceListenerWrapper(BbposSdkLoggerKt.buildsBbposSdkEventLogger(healthLoggerBuilder), structuredEventLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(DeviceListenerWrapper.class)));
        }
    }
}
