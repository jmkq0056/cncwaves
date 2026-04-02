package com.stripe.stripeterminal.internal.common.appinfo;

import android.content.Context;
import android.os.Build;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.device.BuildValues;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.DeviceUuid;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: SdkApplicationInformationFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB5\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\u0002\u0010\u000fJ\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;", "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;", "context", "Landroid/content/Context;", "deviceUuidProvider", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "appInfoParser", "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)V", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "", "deviceOsVersion", "Lkotlin/Function0;", "(Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;Lkotlin/jvm/functions/Function0;)V", "deviceUuid", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "getDeviceUuid", "()Lcom/stripe/terminal/appinfo/DeviceUuid;", "deviceUuid$delegate", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "create", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultSdkApplicationInformationFactory implements SdkApplicationInformationFactory {
    private static final String CLIENT_TYPE = "ANDROID_SDK";
    public static final String ENABLE_SHOPIFY_KEY = "com.stripe.stripeterminal.enable_shopify_readers";
    public static final String ENABLE_WISEPAD_3S_KEY = "com.stripe.stripeterminal.enable_wisepad3s";
    public static final String IS_REACT_NATIVE_SDK_KEY = "com.stripe.stripeterminal.is_react_native";
    public static final String REACT_NATIVE_SDK_VERSION_KEY = "com.stripe.stripeterminal.react_native_sdk_version";
    private final AppInfoParser appInfoParser;
    private final BuildValues buildValues;
    private final Function0<String> deviceOsVersion;

    /* JADX INFO: renamed from: deviceUuid$delegate, reason: from kotlin metadata */
    private final DeviceUuidProvider deviceUuid;
    private final String packageName;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultSdkApplicationInformationFactory.class, "deviceUuid", "getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;", 0))};

    public DefaultSdkApplicationInformationFactory(String packageName, DeviceUuidProvider deviceUuidProvider, AppInfoParser appInfoParser, BuildValues buildValues, Function0<String> deviceOsVersion) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(deviceUuidProvider, "deviceUuidProvider");
        Intrinsics.checkNotNullParameter(appInfoParser, "appInfoParser");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        Intrinsics.checkNotNullParameter(deviceOsVersion, "deviceOsVersion");
        this.packageName = packageName;
        this.appInfoParser = appInfoParser;
        this.buildValues = buildValues;
        this.deviceOsVersion = deviceOsVersion;
        this.deviceUuid = deviceUuidProvider;
    }

    private final DeviceUuid getDeviceUuid() {
        return this.deviceUuid.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DefaultSdkApplicationInformationFactory(Context context, DeviceUuidProvider deviceUuidProvider, AppInfoParser appInfoParser, BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceUuidProvider, "deviceUuidProvider");
        Intrinsics.checkNotNullParameter(appInfoParser, "appInfoParser");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        this(packageName, deviceUuidProvider, appInfoParser, buildValues, new PropertyReference0Impl() { // from class: com.stripe.stripeterminal.internal.common.appinfo.DefaultSdkApplicationInformationFactory.1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Build.VERSION.RELEASE;
            }
        });
    }

    @Override // com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory
    public ApplicationInformation create() {
        return ApplicationInformation.INSTANCE.create(CLIENT_TYPE, "4.1.0", this.deviceOsVersion.invoke(), this.buildValues.getModel(), this.buildValues.getDevice(), getDeviceUuid(), this.buildValues.getManufacturer().getValue(), this.packageName, this.appInfoParser.getAppVersion(), this.appInfoParser.getMetadataBoolean(ENABLE_SHOPIFY_KEY), this.appInfoParser.getMetadataBoolean(ENABLE_WISEPAD_3S_KEY), this.appInfoParser.getMetadataBoolean(IS_REACT_NATIVE_SDK_KEY), this.appInfoParser.getMetadataString(REACT_NATIVE_SDK_VERSION_KEY), null);
    }
}
