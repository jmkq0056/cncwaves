package com.stripe.core.device;

import android.os.Build;
import com.stripe.core.device.OsType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DefaultBuildValuesFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\b2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/device/DefaultBuildValuesFactory;", "Lcom/stripe/core/device/BuildValuesFactory;", "hardwareManufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)V", "brand", "", "device", "fingerprint", "manufacturer", "model", "product", "create", "Lcom/stripe/core/device/BuildValues;", "getBuildValue", "supplier", "Lkotlin/Function0;", "getOsType", "Lcom/stripe/core/device/OsType;", "isEmulator", "", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultBuildValuesFactory implements BuildValuesFactory {
    private final String brand;
    private final String device;
    private final String fingerprint;
    private final HardwareManufacturer hardwareManufacturer;
    private final String manufacturer;
    private final String model;
    private final String product;
    private final SdkInt sdkInt;

    public DefaultBuildValuesFactory(HardwareManufacturer hardwareManufacturer, SdkInt sdkInt) {
        Intrinsics.checkNotNullParameter(hardwareManufacturer, "hardwareManufacturer");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        this.hardwareManufacturer = hardwareManufacturer;
        this.sdkInt = sdkInt;
        this.brand = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$brand$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.BRAND;
            }
        });
        this.device = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$device$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.DEVICE;
            }
        });
        this.fingerprint = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$fingerprint$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.FINGERPRINT;
            }
        });
        this.manufacturer = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$manufacturer$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.MANUFACTURER;
            }
        });
        this.model = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$model$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.MODEL;
            }
        });
        this.product = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$product$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.PRODUCT;
            }
        });
    }

    @Override // com.stripe.core.device.BuildValuesFactory
    public BuildValues create() {
        boolean zIsEmulator = isEmulator();
        return new BuildValues(this.brand, this.device, this.fingerprint, getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory.create.1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.HARDWARE;
            }
        }), this.hardwareManufacturer, this.model, this.product, getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory.create.2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.VERSION.BASE_OS;
            }
        }), getOsType(), this.sdkInt, zIsEmulator);
    }

    private final boolean isEmulator() {
        return (StringsKt.startsWith$default(this.brand, "generic", false, 2, (Object) null) && StringsKt.startsWith$default(this.device, "generic", false, 2, (Object) null)) || StringsKt.startsWith$default(this.fingerprint, "generic", false, 2, (Object) null) || StringsKt.startsWith$default(this.fingerprint, "unknown", false, 2, (Object) null) || StringsKt.contains((CharSequence) this.model, (CharSequence) "sdk", true) || StringsKt.contains$default((CharSequence) this.model, (CharSequence) "Emulator", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) this.manufacturer, (CharSequence) "Genymotion", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) this.product, (CharSequence) "sdk", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) this.product, (CharSequence) "emulator", false, 2, (Object) null);
    }

    private final OsType getOsType() {
        String buildValue = getBuildValue(new Function0<String>() { // from class: com.stripe.core.device.DefaultBuildValuesFactory$getOsType$osTypeValue$1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.TYPE;
            }
        });
        return Intrinsics.areEqual(buildValue, OsType.User.INSTANCE.getValue()) ? OsType.User.INSTANCE : Intrinsics.areEqual(buildValue, OsType.UserDebug.INSTANCE.getValue()) ? OsType.UserDebug.INSTANCE : Intrinsics.areEqual(buildValue, OsType.Eng.INSTANCE.getValue()) ? OsType.Eng.INSTANCE : new OsType.Other(buildValue);
    }

    private final String getBuildValue(Function0<String> supplier) {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(supplier.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        String str = (String) objM817constructorimpl;
        return str == null ? "" : str;
    }
}
