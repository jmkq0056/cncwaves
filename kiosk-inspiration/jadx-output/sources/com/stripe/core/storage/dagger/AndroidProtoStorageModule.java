package com.stripe.core.storage.dagger;

import android.app.Application;
import com.stripe.core.storage.DefaultProtoStoreFactory;
import com.stripe.core.storage.ProtoStoreFactory;
import com.stripe.jvmcore.dagger.AppScope;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidProtoStorageModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;", "", "()V", "provideProtoStoreFactory", "Lcom/stripe/core/storage/ProtoStoreFactory;", "application", "Landroid/app/Application;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "storage_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class AndroidProtoStorageModule {
    public static final AndroidProtoStorageModule INSTANCE = new AndroidProtoStorageModule();

    private AndroidProtoStorageModule() {
    }

    @Provides
    @Reusable
    public final ProtoStoreFactory provideProtoStoreFactory(Application application, @AppScope CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        return new DefaultProtoStoreFactory(application, appScope);
    }
}
