package com.stripe.core.readerupdate.dagger;

import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderUpdateModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/ReaderUpdateModule;", "", "()V", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {ArmadaModule.class, BbposModule.class, FlowUpdaterModule.class, HealthReporterModule.class, ObservabilityModule.class, TmsModule.class})
public final class ReaderUpdateModule {
    public static final ReaderUpdateModule INSTANCE = new ReaderUpdateModule();

    private ReaderUpdateModule() {
    }
}
