package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.environment.EnvironmentKt;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.restclient.CustomHeadersInterceptor;
import com.stripe.proto.model.rest.UserAgent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: HttpClientConfigurator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\u000b\u001a\u00020\f*\u00020\fH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/DefaultHttpClientConfigurator;", "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "(Lcom/stripe/jvmcore/environment/UserAgentProvider;)V", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "configure", "Lokhttp3/OkHttpClient$Builder;", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultHttpClientConfigurator implements HttpClientConfigurator {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultHttpClientConfigurator.class, "userAgent", "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;", 0))};

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final UserAgentProvider userAgent;

    public DefaultHttpClientConfigurator(UserAgentProvider userAgentProvider) {
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.userAgent = userAgentProvider;
    }

    private final UserAgent getUserAgent() {
        return this.userAgent.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.jvmcore.client.dagger.HttpClientConfigurator
    public OkHttpClient.Builder configure(OkHttpClient.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.addInterceptor(new CustomHeadersInterceptor(EnvironmentKt.toRequestHeaders(getUserAgent(), false)));
        return builder;
    }
}
