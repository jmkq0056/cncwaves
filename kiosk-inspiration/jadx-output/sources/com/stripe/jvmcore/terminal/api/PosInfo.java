package com.stripe.jvmcore.terminal.api;

import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.terminal.appinfo.DeviceUuid;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PosInfo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/terminal/api/PosInfo;", "", "versionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "deviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "secondaryVersionInfo", "deviceUuid", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/terminal/appinfo/DeviceUuid;)V", "getDeviceInfo", "()Lcom/stripe/proto/model/common/DeviceInfo;", "getDeviceUuid", "()Lcom/stripe/terminal/appinfo/DeviceUuid;", "getSecondaryVersionInfo", "()Lcom/stripe/proto/model/common/VersionInfoPb;", "getVersionInfo", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PosInfo {
    private final DeviceInfo deviceInfo;
    private final DeviceUuid deviceUuid;
    private final VersionInfoPb secondaryVersionInfo;
    private final VersionInfoPb versionInfo;

    public static /* synthetic */ PosInfo copy$default(PosInfo posInfo, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb2, DeviceUuid deviceUuid, int i, Object obj) {
        if ((i & 1) != 0) {
            versionInfoPb = posInfo.versionInfo;
        }
        if ((i & 2) != 0) {
            deviceInfo = posInfo.deviceInfo;
        }
        if ((i & 4) != 0) {
            versionInfoPb2 = posInfo.secondaryVersionInfo;
        }
        if ((i & 8) != 0) {
            deviceUuid = posInfo.deviceUuid;
        }
        return posInfo.copy(versionInfoPb, deviceInfo, versionInfoPb2, deviceUuid);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final VersionInfoPb getVersionInfo() {
        return this.versionInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final VersionInfoPb getSecondaryVersionInfo() {
        return this.secondaryVersionInfo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final DeviceUuid getDeviceUuid() {
        return this.deviceUuid;
    }

    public final PosInfo copy(VersionInfoPb versionInfo, DeviceInfo deviceInfo, VersionInfoPb secondaryVersionInfo, DeviceUuid deviceUuid) {
        Intrinsics.checkNotNullParameter(versionInfo, "versionInfo");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
        return new PosInfo(versionInfo, deviceInfo, secondaryVersionInfo, deviceUuid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PosInfo)) {
            return false;
        }
        PosInfo posInfo = (PosInfo) other;
        return Intrinsics.areEqual(this.versionInfo, posInfo.versionInfo) && Intrinsics.areEqual(this.deviceInfo, posInfo.deviceInfo) && Intrinsics.areEqual(this.secondaryVersionInfo, posInfo.secondaryVersionInfo) && Intrinsics.areEqual(this.deviceUuid, posInfo.deviceUuid);
    }

    public int hashCode() {
        int iHashCode = ((this.versionInfo.hashCode() * 31) + this.deviceInfo.hashCode()) * 31;
        VersionInfoPb versionInfoPb = this.secondaryVersionInfo;
        return ((iHashCode + (versionInfoPb == null ? 0 : versionInfoPb.hashCode())) * 31) + this.deviceUuid.hashCode();
    }

    public String toString() {
        return "PosInfo(versionInfo=" + this.versionInfo + ", deviceInfo=" + this.deviceInfo + ", secondaryVersionInfo=" + this.secondaryVersionInfo + ", deviceUuid=" + this.deviceUuid + ')';
    }

    public PosInfo(VersionInfoPb versionInfo, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, DeviceUuid deviceUuid) {
        Intrinsics.checkNotNullParameter(versionInfo, "versionInfo");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
        this.versionInfo = versionInfo;
        this.deviceInfo = deviceInfo;
        this.secondaryVersionInfo = versionInfoPb;
        this.deviceUuid = deviceUuid;
    }

    public final VersionInfoPb getVersionInfo() {
        return this.versionInfo;
    }

    public final DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public final VersionInfoPb getSecondaryVersionInfo() {
        return this.secondaryVersionInfo;
    }

    public final DeviceUuid getDeviceUuid() {
        return this.deviceUuid;
    }
}
