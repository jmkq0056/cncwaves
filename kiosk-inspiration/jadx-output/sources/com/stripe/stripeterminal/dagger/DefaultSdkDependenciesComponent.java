package com.stripe.stripeterminal.dagger;

import com.stripe.core.device.dagger.BuildValuesModule;
import com.stripe.core.device.dagger.DefaultSerialSupplierModule;
import dagger.Component;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: DefaultSdkDependenciesComponent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Component(modules = {BuildValuesModule.class, DefaultSerialSupplierModule.class, NoEmbeddedAdapterModule.class})
@Singleton
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;", "Lcom/stripe/stripeterminal/dagger/Dependencies;", "defaults_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DefaultSdkDependenciesComponent extends Dependencies {
}
