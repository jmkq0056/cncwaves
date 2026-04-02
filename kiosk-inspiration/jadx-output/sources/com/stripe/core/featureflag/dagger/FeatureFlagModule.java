package com.stripe.core.featureflag.dagger;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.featureflag.ReaderFeatureFlagsProvider;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FeatureFlagModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;", "", "()V", "providesDebugLogsShouldBeSentToSplunkFeatureFlag", "", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "providesObservabilityFeatureFlags", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "providesReaderFeatureFlags", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "providesTtpAutoReconnectEnabledFeatureFlag", "Bindings", "featureflag_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class FeatureFlagModule {

    /* JADX INFO: compiled from: FeatureFlagModule.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b!\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H!¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/featureflag/dagger/FeatureFlagModule$Bindings;", "", "()V", "bindReaderFeatureFlagsProvider", "Lcom/stripe/jvmcore/featureflag/ReaderFeatureFlagsProvider;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "bindReaderFeatureFlagsProvider$featureflag_release", "featureflag_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract ReaderFeatureFlagsProvider bindReaderFeatureFlagsProvider$featureflag_release(FeatureFlagsRepository featureFlagsRepository);
    }

    @Provides
    @DebugLogsShouldBeSentToSplunk
    public final boolean providesDebugLogsShouldBeSentToSplunkFeatureFlag(FeatureFlagsRepository featureFlagsRepository) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        return featureFlagsRepository.getFeatureFlags().enable_send_bbpos_debug_logs_to_splunk;
    }

    @TtpAutoReconnectEnabled
    @Provides
    public final boolean providesTtpAutoReconnectEnabledFeatureFlag(FeatureFlagsRepository featureFlagsRepository) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        return featureFlagsRepository.getTtpAutoReconnectEnabled();
    }

    @Provides
    public final ObservabilityFeatureFlags providesObservabilityFeatureFlags(FeatureFlagsRepository featureFlagsRepository) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        return featureFlagsRepository;
    }

    @Provides
    public final ReaderFeatureFlags providesReaderFeatureFlags(FeatureFlagsRepository featureFlagsRepository) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        return featureFlagsRepository.getFeatureFlags();
    }
}
