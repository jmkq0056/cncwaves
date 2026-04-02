package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.TmsIngesterImpl;
import com.stripe.core.readerupdate.TmsMonitorImpl;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.updater.Ingester;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.dagger.Updates;
import dagger.Module;
import dagger.Provides;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: TmsModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007H\u0007J:\u0010\b\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\n0\tj\u0002`\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/TmsModule;", "", "()V", "provideTmsIngester", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lcom/stripe/core/readerupdate/TmsIngester;", "provideTmsMonitor", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/TmsMonitor;", "updateController", "Lcom/stripe/core/hardware/updates/ReaderUpdateController;", "updateListener", "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class TmsModule {
    public static final TmsModule INSTANCE = new TmsModule();

    private TmsModule() {
    }

    @Provides
    public final Monitor<Flow<ReaderVersion>> provideTmsMonitor(ReaderUpdateController updateController, ReactiveReaderUpdateListener updateListener, @Updates Scheduler scheduler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider) {
        Intrinsics.checkNotNullParameter(updateController, "updateController");
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        return new TmsMonitorImpl(updateController, updateListener, scheduler, embeddedSoftwareVersionProvider);
    }

    @Provides
    public final Ingester<ReaderVersion, UpdatePackage> provideTmsIngester() {
        return new TmsIngesterImpl();
    }
}
