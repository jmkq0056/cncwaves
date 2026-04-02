package com.stripe.jvmcore.terminal.requestfactories.activate;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.api.sdk.ActivateTerminalRequest;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.sdk.PosHardwareInfo;
import com.stripe.proto.model.sdk.PosSoftwareInfo;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: DefaultActivateApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "appInfo$delegate", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "activateTerminal", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "posConnectionToken", "", "failIfInUse", "", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultActivateApiFactory implements ActivateJackRabbitApiFactory {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultActivateApiFactory.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: appInfo$delegate, reason: from kotlin metadata */
    private final ApplicationInformationProvider appInfo;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public DefaultActivateApiFactory(ApplicationInformationProvider applicationInformationProvider, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.appInfo = applicationInformationProvider;
    }

    private final ApplicationInformation getAppInfo() {
        return this.appInfo.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory
    public ActivateTerminalRequest activateTerminal(String posConnectionToken, boolean failIfInUse) {
        Intrinsics.checkNotNullParameter(posConnectionToken, "posConnectionToken");
        ActivateTerminalRequest activateTerminalRequest = new ActivateTerminalRequest(posConnectionToken, getAppInfo().getDeviceUuid().getValue(), new PosHardwareInfo(null, null, null, null, getAppInfo().getDeviceModel(), getAppInfo().getDeviceArchitecture(), null, null, 207, null), new PosSoftwareInfo(getAppInfo().getDeviceOsVersion(), getAppInfo().getAppId(), getAppInfo().getAppVersion(), getAppInfo().getClientVersion(), null, 16, 0 == true ? 1 : 0), failIfInUse, getAppInfo().getEmbeddedWithinStripeReactNativeSdk() ? new VersionInfoPb(VersionInfoPb.ClientType.RN_ANDROID_SDK, getAppInfo().getReactNativeSdkVersion(), 0, null, 12, null) : null, null, null, null, null, null, 1984, null);
        this.logger.d("Created ActivateTerminalRequest", TuplesKt.to("request", activateTerminalRequest));
        return activateTerminalRequest;
    }
}
