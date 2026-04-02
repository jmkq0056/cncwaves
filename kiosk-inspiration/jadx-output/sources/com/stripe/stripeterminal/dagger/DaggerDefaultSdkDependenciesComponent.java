package com.stripe.stripeterminal.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.BuildValuesFactory;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.HardwareManufacturerFactory;
import com.stripe.core.device.SdkInt;
import com.stripe.core.device.SerialSupplier;
import com.stripe.core.device.dagger.BuildValuesModule;
import com.stripe.core.device.dagger.BuildValuesModule_ProvideBuildValuesFactory;
import com.stripe.core.device.dagger.BuildValuesModule_ProvideBuildValuesFactoryFactory;
import com.stripe.core.device.dagger.BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;
import com.stripe.core.device.dagger.BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;
import com.stripe.core.device.dagger.DefaultSerialSupplierModule_ProvideSerialSupplierFactory;
import com.stripe.core.device.dagger.SdkIntModule;
import com.stripe.core.device.dagger.SdkIntModule_ProvideSdkInt$device_releaseFactory;
import com.stripe.stripeterminal.internal.common.Adapter;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerDefaultSdkDependenciesComponent {
    private DaggerDefaultSdkDependenciesComponent() {
    }

    public static Builder builder() {
        return new Builder();
    }

    public static DefaultSdkDependenciesComponent create() {
        return new Builder().build();
    }

    public static final class Builder {
        private BuildValuesModule buildValuesModule;
        private SdkIntModule sdkIntModule;

        private Builder() {
        }

        public Builder buildValuesModule(BuildValuesModule buildValuesModule) {
            this.buildValuesModule = (BuildValuesModule) Preconditions.checkNotNull(buildValuesModule);
            return this;
        }

        public Builder sdkIntModule(SdkIntModule sdkIntModule) {
            this.sdkIntModule = (SdkIntModule) Preconditions.checkNotNull(sdkIntModule);
            return this;
        }

        public DefaultSdkDependenciesComponent build() {
            if (this.buildValuesModule == null) {
                this.buildValuesModule = new BuildValuesModule();
            }
            if (this.sdkIntModule == null) {
                this.sdkIntModule = new SdkIntModule();
            }
            return new DefaultSdkDependenciesComponentImpl(this.buildValuesModule, this.sdkIntModule);
        }
    }

    private static final class DefaultSdkDependenciesComponentImpl implements DefaultSdkDependenciesComponent {
        private final DefaultSdkDependenciesComponentImpl defaultSdkDependenciesComponentImpl;
        private Provider<BuildValuesFactory> provideBuildValuesFactoryProvider;
        private Provider<BuildValues> provideBuildValuesProvider;
        private Provider<HardwareManufacturer> provideHardwareManufacturer$device_releaseProvider;
        private Provider<HardwareManufacturerFactory> provideHardwareManufacturerFactory$device_releaseProvider;
        private Provider<SdkInt> provideSdkInt$device_releaseProvider;

        private DefaultSdkDependenciesComponentImpl(BuildValuesModule buildValuesModule, SdkIntModule sdkIntModule) {
            this.defaultSdkDependenciesComponentImpl = this;
            initialize(buildValuesModule, sdkIntModule);
        }

        private void initialize(BuildValuesModule buildValuesModule, SdkIntModule sdkIntModule) {
            Provider<HardwareManufacturerFactory> provider = SingleCheck.provider(BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory.create(buildValuesModule));
            this.provideHardwareManufacturerFactory$device_releaseProvider = provider;
            this.provideHardwareManufacturer$device_releaseProvider = SingleCheck.provider(BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory.create(buildValuesModule, provider));
            Provider<SdkInt> provider2 = SingleCheck.provider(SdkIntModule_ProvideSdkInt$device_releaseFactory.create(sdkIntModule));
            this.provideSdkInt$device_releaseProvider = provider2;
            Provider<BuildValuesFactory> provider3 = SingleCheck.provider(BuildValuesModule_ProvideBuildValuesFactoryFactory.create(buildValuesModule, this.provideHardwareManufacturer$device_releaseProvider, provider2));
            this.provideBuildValuesFactoryProvider = provider3;
            this.provideBuildValuesProvider = SingleCheck.provider(BuildValuesModule_ProvideBuildValuesFactory.create(buildValuesModule, provider3));
        }

        @Override // com.stripe.stripeterminal.dagger.Dependencies
        public SerialSupplier getSerialSupplier() {
            return DefaultSerialSupplierModule_ProvideSerialSupplierFactory.provideSerialSupplier(this.provideBuildValuesProvider.get());
        }

        @Override // com.stripe.stripeterminal.dagger.Dependencies
        public Adapter getEmbeddedAdapter() {
            return NoEmbeddedAdapterModule.INSTANCE.provideNoEmbeddedAdapter();
        }
    }
}
