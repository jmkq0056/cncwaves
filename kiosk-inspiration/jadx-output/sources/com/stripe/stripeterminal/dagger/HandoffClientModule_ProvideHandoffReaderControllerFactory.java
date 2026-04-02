package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.dagger.HandoffClientModule;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class HandoffClientModule_ProvideHandoffReaderControllerFactory implements Factory<RemoteReaderController> {
    private final HandoffClientModule module;
    private final Provider<HandoffClientModule.ProviderMirror> providerMirrorProvider;

    public HandoffClientModule_ProvideHandoffReaderControllerFactory(HandoffClientModule handoffClientModule, Provider<HandoffClientModule.ProviderMirror> provider) {
        this.module = handoffClientModule;
        this.providerMirrorProvider = provider;
    }

    @Override // javax.inject.Provider
    public RemoteReaderController get() {
        return provideHandoffReaderController(this.module, this.providerMirrorProvider.get());
    }

    public static HandoffClientModule_ProvideHandoffReaderControllerFactory create(HandoffClientModule handoffClientModule, Provider<HandoffClientModule.ProviderMirror> provider) {
        return new HandoffClientModule_ProvideHandoffReaderControllerFactory(handoffClientModule, provider);
    }

    public static RemoteReaderController provideHandoffReaderController(HandoffClientModule handoffClientModule, HandoffClientModule.ProviderMirror providerMirror) {
        return handoffClientModule.provideHandoffReaderController(providerMirror);
    }
}
