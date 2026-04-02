package com.stripe.stripeterminal.dagger;

import com.stripe.device.dagger.ActiveLocationConfigModule;
import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.offlinemode.dagger.OfflineForwardingModule;
import com.stripe.offlinemode.dagger.OfflineHelperModule;
import com.stripe.offlinemode.dagger.OfflineLogModule;
import com.stripe.offlinemode.dagger.OfflineReaderEventsModule;
import com.stripe.offlinemode.dagger.OfflineStorageModule;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: OfflineModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\bJ\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\u000bJ\b\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\u0007H\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/dagger/OfflineModule;", "", "offlineListener", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V", "bindsOfflineListener", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "bindsOfflineListener$sdkmanager_publish", "bindsOfflineStatusChangeListener", "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;", "bindsOfflineStatusChangeListener$sdkmanager_publish", "provideHealthCheckHttpUrl", "Lokhttp3/HttpUrl;", "provideProxyOfflineListener", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {ActiveLocationConfigModule.class, OfflineConnectivityModule.class, OfflineForwardingModule.class, OfflineHelperModule.class, OfflineLogModule.class, OfflineReaderEventsModule.class, OfflineStorageModule.class})
public final class OfflineModule {
    private final OfflineListener offlineListener;

    public OfflineModule(OfflineListener offlineListener) {
        this.offlineListener = offlineListener;
    }

    @Provides
    @Singleton
    public final ProxyOfflineListener provideProxyOfflineListener() {
        return new ProxyOfflineListener(this.offlineListener);
    }

    @Provides
    @Singleton
    public final HttpUrl provideHealthCheckHttpUrl() {
        return new HttpUrl.Builder().scheme("https").host("api.stripe.com").addPathSegment("healthcheck").build();
    }

    @Provides
    public final OfflineListener bindsOfflineListener$sdkmanager_publish(ProxyOfflineListener proxyOfflineListener) {
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        return proxyOfflineListener;
    }

    @Provides
    public final OfflineStatusChangeListener bindsOfflineStatusChangeListener$sdkmanager_publish(ProxyOfflineListener proxyOfflineListener) {
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        return proxyOfflineListener;
    }
}
