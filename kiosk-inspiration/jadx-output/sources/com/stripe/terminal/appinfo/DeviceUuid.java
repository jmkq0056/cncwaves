package com.stripe.terminal.appinfo;

import com.stripe.strings.StringsExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceUuid.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/terminal/appinfo/DeviceUuid;", "", "rawValue", "", "(Ljava/lang/String;)V", "value", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DeviceUuid {
    private final String rawValue;
    private final String value;

    /* JADX INFO: renamed from: component1, reason: from getter */
    private final String getRawValue() {
        return this.rawValue;
    }

    public static /* synthetic */ DeviceUuid copy$default(DeviceUuid deviceUuid, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deviceUuid.rawValue;
        }
        return deviceUuid.copy(str);
    }

    public final DeviceUuid copy(String rawValue) {
        Intrinsics.checkNotNullParameter(rawValue, "rawValue");
        return new DeviceUuid(rawValue);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DeviceUuid) && Intrinsics.areEqual(this.rawValue, ((DeviceUuid) other).rawValue);
    }

    public int hashCode() {
        return this.rawValue.hashCode();
    }

    public String toString() {
        return "DeviceUuid(rawValue=" + this.rawValue + ')';
    }

    public DeviceUuid(String rawValue) {
        Intrinsics.checkNotNullParameter(rawValue, "rawValue");
        this.rawValue = rawValue;
        this.value = StringsExtKt.escape(rawValue);
    }

    public final String getValue() {
        return this.value;
    }
}
