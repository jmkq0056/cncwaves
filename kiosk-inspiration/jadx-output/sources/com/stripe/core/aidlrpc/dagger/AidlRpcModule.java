package com.stripe.core.aidlrpc.dagger;

import com.stripe.core.aidlrpc.AidlServers;
import com.stripe.core.aidlrpc.AppPackageName;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.dagger.DeviceInfoModule;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AidlRpcModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;", "", "()V", "provideReaderAidlServer", "Lcom/stripe/core/aidlrpc/AidlServers$Reader;", "readerPackageName", "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;", "provideReaderAidlServer$aidlrpc_release", "provideReaderAppPackageName", "hardwareManufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "provideReaderAppPackageName$aidlrpc_release", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {DeviceInfoModule.class})
public final class AidlRpcModule {
    public static final AidlRpcModule INSTANCE = new AidlRpcModule();

    private AidlRpcModule() {
    }

    @Provides
    @Singleton
    public final AidlServers.Reader provideReaderAidlServer$aidlrpc_release(AppPackageName.Reader readerPackageName) {
        Intrinsics.checkNotNullParameter(readerPackageName, "readerPackageName");
        return new AidlServers.Reader(readerPackageName);
    }

    @Provides
    @Singleton
    public final AppPackageName.Reader provideReaderAppPackageName$aidlrpc_release(HardwareManufacturer hardwareManufacturer) {
        Intrinsics.checkNotNullParameter(hardwareManufacturer, "hardwareManufacturer");
        return new AppPackageName.Reader(hardwareManufacturer);
    }
}
