package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.readerupdate.UpdateInstaller;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallUpdatesHandler_Factory implements Factory<InstallUpdatesHandler> {
    private final Provider<UpdateInstaller> updateInstallerProvider;

    public InstallUpdatesHandler_Factory(Provider<UpdateInstaller> provider) {
        this.updateInstallerProvider = provider;
    }

    @Override // javax.inject.Provider
    public InstallUpdatesHandler get() {
        return newInstance(this.updateInstallerProvider.get());
    }

    public static InstallUpdatesHandler_Factory create(Provider<UpdateInstaller> provider) {
        return new InstallUpdatesHandler_Factory(provider);
    }

    public static InstallUpdatesHandler newInstance(UpdateInstaller updateInstaller) {
        return new InstallUpdatesHandler(updateInstaller);
    }
}
