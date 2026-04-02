package com.stripe.jvmcore.crpcclient;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: TestEnvironmentProxySelector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/TestEnvironmentProxySelector;", "Ljava/net/ProxySelector;", "()V", "connectFailed", "", "uri", "Ljava/net/URI;", "sa", "Ljava/net/SocketAddress;", "ioe", "Ljava/io/IOException;", "select", "", "Ljava/net/Proxy;", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TestEnvironmentProxySelector extends ProxySelector {
    public static final TestEnvironmentProxySelector INSTANCE = new TestEnvironmentProxySelector();

    private TestEnvironmentProxySelector() {
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress sa, IOException ioe) {
        ProxySelector.getDefault().connectFailed(uri, sa, ioe);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        String host;
        if (uri == null || (host = uri.getHost()) == null || !new Regex("[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+").matches(host)) {
            List<Proxy> listSelect = ProxySelector.getDefault().select(uri);
            Intrinsics.checkNotNull(listSelect);
            return listSelect;
        }
        Proxy NO_PROXY = Proxy.NO_PROXY;
        Intrinsics.checkNotNullExpressionValue(NO_PROXY, "NO_PROXY");
        return CollectionsKt.mutableListOf(NO_PROXY);
    }
}
