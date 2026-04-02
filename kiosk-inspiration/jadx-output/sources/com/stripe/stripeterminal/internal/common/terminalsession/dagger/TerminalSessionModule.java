package com.stripe.stripeterminal.internal.common.terminalsession.dagger;

import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundReaderActivator;
import com.stripe.stripeterminal.internal.common.terminalsession.DefaultIpReaderActivator;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalSessionModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;", "", "()V", "bindReaderActivator", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;", "defaultIpReaderActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;", "bindReaderActivator$terminalsession_release", "provideDefaultIpReaderActivator", "backgroundReaderActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "provideDefaultIpReaderActivator$terminalsession_release", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class TerminalSessionModule {
    public static final TerminalSessionModule INSTANCE = new TerminalSessionModule();

    private TerminalSessionModule() {
    }

    @Provides
    public final DefaultIpReaderActivator provideDefaultIpReaderActivator$terminalsession_release(BackgroundReaderActivator backgroundReaderActivator) {
        Intrinsics.checkNotNullParameter(backgroundReaderActivator, "backgroundReaderActivator");
        return new DefaultIpReaderActivator(backgroundReaderActivator);
    }

    @Provides
    public final ReaderActivator bindReaderActivator$terminalsession_release(DefaultIpReaderActivator defaultIpReaderActivator) {
        Intrinsics.checkNotNullParameter(defaultIpReaderActivator, "defaultIpReaderActivator");
        return defaultIpReaderActivator;
    }
}
