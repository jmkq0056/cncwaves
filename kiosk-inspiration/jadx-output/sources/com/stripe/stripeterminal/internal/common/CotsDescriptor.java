package com.stripe.stripeterminal.internal.common;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsDescriptor.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;", "", "cotsUuid", "", "deviceName", "deviceManufacturer", "deviceModel", "isSimulated", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getCotsUuid", "()Ljava/lang/String;", "getDeviceManufacturer", "getDeviceModel", "getDeviceName", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CotsDescriptor {
    private final String cotsUuid;
    private final String deviceManufacturer;
    private final String deviceModel;
    private final String deviceName;
    private final boolean isSimulated;

    public static /* synthetic */ CotsDescriptor copy$default(CotsDescriptor cotsDescriptor, String str, String str2, String str3, String str4, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cotsDescriptor.cotsUuid;
        }
        if ((i & 2) != 0) {
            str2 = cotsDescriptor.deviceName;
        }
        if ((i & 4) != 0) {
            str3 = cotsDescriptor.deviceManufacturer;
        }
        if ((i & 8) != 0) {
            str4 = cotsDescriptor.deviceModel;
        }
        if ((i & 16) != 0) {
            z = cotsDescriptor.isSimulated;
        }
        boolean z2 = z;
        String str5 = str3;
        return cotsDescriptor.copy(str, str2, str5, str4, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCotsUuid() {
        return this.cotsUuid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeviceName() {
        return this.deviceName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeviceModel() {
        return this.deviceModel;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsSimulated() {
        return this.isSimulated;
    }

    public final CotsDescriptor copy(String cotsUuid, String deviceName, String deviceManufacturer, String deviceModel, boolean isSimulated) {
        Intrinsics.checkNotNullParameter(cotsUuid, "cotsUuid");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(deviceManufacturer, "deviceManufacturer");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        return new CotsDescriptor(cotsUuid, deviceName, deviceManufacturer, deviceModel, isSimulated);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CotsDescriptor)) {
            return false;
        }
        CotsDescriptor cotsDescriptor = (CotsDescriptor) other;
        return Intrinsics.areEqual(this.cotsUuid, cotsDescriptor.cotsUuid) && Intrinsics.areEqual(this.deviceName, cotsDescriptor.deviceName) && Intrinsics.areEqual(this.deviceManufacturer, cotsDescriptor.deviceManufacturer) && Intrinsics.areEqual(this.deviceModel, cotsDescriptor.deviceModel) && this.isSimulated == cotsDescriptor.isSimulated;
    }

    public int hashCode() {
        return (((((((this.cotsUuid.hashCode() * 31) + this.deviceName.hashCode()) * 31) + this.deviceManufacturer.hashCode()) * 31) + this.deviceModel.hashCode()) * 31) + Boolean.hashCode(this.isSimulated);
    }

    public String toString() {
        return "CotsDescriptor(cotsUuid=" + this.cotsUuid + ", deviceName=" + this.deviceName + ", deviceManufacturer=" + this.deviceManufacturer + ", deviceModel=" + this.deviceModel + ", isSimulated=" + this.isSimulated + ')';
    }

    public CotsDescriptor(String cotsUuid, String deviceName, String deviceManufacturer, String deviceModel, boolean z) {
        Intrinsics.checkNotNullParameter(cotsUuid, "cotsUuid");
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(deviceManufacturer, "deviceManufacturer");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        this.cotsUuid = cotsUuid;
        this.deviceName = deviceName;
        this.deviceManufacturer = deviceManufacturer;
        this.deviceModel = deviceModel;
        this.isSimulated = z;
    }

    public /* synthetic */ CotsDescriptor(String str, String str2, String str3, String str4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i & 16) != 0 ? false : z);
    }

    public final String getCotsUuid() {
        return this.cotsUuid;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final String getDeviceManufacturer() {
        return this.deviceManufacturer;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final boolean isSimulated() {
        return this.isSimulated;
    }
}
