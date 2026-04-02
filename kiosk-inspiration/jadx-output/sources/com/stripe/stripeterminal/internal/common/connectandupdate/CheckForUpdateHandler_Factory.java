package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CheckForUpdateHandler_Factory implements Factory<CheckForUpdateHandler> {
    private final Provider<ReaderConfigurationUpdateController> readerConfigurationUpdateControllerProvider;

    public CheckForUpdateHandler_Factory(Provider<ReaderConfigurationUpdateController> provider) {
        this.readerConfigurationUpdateControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public CheckForUpdateHandler get() {
        return newInstance(this.readerConfigurationUpdateControllerProvider.get());
    }

    public static CheckForUpdateHandler_Factory create(Provider<ReaderConfigurationUpdateController> provider) {
        return new CheckForUpdateHandler_Factory(provider);
    }

    public static CheckForUpdateHandler newInstance(ReaderConfigurationUpdateController readerConfigurationUpdateController) {
        return new CheckForUpdateHandler(readerConfigurationUpdateController);
    }
}
