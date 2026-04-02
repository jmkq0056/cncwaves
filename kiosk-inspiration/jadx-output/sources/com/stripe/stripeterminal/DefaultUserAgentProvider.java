package com.stripe.stripeterminal;

import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.proto.model.rest.UserAgent;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: DefaultUserAgentProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0011\u001a\u00020\fH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/DefaultUserAgentProvider;", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "appInfo$delegate", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lkotlin/Lazy;", "get", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultUserAgentProvider implements UserAgentProvider {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultUserAgentProvider.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: appInfo$delegate, reason: from kotlin metadata */
    private final ApplicationInformationProvider appInfo;

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final Lazy userAgent;

    public DefaultUserAgentProvider(ApplicationInformationProvider applicationInformationProvider) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        this.appInfo = applicationInformationProvider;
        this.userAgent = LazyKt.lazy(new Function0<UserAgent>() { // from class: com.stripe.stripeterminal.DefaultUserAgentProvider$userAgent$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final UserAgent invoke() {
                return new UserAgent(this.this$0.getAppInfo().getClientType(), this.this$0.getAppInfo().getClientVersion(), this.this$0.getAppInfo().getDeviceUuid().getValue(), null, 8, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApplicationInformation getAppInfo() {
        return this.appInfo.getValue(this, $$delegatedProperties[0]);
    }

    private final UserAgent getUserAgent() {
        return (UserAgent) this.userAgent.getValue();
    }

    @Override // com.stripe.jvmcore.environment.UserAgentProvider
    public UserAgent get() {
        return getUserAgent();
    }
}
