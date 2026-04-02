package com.stripe.core.device;

import android.os.Build;
import com.stripe.common.device.BuildConfig;
import com.stripe.core.serialnumber.DeviceSerialNumber;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DefaultSerialSupplier.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u0006H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\nH\u0001¢\u0006\u0002\b\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\f"}, d2 = {"Lcom/stripe/core/device/DefaultSerialSupplier;", "Lcom/stripe/core/device/SerialSupplier;", "isEmulator", "", "(Z)V", "get", "Lcom/stripe/core/serialnumber/DeviceSerialNumber;", "get-q_5ZKBc", "()Ljava/lang/String;", "getSerial", "", "getSerial$device_release", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultSerialSupplier implements SerialSupplier {
    private final boolean isEmulator;

    public DefaultSerialSupplier(boolean z) {
        this.isEmulator = z;
    }

    public final String getSerial$device_release() {
        String serial = Build.getSerial();
        return serial == null ? "" : serial;
    }

    @Override // com.stripe.core.device.SerialSupplier
    /* JADX INFO: renamed from: get-q_5ZKBc, reason: not valid java name */
    public String mo461getq_5ZKBc() {
        Object objM817constructorimpl;
        String serial$device_release;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultSerialSupplier defaultSerialSupplier = this;
            if (this.isEmulator) {
                serial$device_release = StringsKt.replace$default(BuildConfig.EMULATOR_SERIAL_NUMBER, '.', '-', false, 4, (Object) null);
            } else {
                serial$device_release = getSerial$device_release();
            }
            objM817constructorimpl = Result.m817constructorimpl(serial$device_release);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = "unknown";
        }
        return DeviceSerialNumber.m474constructorimpl((String) objM817constructorimpl);
    }
}
