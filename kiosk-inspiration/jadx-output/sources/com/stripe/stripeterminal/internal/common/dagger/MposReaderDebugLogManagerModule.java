package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.stripeterminal.internal.common.log.DefaultMposReaderDebugLogManager;
import com.stripe.stripeterminal.internal.common.log.MposReaderDebugLogManager;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MposReaderDebugLogManagerModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule;", "", "()V", "provideMposReaderDebugLogManager", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerConnectionController", "Lcom/stripe/core/hardware/ReaderConnectionController;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class MposReaderDebugLogManagerModule {
    public static final MposReaderDebugLogManagerModule INSTANCE = new MposReaderDebugLogManagerModule();

    private MposReaderDebugLogManagerModule() {
    }

    @Provides
    @Singleton
    public final MposReaderDebugLogManager provideMposReaderDebugLogManager(FeatureFlagsRepository featureFlagsRepository, ReaderConnectionController readerConnectionController, @AppScope CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(readerConnectionController, "readerConnectionController");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        return new DefaultMposReaderDebugLogManager(featureFlagsRepository, readerConnectionController, appScope);
    }
}
