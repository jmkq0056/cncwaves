package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposControllerListener;
import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.featureflag.dagger.DebugLogsShouldBeSentToSplunk;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.hardware.emv.ConfigurationListener;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposControllerListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u000e\b\u0001\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule;", "", "()V", "provideBbposControllerListenerFactory", "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "configurationListener", "Lcom/stripe/hardware/emv/ConfigurationListener;", "bbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "debugLogsShouldBeSentToSplunk", "Ljavax/inject/Provider;", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposControllerListenerModule {
    public static final BbposControllerListenerModule INSTANCE = new BbposControllerListenerModule();

    private BbposControllerListenerModule() {
    }

    @Provides
    public final BbposControllerListener.Factory provideBbposControllerListenerFactory(ReaderStatusListener readerStatusListener, ConfigurationListener configurationListener, BbposReaderInfoFactory bbposReaderInfoFactory, @DebugLogsShouldBeSentToSplunk Provider<Boolean> debugLogsShouldBeSentToSplunk) {
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(configurationListener, "configurationListener");
        Intrinsics.checkNotNullParameter(bbposReaderInfoFactory, "bbposReaderInfoFactory");
        Intrinsics.checkNotNullParameter(debugLogsShouldBeSentToSplunk, "debugLogsShouldBeSentToSplunk");
        return new BbposControllerListener.Factory(readerStatusListener, configurationListener, bbposReaderInfoFactory, debugLogsShouldBeSentToSplunk);
    }
}
