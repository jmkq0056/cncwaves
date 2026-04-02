package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.scottyab.rootbeer.RootBeer;
import com.stripe.core.device.BuildValues;
import com.stripe.cots.common.CotsClient;
import com.stripe.cots.common.NfcAntennaLogger;
import com.stripe.cots.common.SimulatedCotsClient;
import com.stripe.cots.common.SimulatedEmvBlobProvider;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsCotsIncluded;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.CotsAdapter;
import com.stripe.stripeterminal.internal.common.adapter.SimulatorConfigurationRepository;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CotsModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J8\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007JF\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\"\u0010\u001d\u001a\u00020\u001c2\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u001a\u0010 \u001a\u00020\r2\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J.\u0010!\u001a\u0004\u0018\u00010\"2\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0007JF\u0010%\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/dagger/CotsModule;", "", "()V", "isCotsAdapterIncluded", "", "provideCotsClient", "Lcom/stripe/cots/common/CotsClient;", "applicationContext", "Landroid/content/Context;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "isCotsIncluded", "preFlightChecks", "Lcom/stripe/cots/common/compatibility/PreFlightChecks;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideCotsProxyAdapter", "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "cotsClient", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "nfcAntennaLogger", "Lcom/stripe/cots/common/NfcAntennaLogger;", "provideNfcAntennaLogger", "buildValues", "Lcom/stripe/core/device/BuildValues;", "providePreflightChecks", "provideSimulatedCotsClient", "Lcom/stripe/cots/common/SimulatedCotsClient;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "provideSimulatedCotsProxyAdapter", "simulatedCotsClient", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class CotsModule {
    @Provides
    public final CotsAdapter provideCotsProxyAdapter(ApplicationInformationProvider applicationInformationProvider, CotsClient cotsClient, TerminalStatusManager terminalStatusManager, FeatureFlagsRepository featureFlagsRepository, @AppScope CoroutineScope appScope, NfcAntennaLogger nfcAntennaLogger, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(nfcAntennaLogger, "nfcAntennaLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        if (cotsClient != null) {
            return new CotsAdapter(applicationInformationProvider, cotsClient, terminalStatusManager, featureFlagsRepository, appScope, nfcAntennaLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(CotsAdapter.class)));
        }
        return null;
    }

    @Provides
    @SimulatedCotsAdapter
    public final CotsAdapter provideSimulatedCotsProxyAdapter(ApplicationInformationProvider applicationInformationProvider, SimulatedCotsClient simulatedCotsClient, TerminalStatusManager terminalStatusManager, FeatureFlagsRepository featureFlagsRepository, @AppScope CoroutineScope appScope, NfcAntennaLogger nfcAntennaLogger, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(nfcAntennaLogger, "nfcAntennaLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        if (simulatedCotsClient != null) {
            return new CotsAdapter(applicationInformationProvider, simulatedCotsClient, terminalStatusManager, featureFlagsRepository, appScope, nfcAntennaLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(CotsAdapter.class)));
        }
        return null;
    }

    @Provides
    @Singleton
    @IsCotsIncluded
    public final boolean isCotsAdapterIncluded() {
        try {
            Class.forName("com.stripe.cots.aidlservice.CotsService");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        } catch (ExceptionInInitializerError unused2) {
            return true;
        }
    }

    @Provides
    @Reusable
    public final PreFlightChecks providePreflightChecks(@ForApplication Context applicationContext, BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        RootBeer rootBeer = new RootBeer(applicationContext);
        rootBeer.setLogging(false);
        return new PreFlightChecks(applicationContext, rootBeer, buildValues.getSdkInt());
    }

    @Provides
    @Singleton
    public final CotsClient provideCotsClient(@ForApplication Context applicationContext, @IO CoroutineDispatcher dispatcher, @IsCotsIncluded boolean isCotsIncluded, PreFlightChecks preFlightChecks, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(preFlightChecks, "preFlightChecks");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        if (isCotsIncluded) {
            return new CotsClient(applicationContext, dispatcher, preFlightChecks, loggerFactory.create(Reflection.getOrCreateKotlinClass(CotsClient.class)));
        }
        return null;
    }

    @Provides
    @Singleton
    public final SimulatedCotsClient provideSimulatedCotsClient(@ForApplication Context applicationContext, @IsCotsIncluded boolean isCotsIncluded, PreFlightChecks preFlightChecks, final SimulatorConfigurationRepository simulatorConfigurationRepository) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(preFlightChecks, "preFlightChecks");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        if (isCotsIncluded) {
            return new SimulatedCotsClient(applicationContext, preFlightChecks, new SimulatedEmvBlobProvider() { // from class: com.stripe.stripeterminal.dagger.CotsModule$$ExternalSyntheticLambda0
                @Override // com.stripe.cots.common.SimulatedEmvBlobProvider
                public final String getSimsulatedEmvBlob() {
                    return CotsModule.provideSimulatedCotsClient$lambda$1(simulatorConfigurationRepository);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideSimulatedCotsClient$lambda$1(SimulatorConfigurationRepository simulatorConfigurationRepository) {
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "$simulatorConfigurationRepository");
        return simulatorConfigurationRepository.getSimulatorConfiguration().getSimulatedCard().getEmvBlob().getBlob();
    }

    @Provides
    public final NfcAntennaLogger provideNfcAntennaLogger(@ForApplication Context applicationContext, BuildValues buildValues, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new NfcAntennaLogger(applicationContext, buildValues.getSdkInt(), loggerFactory.create(Reflection.getOrCreateKotlinClass(NfcAntennaLogger.class)));
    }
}
