package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.HealthMetricListenersProvider;
import dagger.Module;
import dagger.Provides;
import java.util.List;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: EmptyHealthMetricsListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule;", "", "()V", "provideHealthMetricListenersProvider", "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class EmptyHealthMetricsListenerModule {
    public static final EmptyHealthMetricsListenerModule INSTANCE = new EmptyHealthMetricsListenerModule();

    @Provides
    @Singleton
    public final HealthMetricListenersProvider provideHealthMetricListenersProvider() {
        return new HealthMetricListenersProvider() { // from class: com.stripe.jvmcore.logging.dagger.EmptyHealthMetricsListenerModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.logging.HealthMetricListenersProvider
            public final List getHealthMetricListeners() {
                return CollectionsKt.emptyList();
            }
        };
    }

    private EmptyHealthMetricsListenerModule() {
    }
}
