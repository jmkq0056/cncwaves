package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import java.io.Serializable;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006\""}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflineReader;", "Ljava/io/Serializable;", "readerSerial", "", "label", "accountId", "lastActive", "Ljava/util/Date;", "timestamp", "offlineModeEnabled", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Z)V", "getAccountId", "()Ljava/lang/String;", "getLabel", "getLastActive", "()Ljava/util/Date;", "getOfflineModeEnabled", "()Z", "getReaderSerial", "getTimestamp", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SimpleOfflineReader implements Serializable {
    private final String accountId;
    private final String label;
    private final Date lastActive;
    private final boolean offlineModeEnabled;
    private final String readerSerial;
    private final Date timestamp;

    public static /* synthetic */ SimpleOfflineReader copy$default(SimpleOfflineReader simpleOfflineReader, String str, String str2, String str3, Date date, Date date2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = simpleOfflineReader.readerSerial;
        }
        if ((i & 2) != 0) {
            str2 = simpleOfflineReader.label;
        }
        if ((i & 4) != 0) {
            str3 = simpleOfflineReader.accountId;
        }
        if ((i & 8) != 0) {
            date = simpleOfflineReader.lastActive;
        }
        if ((i & 16) != 0) {
            date2 = simpleOfflineReader.timestamp;
        }
        if ((i & 32) != 0) {
            z = simpleOfflineReader.offlineModeEnabled;
        }
        Date date3 = date2;
        boolean z2 = z;
        return simpleOfflineReader.copy(str, str2, str3, date, date3, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReaderSerial() {
        return this.readerSerial;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Date getLastActive() {
        return this.lastActive;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Date getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getOfflineModeEnabled() {
        return this.offlineModeEnabled;
    }

    public final SimpleOfflineReader copy(String readerSerial, String label, String accountId, Date lastActive, Date timestamp, boolean offlineModeEnabled) {
        Intrinsics.checkNotNullParameter(readerSerial, "readerSerial");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(lastActive, "lastActive");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        return new SimpleOfflineReader(readerSerial, label, accountId, lastActive, timestamp, offlineModeEnabled);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimpleOfflineReader)) {
            return false;
        }
        SimpleOfflineReader simpleOfflineReader = (SimpleOfflineReader) other;
        return Intrinsics.areEqual(this.readerSerial, simpleOfflineReader.readerSerial) && Intrinsics.areEqual(this.label, simpleOfflineReader.label) && Intrinsics.areEqual(this.accountId, simpleOfflineReader.accountId) && Intrinsics.areEqual(this.lastActive, simpleOfflineReader.lastActive) && Intrinsics.areEqual(this.timestamp, simpleOfflineReader.timestamp) && this.offlineModeEnabled == simpleOfflineReader.offlineModeEnabled;
    }

    public int hashCode() {
        return (((((((((this.readerSerial.hashCode() * 31) + this.label.hashCode()) * 31) + this.accountId.hashCode()) * 31) + this.lastActive.hashCode()) * 31) + this.timestamp.hashCode()) * 31) + Boolean.hashCode(this.offlineModeEnabled);
    }

    public String toString() {
        return "SimpleOfflineReader(readerSerial=" + this.readerSerial + ", label=" + this.label + ", accountId=" + this.accountId + ", lastActive=" + this.lastActive + ", timestamp=" + this.timestamp + ", offlineModeEnabled=" + this.offlineModeEnabled + ')';
    }

    public SimpleOfflineReader(String readerSerial, String label, String accountId, Date lastActive, Date timestamp, boolean z) {
        Intrinsics.checkNotNullParameter(readerSerial, "readerSerial");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(lastActive, "lastActive");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        this.readerSerial = readerSerial;
        this.label = label;
        this.accountId = accountId;
        this.lastActive = lastActive;
        this.timestamp = timestamp;
        this.offlineModeEnabled = z;
    }

    public final String getReaderSerial() {
        return this.readerSerial;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getAccountId() {
        return this.accountId;
    }

    public final Date getLastActive() {
        return this.lastActive;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final boolean getOfflineModeEnabled() {
        return this.offlineModeEnabled;
    }
}
