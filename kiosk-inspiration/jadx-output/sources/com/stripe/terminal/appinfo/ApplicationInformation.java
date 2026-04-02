package com.stripe.terminal.appinfo;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.strings.StringsExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApplicationInformation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b(\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 92\u00020\u0001:\u00019Bw\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0002\u0010\u0013J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u000eHÆ\u0003J\t\u0010'\u001a\u00020\u000eHÆ\u0003J\t\u0010(\u001a\u00020\u000eHÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\tHÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\u0095\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u0003HÆ\u0001J\u0013\u00104\u001a\u00020\u000e2\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u000207HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0015R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010!R\u0011\u0010\u000f\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010!¨\u0006:"}, d2 = {"Lcom/stripe/terminal/appinfo/ApplicationInformation;", "", "clientType", "", "clientVersion", "deviceOsVersion", "deviceModel", "deviceName", "deviceUuid", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "deviceManufacturer", RemoteConfigConstants.RequestFieldKey.APP_ID, RemoteConfigConstants.RequestFieldKey.APP_VERSION, "shopifyReadersEnabled", "", "wisepad3SReadersEnabled", "embeddedWithinStripeReactNativeSdk", "reactNativeSdkVersion", "deviceArchitecture", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V", "getAppId", "()Ljava/lang/String;", "getAppVersion", "getClientType", "getClientVersion", "getDeviceArchitecture", "getDeviceManufacturer", "getDeviceModel", "getDeviceName", "getDeviceOsVersion", "getDeviceUuid", "()Lcom/stripe/terminal/appinfo/DeviceUuid;", "getEmbeddedWithinStripeReactNativeSdk", "()Z", "getReactNativeSdkVersion", "getShopifyReadersEnabled", "getWisepad3SReadersEnabled", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ApplicationInformation {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String appId;
    private final String appVersion;
    private final String clientType;
    private final String clientVersion;
    private final String deviceArchitecture;
    private final String deviceManufacturer;
    private final String deviceModel;
    private final String deviceName;
    private final String deviceOsVersion;
    private final DeviceUuid deviceUuid;
    private final boolean embeddedWithinStripeReactNativeSdk;
    private final String reactNativeSdkVersion;
    private final boolean shopifyReadersEnabled;
    private final boolean wisepad3SReadersEnabled;

    public /* synthetic */ ApplicationInformation(String str, String str2, String str3, String str4, String str5, DeviceUuid deviceUuid, String str6, String str7, String str8, boolean z, boolean z2, boolean z3, String str9, String str10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, deviceUuid, str6, str7, str8, z, z2, z3, str9, str10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getClientType() {
        return this.clientType;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getShopifyReadersEnabled() {
        return this.shopifyReadersEnabled;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getWisepad3SReadersEnabled() {
        return this.wisepad3SReadersEnabled;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getEmbeddedWithinStripeReactNativeSdk() {
        return this.embeddedWithinStripeReactNativeSdk;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getReactNativeSdkVersion() {
        return this.reactNativeSdkVersion;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getDeviceArchitecture() {
        return this.deviceArchitecture;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getClientVersion() {
        return this.clientVersion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDeviceOsVersion() {
        return this.deviceOsVersion;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeviceModel() {
        return this.deviceModel;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDeviceName() {
        return this.deviceName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final DeviceUuid getDeviceUuid() {
        return this.deviceUuid;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getAppVersion() {
        return this.appVersion;
    }

    public final ApplicationInformation copy(String clientType, String clientVersion, String deviceOsVersion, String deviceModel, String deviceName, DeviceUuid deviceUuid, String deviceManufacturer, String appId, String appVersion, boolean shopifyReadersEnabled, boolean wisepad3SReadersEnabled, boolean embeddedWithinStripeReactNativeSdk, String reactNativeSdkVersion, String deviceArchitecture) {
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        Intrinsics.checkNotNullParameter(clientVersion, "clientVersion");
        Intrinsics.checkNotNullParameter(deviceOsVersion, "deviceOsVersion");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
        Intrinsics.checkNotNullParameter(deviceManufacturer, "deviceManufacturer");
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(reactNativeSdkVersion, "reactNativeSdkVersion");
        Intrinsics.checkNotNullParameter(deviceArchitecture, "deviceArchitecture");
        return new ApplicationInformation(clientType, clientVersion, deviceOsVersion, deviceModel, deviceName, deviceUuid, deviceManufacturer, appId, appVersion, shopifyReadersEnabled, wisepad3SReadersEnabled, embeddedWithinStripeReactNativeSdk, reactNativeSdkVersion, deviceArchitecture);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ApplicationInformation)) {
            return false;
        }
        ApplicationInformation applicationInformation = (ApplicationInformation) other;
        return Intrinsics.areEqual(this.clientType, applicationInformation.clientType) && Intrinsics.areEqual(this.clientVersion, applicationInformation.clientVersion) && Intrinsics.areEqual(this.deviceOsVersion, applicationInformation.deviceOsVersion) && Intrinsics.areEqual(this.deviceModel, applicationInformation.deviceModel) && Intrinsics.areEqual(this.deviceName, applicationInformation.deviceName) && Intrinsics.areEqual(this.deviceUuid, applicationInformation.deviceUuid) && Intrinsics.areEqual(this.deviceManufacturer, applicationInformation.deviceManufacturer) && Intrinsics.areEqual(this.appId, applicationInformation.appId) && Intrinsics.areEqual(this.appVersion, applicationInformation.appVersion) && this.shopifyReadersEnabled == applicationInformation.shopifyReadersEnabled && this.wisepad3SReadersEnabled == applicationInformation.wisepad3SReadersEnabled && this.embeddedWithinStripeReactNativeSdk == applicationInformation.embeddedWithinStripeReactNativeSdk && Intrinsics.areEqual(this.reactNativeSdkVersion, applicationInformation.reactNativeSdkVersion) && Intrinsics.areEqual(this.deviceArchitecture, applicationInformation.deviceArchitecture);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((this.clientType.hashCode() * 31) + this.clientVersion.hashCode()) * 31) + this.deviceOsVersion.hashCode()) * 31) + this.deviceModel.hashCode()) * 31) + this.deviceName.hashCode()) * 31) + this.deviceUuid.hashCode()) * 31) + this.deviceManufacturer.hashCode()) * 31) + this.appId.hashCode()) * 31) + this.appVersion.hashCode()) * 31) + Boolean.hashCode(this.shopifyReadersEnabled)) * 31) + Boolean.hashCode(this.wisepad3SReadersEnabled)) * 31) + Boolean.hashCode(this.embeddedWithinStripeReactNativeSdk)) * 31) + this.reactNativeSdkVersion.hashCode()) * 31) + this.deviceArchitecture.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ApplicationInformation(clientType=");
        sb.append(this.clientType).append(", clientVersion=").append(this.clientVersion).append(", deviceOsVersion=").append(this.deviceOsVersion).append(", deviceModel=").append(this.deviceModel).append(", deviceName=").append(this.deviceName).append(", deviceUuid=").append(this.deviceUuid).append(", deviceManufacturer=").append(this.deviceManufacturer).append(", appId=").append(this.appId).append(", appVersion=").append(this.appVersion).append(", shopifyReadersEnabled=").append(this.shopifyReadersEnabled).append(", wisepad3SReadersEnabled=").append(this.wisepad3SReadersEnabled).append(", embeddedWithinStripeReactNativeSdk=");
        sb.append(this.embeddedWithinStripeReactNativeSdk).append(", reactNativeSdkVersion=").append(this.reactNativeSdkVersion).append(", deviceArchitecture=").append(this.deviceArchitecture).append(')');
        return sb.toString();
    }

    private ApplicationInformation(String str, String str2, String str3, String str4, String str5, DeviceUuid deviceUuid, String str6, String str7, String str8, boolean z, boolean z2, boolean z3, String str9, String str10) {
        this.clientType = str;
        this.clientVersion = str2;
        this.deviceOsVersion = str3;
        this.deviceModel = str4;
        this.deviceName = str5;
        this.deviceUuid = deviceUuid;
        this.deviceManufacturer = str6;
        this.appId = str7;
        this.appVersion = str8;
        this.shopifyReadersEnabled = z;
        this.wisepad3SReadersEnabled = z2;
        this.embeddedWithinStripeReactNativeSdk = z3;
        this.reactNativeSdkVersion = str9;
        this.deviceArchitecture = str10;
    }

    public final String getClientType() {
        return this.clientType;
    }

    public final String getClientVersion() {
        return this.clientVersion;
    }

    public final String getDeviceOsVersion() {
        return this.deviceOsVersion;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final DeviceUuid getDeviceUuid() {
        return this.deviceUuid;
    }

    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final boolean getShopifyReadersEnabled() {
        return this.shopifyReadersEnabled;
    }

    public final boolean getWisepad3SReadersEnabled() {
        return this.wisepad3SReadersEnabled;
    }

    public final boolean getEmbeddedWithinStripeReactNativeSdk() {
        return this.embeddedWithinStripeReactNativeSdk;
    }

    public final String getReactNativeSdkVersion() {
        return this.reactNativeSdkVersion;
    }

    public final String getDeviceArchitecture() {
        return this.deviceArchitecture;
    }

    /* JADX INFO: compiled from: ApplicationInformation.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u008a\u0001\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006¨\u0006\u0016"}, d2 = {"Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;", "", "()V", "create", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "clientType", "", "clientVersion", "deviceOsVersion", "deviceModel", "deviceName", "deviceUuid", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "deviceManufacturer", RemoteConfigConstants.RequestFieldKey.APP_ID, RemoteConfigConstants.RequestFieldKey.APP_VERSION, "shopifyReadersEnabled", "", "wisepad3SReadersEnabled", "embeddedWithinStripeReactNativeSdk", "reactNativeSdkVersion", "deviceArchitecture", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ApplicationInformation create(String clientType, String clientVersion, String deviceOsVersion, String deviceModel, String deviceName, DeviceUuid deviceUuid, String deviceManufacturer, String appId, String appVersion, boolean shopifyReadersEnabled, boolean wisepad3SReadersEnabled, boolean embeddedWithinStripeReactNativeSdk, String reactNativeSdkVersion, String deviceArchitecture) {
            Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
            String strEscape = clientType != null ? StringsExtKt.escape(clientType) : null;
            if (strEscape == null) {
                strEscape = "";
            }
            String strEscape2 = clientVersion != null ? StringsExtKt.escape(clientVersion) : null;
            if (strEscape2 == null) {
                strEscape2 = "";
            }
            String strEscape3 = deviceOsVersion != null ? StringsExtKt.escape(deviceOsVersion) : null;
            if (strEscape3 == null) {
                strEscape3 = "";
            }
            String strEscape4 = deviceModel != null ? StringsExtKt.escape(deviceModel) : null;
            if (strEscape4 == null) {
                strEscape4 = "";
            }
            String strEscape5 = deviceName != null ? StringsExtKt.escape(deviceName) : null;
            if (strEscape5 == null) {
                strEscape5 = "";
            }
            String strEscape6 = deviceManufacturer != null ? StringsExtKt.escape(deviceManufacturer) : null;
            if (strEscape6 == null) {
                strEscape6 = "";
            }
            String strEscape7 = appId != null ? StringsExtKt.escape(appId) : null;
            if (strEscape7 == null) {
                strEscape7 = "";
            }
            String strEscape8 = appVersion != null ? StringsExtKt.escape(appVersion) : null;
            if (strEscape8 == null) {
                strEscape8 = "";
            }
            String strEscape9 = reactNativeSdkVersion != null ? StringsExtKt.escape(reactNativeSdkVersion) : null;
            String str = strEscape9 == null ? "" : strEscape9;
            String strEscape10 = deviceArchitecture != null ? StringsExtKt.escape(deviceArchitecture) : null;
            return new ApplicationInformation(strEscape, strEscape2, strEscape3, strEscape4, strEscape5, deviceUuid, strEscape6, strEscape7, strEscape8, shopifyReadersEnabled, wisepad3SReadersEnabled, embeddedWithinStripeReactNativeSdk, str, strEscape10 == null ? "" : strEscape10, null);
        }
    }
}
