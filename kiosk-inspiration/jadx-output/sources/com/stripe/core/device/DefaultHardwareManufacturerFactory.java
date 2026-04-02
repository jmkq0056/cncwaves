package com.stripe.core.device;

import android.os.Build;
import com.stripe.core.device.HardwareManufacturer;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HardwareManufacturerFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;", "Lcom/stripe/core/device/HardwareManufacturerFactory;", "getBuildManufacturer", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "create", "Lcom/stripe/core/device/HardwareManufacturer;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultHardwareManufacturerFactory implements HardwareManufacturerFactory {
    private final Function0<String> getBuildManufacturer;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultHardwareManufacturerFactory() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DefaultHardwareManufacturerFactory(Function0<String> getBuildManufacturer) {
        Intrinsics.checkNotNullParameter(getBuildManufacturer, "getBuildManufacturer");
        this.getBuildManufacturer = getBuildManufacturer;
    }

    public /* synthetic */ DefaultHardwareManufacturerFactory(AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Function0<String>() { // from class: com.stripe.core.device.DefaultHardwareManufacturerFactory.1
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return Build.MANUFACTURER;
            }
        } : anonymousClass1);
    }

    @Override // com.stripe.core.device.HardwareManufacturerFactory
    public HardwareManufacturer create() {
        Object objM817constructorimpl;
        Function0<String> function0 = this.getBuildManufacturer;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(function0.invoke());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        String str = (String) objM817constructorimpl;
        if (str == null) {
            str = "";
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return Intrinsics.areEqual(upperCase, "BBPOS") ? HardwareManufacturer.Bbpos.INSTANCE : Intrinsics.areEqual(upperCase, "VERIFONE") ? HardwareManufacturer.Verifone.INSTANCE : new HardwareManufacturer.Other(str);
    }
}
