package com.stripe.core.hardware.updates;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderVersion.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderVersion;", "", "configVersion", "", "firmwareVersion", "keyProfileName", "keyProfileId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getConfigVersion", "()Ljava/lang/String;", "getFirmwareVersion", "getKeyProfileId", "getKeyProfileName", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderVersion {
    private final String configVersion;
    private final String firmwareVersion;
    private final String keyProfileId;
    private final String keyProfileName;

    public static /* synthetic */ ReaderVersion copy$default(ReaderVersion readerVersion, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerVersion.configVersion;
        }
        if ((i & 2) != 0) {
            str2 = readerVersion.firmwareVersion;
        }
        if ((i & 4) != 0) {
            str3 = readerVersion.keyProfileName;
        }
        if ((i & 8) != 0) {
            str4 = readerVersion.keyProfileId;
        }
        return readerVersion.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getConfigVersion() {
        return this.configVersion;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getKeyProfileName() {
        return this.keyProfileName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getKeyProfileId() {
        return this.keyProfileId;
    }

    public final ReaderVersion copy(String configVersion, String firmwareVersion, String keyProfileName, String keyProfileId) {
        return new ReaderVersion(configVersion, firmwareVersion, keyProfileName, keyProfileId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderVersion)) {
            return false;
        }
        ReaderVersion readerVersion = (ReaderVersion) other;
        return Intrinsics.areEqual(this.configVersion, readerVersion.configVersion) && Intrinsics.areEqual(this.firmwareVersion, readerVersion.firmwareVersion) && Intrinsics.areEqual(this.keyProfileName, readerVersion.keyProfileName) && Intrinsics.areEqual(this.keyProfileId, readerVersion.keyProfileId);
    }

    public int hashCode() {
        String str = this.configVersion;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.firmwareVersion;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.keyProfileName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.keyProfileId;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "ReaderVersion(configVersion=" + this.configVersion + ", firmwareVersion=" + this.firmwareVersion + ", keyProfileName=" + this.keyProfileName + ", keyProfileId=" + this.keyProfileId + ')';
    }

    public ReaderVersion(String str, String str2, String str3, String str4) {
        this.configVersion = str;
        this.firmwareVersion = str2;
        this.keyProfileName = str3;
        this.keyProfileId = str4;
    }

    public final String getConfigVersion() {
        return this.configVersion;
    }

    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public final String getKeyProfileName() {
        return this.keyProfileName;
    }

    public final String getKeyProfileId() {
        return this.keyProfileId;
    }
}
