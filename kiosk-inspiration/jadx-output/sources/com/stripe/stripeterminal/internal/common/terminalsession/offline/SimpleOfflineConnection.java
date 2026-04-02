package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import java.io.Serializable;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\bHÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J|\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineConnection;", "Ljava/io/Serializable;", "readerId", "", "firmwareVersion", "accountId", "configVersion", "timestamp", "Ljava/util/Date;", "liveMode", "", "locationName", "locationId", "ipAddress", "baseUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccountId", "()Ljava/lang/String;", "getBaseUrl", "getConfigVersion", "getFirmwareVersion", "getIpAddress", "getLiveMode", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLocationId", "getLocationName", "getReaderId", "getTimestamp", "()Ljava/util/Date;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineConnection;", "equals", "other", "", "hashCode", "", "toString", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SimpleOfflineConnection implements Serializable {
    private final String accountId;
    private final String baseUrl;
    private final String configVersion;
    private final String firmwareVersion;
    private final String ipAddress;
    private final Boolean liveMode;
    private final String locationId;
    private final String locationName;
    private final String readerId;
    private final Date timestamp;

    public static /* synthetic */ SimpleOfflineConnection copy$default(SimpleOfflineConnection simpleOfflineConnection, String str, String str2, String str3, String str4, Date date, Boolean bool, String str5, String str6, String str7, String str8, int i, Object obj) {
        if ((i & 1) != 0) {
            str = simpleOfflineConnection.readerId;
        }
        if ((i & 2) != 0) {
            str2 = simpleOfflineConnection.firmwareVersion;
        }
        if ((i & 4) != 0) {
            str3 = simpleOfflineConnection.accountId;
        }
        if ((i & 8) != 0) {
            str4 = simpleOfflineConnection.configVersion;
        }
        if ((i & 16) != 0) {
            date = simpleOfflineConnection.timestamp;
        }
        if ((i & 32) != 0) {
            bool = simpleOfflineConnection.liveMode;
        }
        if ((i & 64) != 0) {
            str5 = simpleOfflineConnection.locationName;
        }
        if ((i & 128) != 0) {
            str6 = simpleOfflineConnection.locationId;
        }
        if ((i & 256) != 0) {
            str7 = simpleOfflineConnection.ipAddress;
        }
        if ((i & 512) != 0) {
            str8 = simpleOfflineConnection.baseUrl;
        }
        String str9 = str7;
        String str10 = str8;
        String str11 = str5;
        String str12 = str6;
        Date date2 = date;
        Boolean bool2 = bool;
        return simpleOfflineConnection.copy(str, str2, str3, str4, date2, bool2, str11, str12, str9, str10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReaderId() {
        return this.readerId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getConfigVersion() {
        return this.configVersion;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Date getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Boolean getLiveMode() {
        return this.liveMode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getLocationName() {
        return this.locationName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getLocationId() {
        return this.locationId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final SimpleOfflineConnection copy(String readerId, String firmwareVersion, String accountId, String configVersion, Date timestamp, Boolean liveMode, String locationName, String locationId, String ipAddress, String baseUrl) {
        Intrinsics.checkNotNullParameter(readerId, "readerId");
        Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(configVersion, "configVersion");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        return new SimpleOfflineConnection(readerId, firmwareVersion, accountId, configVersion, timestamp, liveMode, locationName, locationId, ipAddress, baseUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimpleOfflineConnection)) {
            return false;
        }
        SimpleOfflineConnection simpleOfflineConnection = (SimpleOfflineConnection) other;
        return Intrinsics.areEqual(this.readerId, simpleOfflineConnection.readerId) && Intrinsics.areEqual(this.firmwareVersion, simpleOfflineConnection.firmwareVersion) && Intrinsics.areEqual(this.accountId, simpleOfflineConnection.accountId) && Intrinsics.areEqual(this.configVersion, simpleOfflineConnection.configVersion) && Intrinsics.areEqual(this.timestamp, simpleOfflineConnection.timestamp) && Intrinsics.areEqual(this.liveMode, simpleOfflineConnection.liveMode) && Intrinsics.areEqual(this.locationName, simpleOfflineConnection.locationName) && Intrinsics.areEqual(this.locationId, simpleOfflineConnection.locationId) && Intrinsics.areEqual(this.ipAddress, simpleOfflineConnection.ipAddress) && Intrinsics.areEqual(this.baseUrl, simpleOfflineConnection.baseUrl);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.readerId.hashCode() * 31) + this.firmwareVersion.hashCode()) * 31) + this.accountId.hashCode()) * 31) + this.configVersion.hashCode()) * 31) + this.timestamp.hashCode()) * 31;
        Boolean bool = this.liveMode;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.locationName;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.locationId;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ipAddress;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.baseUrl;
        return iHashCode5 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "SimpleOfflineConnection(readerId=" + this.readerId + ", firmwareVersion=" + this.firmwareVersion + ", accountId=" + this.accountId + ", configVersion=" + this.configVersion + ", timestamp=" + this.timestamp + ", liveMode=" + this.liveMode + ", locationName=" + this.locationName + ", locationId=" + this.locationId + ", ipAddress=" + this.ipAddress + ", baseUrl=" + this.baseUrl + ')';
    }

    public SimpleOfflineConnection(String readerId, String firmwareVersion, String accountId, String configVersion, Date timestamp, Boolean bool, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(readerId, "readerId");
        Intrinsics.checkNotNullParameter(firmwareVersion, "firmwareVersion");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(configVersion, "configVersion");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        this.readerId = readerId;
        this.firmwareVersion = firmwareVersion;
        this.accountId = accountId;
        this.configVersion = configVersion;
        this.timestamp = timestamp;
        this.liveMode = bool;
        this.locationName = str;
        this.locationId = str2;
        this.ipAddress = str3;
        this.baseUrl = str4;
    }

    public final String getReaderId() {
        return this.readerId;
    }

    public final String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public final String getAccountId() {
        return this.accountId;
    }

    public final String getConfigVersion() {
        return this.configVersion;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final Boolean getLiveMode() {
        return this.liveMode;
    }

    public final String getLocationName() {
        return this.locationName;
    }

    public final String getLocationId() {
        return this.locationId;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }
}
