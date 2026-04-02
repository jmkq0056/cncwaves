package com.stripe.stripeterminal.dagger;

import com.stripe.core.storage.dagger.AndroidStorageModule;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import com.stripe.stripeterminal.internal.common.storage.DefaultBluetoothDeviceNameRepository;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StorageModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/dagger/StorageModule;", "", "()V", "provideBluetoothDeviceNameRepository", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {AndroidStorageModule.class})
public final class StorageModule {
    @Provides
    @Singleton
    public final BluetoothDeviceNameRepository provideBluetoothDeviceNameRepository(SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        return new DefaultBluetoothDeviceNameRepository(sharedPrefs);
    }
}
