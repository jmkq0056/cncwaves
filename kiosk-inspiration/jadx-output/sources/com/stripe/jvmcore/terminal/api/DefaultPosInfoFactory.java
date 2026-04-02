package com.stripe.jvmcore.terminal.api;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.common.ApplicationModel;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.model.common.POSInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.terminal.appinfo.DeviceUuid;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okio.ByteString;

/* JADX INFO: compiled from: PosInfoFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ\b\u0010\u0010\u001a\u00020\u0011H\u0016J&\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "appInfo$delegate", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "createForLocalPos", "Lcom/stripe/jvmcore/terminal/api/PosInfo;", "createForRemotePos", "remotePosSdkVersionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "remotePosSecondarySdkVersionInfo", "remotePosDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "modifyRemotePosDeviceInfo", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPosInfoFactory implements PosInfoFactory {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultPosInfoFactory.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: appInfo$delegate, reason: from kotlin metadata */
    private final ApplicationInformationProvider appInfo;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public DefaultPosInfoFactory(ApplicationInformationProvider applicationInformationProvider, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.appInfo = applicationInformationProvider;
    }

    private final ApplicationInformation getAppInfo() {
        return this.appInfo.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.api.PosInfoFactory
    public PosInfo createForLocalPos() {
        Object objM817constructorimpl;
        VersionInfoPb versionInfoPb;
        String clientVersion = getAppInfo().getClientVersion();
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultPosInfoFactory defaultPosInfoFactory = this;
            objM817constructorimpl = Result.m817constructorimpl(VersionInfoPb.ClientType.valueOf(getAppInfo().getClientType()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        VersionInfoPb.ClientType clientType = VersionInfoPb.ClientType.CLIENT_TYPE_INVALID;
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = clientType;
        }
        ByteString byteString = null;
        VersionInfoPb versionInfoPb2 = new VersionInfoPb((VersionInfoPb.ClientType) objM817constructorimpl, clientVersion, 0, byteString, 12, null);
        ApplicationModel applicationModel = new ApplicationModel(getAppInfo().getAppId(), getAppInfo().getAppVersion(), byteString, 4, 0 == true ? 1 : 0);
        DeviceInfo.DeviceClass deviceClass = DeviceInfo.DeviceClass.POS;
        String value = getAppInfo().getDeviceUuid().getValue();
        Object[] objArr = 0 == true ? 1 : 0;
        Object[] objArr2 = 0 == true ? 1 : 0;
        Object[] objArr3 = 0 == true ? 1 : 0;
        Object[] objArr4 = 0 == true ? 1 : 0;
        Object[] objArr5 = 0 == true ? 1 : 0;
        Object[] objArr6 = 0 == true ? 1 : 0;
        Object[] objArr7 = 0 == true ? 1 : 0;
        Object[] objArr8 = 0 == true ? 1 : 0;
        Object[] objArr9 = 0 == true ? 1 : 0;
        DeviceInfo deviceInfo = new DeviceInfo(deviceClass, value, new HardwareModel(null, objArr2, new POSInfo(getAppInfo().getDeviceName(), objArr, 2, 0 == true ? 1 : 0), null, null, null, null, null, null, 507, null), applicationModel, objArr3, getAppInfo().getDeviceModel(), getAppInfo().getDeviceOsVersion(), objArr5, objArr6, objArr7, objArr8, objArr9, null, objArr4, null, null, 65424, null);
        if (getAppInfo().getEmbeddedWithinStripeReactNativeSdk()) {
            versionInfoPb = new VersionInfoPb(VersionInfoPb.ClientType.RN_ANDROID_SDK, getAppInfo().getReactNativeSdkVersion(), 0, null, 12, null);
        } else {
            versionInfoPb = null;
        }
        return new PosInfo(versionInfoPb2, deviceInfo, versionInfoPb, getAppInfo().getDeviceUuid());
    }

    @Override // com.stripe.jvmcore.terminal.api.PosInfoFactory
    public PosInfo createForRemotePos(VersionInfoPb remotePosSdkVersionInfo, VersionInfoPb remotePosSecondarySdkVersionInfo, DeviceInfo remotePosDeviceInfo) {
        VersionInfoPb versionInfoPb = remotePosSdkVersionInfo == null ? new VersionInfoPb(null, null, 0, null, 15, null) : remotePosSdkVersionInfo;
        DeviceInfo deviceInfoModifyRemotePosDeviceInfo = modifyRemotePosDeviceInfo(remotePosDeviceInfo == null ? new DeviceInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null) : remotePosDeviceInfo);
        String str = remotePosDeviceInfo != null ? remotePosDeviceInfo.device_uuid : null;
        if (str == null) {
            str = "";
        }
        return new PosInfo(versionInfoPb, deviceInfoModifyRemotePosDeviceInfo, remotePosSecondarySdkVersionInfo, new DeviceUuid(str));
    }

    private final DeviceInfo modifyRemotePosDeviceInfo(DeviceInfo remotePosDeviceInfo) {
        if (remotePosDeviceInfo.device_class == DeviceInfo.DeviceClass.POS) {
            return remotePosDeviceInfo;
        }
        DeviceInfo deviceInfo = new DeviceInfo(DeviceInfo.DeviceClass.POS, null, null, remotePosDeviceInfo.app_model, null, null, null, null, null, null, null, null, null, null, remotePosDeviceInfo.location, null, 49142, null);
        this.logger.w("Changed remote POS device info from " + remotePosDeviceInfo + " to " + deviceInfo, new Pair[0]);
        return deviceInfo;
    }
}
