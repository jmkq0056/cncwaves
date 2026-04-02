package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.HealthMetricListener;
import com.stripe.jvmcore.logging.HealthMetricListenersProvider;
import dagger.Module;
import dagger.Provides;
import java.util.List;
import java.util.Set;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HealthMetricListenersModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\bH\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/HealthMetricListenersModule;", "", "()V", "provideHealthMetricListenersProvider", "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;", "healthMetricListeners", "", "Lcom/stripe/jvmcore/logging/HealthMetricListener;", "Lkotlin/jvm/JvmSuppressWildcards;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class HealthMetricListenersModule {
    public static final HealthMetricListenersModule INSTANCE = new HealthMetricListenersModule();

    private HealthMetricListenersModule() {
    }

    @Provides
    @Singleton
    public final HealthMetricListenersProvider provideHealthMetricListenersProvider(final Set<HealthMetricListener> healthMetricListeners) {
        Intrinsics.checkNotNullParameter(healthMetricListeners, "healthMetricListeners");
        return new HealthMetricListenersProvider() { // from class: com.stripe.jvmcore.logging.dagger.HealthMetricListenersModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.logging.HealthMetricListenersProvider
            public final List getHealthMetricListeners() {
                return HealthMetricListenersModule.provideHealthMetricListenersProvider$lambda$0(healthMetricListeners);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List provideHealthMetricListenersProvider$lambda$0(Set healthMetricListeners) {
        Intrinsics.checkNotNullParameter(healthMetricListeners, "$healthMetricListeners");
        return CollectionsKt.toList(healthMetricListeners);
    }
}
