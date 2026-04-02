package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.readerupdate.BbposApplicatorImpl;
import com.stripe.core.readerupdate.BbposAssetInstallProcessor;
import com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.updater.Applicator;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.Updates;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Module;
import dagger.Provides;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: BbposModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J`\u0010\u0003\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0002`\b2\b\b\u0001\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J:\u0010\u0018\u001a\u00020\u00132\b\b\u0001\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007¨\u0006#"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/BbposModule;", "", "()V", "provideBbposApplicator", "Lcom/stripe/core/updater/Applicator;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "Lcom/stripe/core/readerupdate/BbposApplicator;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerProvider", "Ljavax/inject/Provider;", "Lcom/stripe/core/hardware/Reader;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "bbposAssetInstallProcessor", "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideBbposAssetInstallProcessor", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "statusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "updateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "readerConnectionController", "Lcom/stripe/core/hardware/ReaderConnectionController;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposModule {
    public static final BbposModule INSTANCE = new BbposModule();

    private BbposModule() {
    }

    @Provides
    public final BbposAssetInstallProcessor provideBbposAssetInstallProcessor(@Updates Scheduler scheduler, ReactiveReaderUpdateListener updateListener, ReactiveReaderStatusListener statusListener, ReaderUpdateController updateController, ReaderConnectionController readerConnectionController, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(statusListener, "statusListener");
        Intrinsics.checkNotNullParameter(updateController, "updateController");
        Intrinsics.checkNotNullParameter(readerConnectionController, "readerConnectionController");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultBbposAssetInstallProcessor(scheduler, updateListener, updateController, statusListener, readerConnectionController, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposAssetInstallProcessor.class)));
    }

    @Provides
    public final Applicator<UpdatePackage, Flow<ProgressStatus>> provideBbposApplicator(@IO CoroutineDispatcher io2, Provider<Reader> readerProvider, ConfigurationHandler configurationHandler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, BbposAssetInstallProcessor bbposAssetInstallProcessor, DeviceInfoRepository deviceInfoRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(bbposAssetInstallProcessor, "bbposAssetInstallProcessor");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new BbposApplicatorImpl(io2, readerProvider, configurationHandler, embeddedSoftwareVersionProvider, bbposAssetInstallProcessor, deviceInfoRepository, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposApplicatorImpl.class)));
    }
}
