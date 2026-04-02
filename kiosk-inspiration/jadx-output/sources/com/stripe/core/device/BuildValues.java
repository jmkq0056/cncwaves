package com.stripe.core.device;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BuildValues.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u000fHÆ\u0003J\t\u0010$\u001a\u00020\u0011HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\bHÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\rHÆ\u0003Jw\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011HÆ\u0001J\u0013\u0010.\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0014R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u00063"}, d2 = {"Lcom/stripe/core/device/BuildValues;", "", "brand", "", "device", "fingerprint", "hardware", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "model", "product", "baseOs", "osType", "Lcom/stripe/core/device/OsType;", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "isEmulator", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/device/HardwareManufacturer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/device/OsType;Lcom/stripe/core/device/SdkInt;Z)V", "getBaseOs", "()Ljava/lang/String;", "getBrand", "getDevice", "getFingerprint", "getHardware", "()Z", "getManufacturer", "()Lcom/stripe/core/device/HardwareManufacturer;", "getModel", "getOsType", "()Lcom/stripe/core/device/OsType;", "getProduct", "getSdkInt", "()Lcom/stripe/core/device/SdkInt;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class BuildValues {
    private final String baseOs;
    private final String brand;
    private final String device;
    private final String fingerprint;
    private final String hardware;
    private final boolean isEmulator;
    private final HardwareManufacturer manufacturer;
    private final String model;
    private final OsType osType;
    private final String product;
    private final SdkInt sdkInt;

    public static /* synthetic */ BuildValues copy$default(BuildValues buildValues, String str, String str2, String str3, String str4, HardwareManufacturer hardwareManufacturer, String str5, String str6, String str7, OsType osType, SdkInt sdkInt, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = buildValues.brand;
        }
        if ((i & 2) != 0) {
            str2 = buildValues.device;
        }
        if ((i & 4) != 0) {
            str3 = buildValues.fingerprint;
        }
        if ((i & 8) != 0) {
            str4 = buildValues.hardware;
        }
        if ((i & 16) != 0) {
            hardwareManufacturer = buildValues.manufacturer;
        }
        if ((i & 32) != 0) {
            str5 = buildValues.model;
        }
        if ((i & 64) != 0) {
            str6 = buildValues.product;
        }
        if ((i & 128) != 0) {
            str7 = buildValues.baseOs;
        }
        if ((i & 256) != 0) {
            osType = buildValues.osType;
        }
        if ((i & 512) != 0) {
            sdkInt = buildValues.sdkInt;
        }
        if ((i & 1024) != 0) {
            z = buildValues.isEmulator;
        }
        SdkInt sdkInt2 = sdkInt;
        boolean z2 = z;
        String str8 = str7;
        OsType osType2 = osType;
        String str9 = str5;
        String str10 = str6;
        HardwareManufacturer hardwareManufacturer2 = hardwareManufacturer;
        String str11 = str3;
        return buildValues.copy(str, str2, str11, str4, hardwareManufacturer2, str9, str10, str8, osType2, sdkInt2, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBrand() {
        return this.brand;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final SdkInt getSdkInt() {
        return this.sdkInt;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getIsEmulator() {
        return this.isEmulator;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDevice() {
        return this.device;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFingerprint() {
        return this.fingerprint;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getHardware() {
        return this.hardware;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final HardwareManufacturer getManufacturer() {
        return this.manufacturer;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getProduct() {
        return this.product;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getBaseOs() {
        return this.baseOs;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final OsType getOsType() {
        return this.osType;
    }

    public final BuildValues copy(String brand, String device, String fingerprint, String hardware, HardwareManufacturer manufacturer, String model, String product, String baseOs, OsType osType, SdkInt sdkInt, boolean isEmulator) {
        Intrinsics.checkNotNullParameter(brand, "brand");
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(fingerprint, "fingerprint");
        Intrinsics.checkNotNullParameter(hardware, "hardware");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(product, "product");
        Intrinsics.checkNotNullParameter(baseOs, "baseOs");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        return new BuildValues(brand, device, fingerprint, hardware, manufacturer, model, product, baseOs, osType, sdkInt, isEmulator);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BuildValues)) {
            return false;
        }
        BuildValues buildValues = (BuildValues) other;
        return Intrinsics.areEqual(this.brand, buildValues.brand) && Intrinsics.areEqual(this.device, buildValues.device) && Intrinsics.areEqual(this.fingerprint, buildValues.fingerprint) && Intrinsics.areEqual(this.hardware, buildValues.hardware) && Intrinsics.areEqual(this.manufacturer, buildValues.manufacturer) && Intrinsics.areEqual(this.model, buildValues.model) && Intrinsics.areEqual(this.product, buildValues.product) && Intrinsics.areEqual(this.baseOs, buildValues.baseOs) && Intrinsics.areEqual(this.osType, buildValues.osType) && Intrinsics.areEqual(this.sdkInt, buildValues.sdkInt) && this.isEmulator == buildValues.isEmulator;
    }

    public int hashCode() {
        return (((((((((((((((((((this.brand.hashCode() * 31) + this.device.hashCode()) * 31) + this.fingerprint.hashCode()) * 31) + this.hardware.hashCode()) * 31) + this.manufacturer.hashCode()) * 31) + this.model.hashCode()) * 31) + this.product.hashCode()) * 31) + this.baseOs.hashCode()) * 31) + this.osType.hashCode()) * 31) + this.sdkInt.hashCode()) * 31) + Boolean.hashCode(this.isEmulator);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BuildValues(brand=");
        sb.append(this.brand).append(", device=").append(this.device).append(", fingerprint=").append(this.fingerprint).append(", hardware=").append(this.hardware).append(", manufacturer=").append(this.manufacturer).append(", model=").append(this.model).append(", product=").append(this.product).append(", baseOs=").append(this.baseOs).append(", osType=").append(this.osType).append(", sdkInt=").append(this.sdkInt).append(", isEmulator=").append(this.isEmulator).append(')');
        return sb.toString();
    }

    public BuildValues(String brand, String device, String fingerprint, String hardware, HardwareManufacturer manufacturer, String model, String product, String baseOs, OsType osType, SdkInt sdkInt, boolean z) {
        Intrinsics.checkNotNullParameter(brand, "brand");
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(fingerprint, "fingerprint");
        Intrinsics.checkNotNullParameter(hardware, "hardware");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(product, "product");
        Intrinsics.checkNotNullParameter(baseOs, "baseOs");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        this.brand = brand;
        this.device = device;
        this.fingerprint = fingerprint;
        this.hardware = hardware;
        this.manufacturer = manufacturer;
        this.model = model;
        this.product = product;
        this.baseOs = baseOs;
        this.osType = osType;
        this.sdkInt = sdkInt;
        this.isEmulator = z;
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getDevice() {
        return this.device;
    }

    public final String getFingerprint() {
        return this.fingerprint;
    }

    public final String getHardware() {
        return this.hardware;
    }

    public final HardwareManufacturer getManufacturer() {
        return this.manufacturer;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getProduct() {
        return this.product;
    }

    public final String getBaseOs() {
        return this.baseOs;
    }

    public final OsType getOsType() {
        return this.osType;
    }

    public final SdkInt getSdkInt() {
        return this.sdkInt;
    }

    public final boolean isEmulator() {
        return this.isEmulator;
    }
}
