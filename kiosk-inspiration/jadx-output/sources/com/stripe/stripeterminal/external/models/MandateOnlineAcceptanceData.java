package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MandateOnlineAcceptanceData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;", "", "ipAddress", "", "userAgent", "(Ljava/lang/String;Ljava/lang/String;)V", "getIpAddress", "()Ljava/lang/String;", "getUserAgent", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MandateOnlineAcceptanceData {
    private final String ipAddress;
    private final String userAgent;

    public static /* synthetic */ MandateOnlineAcceptanceData copy$default(MandateOnlineAcceptanceData mandateOnlineAcceptanceData, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mandateOnlineAcceptanceData.ipAddress;
        }
        if ((i & 2) != 0) {
            str2 = mandateOnlineAcceptanceData.userAgent;
        }
        return mandateOnlineAcceptanceData.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIpAddress() {
        return this.ipAddress;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUserAgent() {
        return this.userAgent;
    }

    public final MandateOnlineAcceptanceData copy(String ipAddress, String userAgent) {
        Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        return new MandateOnlineAcceptanceData(ipAddress, userAgent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MandateOnlineAcceptanceData)) {
            return false;
        }
        MandateOnlineAcceptanceData mandateOnlineAcceptanceData = (MandateOnlineAcceptanceData) other;
        return Intrinsics.areEqual(this.ipAddress, mandateOnlineAcceptanceData.ipAddress) && Intrinsics.areEqual(this.userAgent, mandateOnlineAcceptanceData.userAgent);
    }

    public int hashCode() {
        return (this.ipAddress.hashCode() * 31) + this.userAgent.hashCode();
    }

    public String toString() {
        return "MandateOnlineAcceptanceData(ipAddress=" + this.ipAddress + ", userAgent=" + this.userAgent + ')';
    }

    public MandateOnlineAcceptanceData(String ipAddress, String userAgent) {
        Intrinsics.checkNotNullParameter(ipAddress, "ipAddress");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        this.ipAddress = ipAddress;
        this.userAgent = userAgent;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final String getUserAgent() {
        return this.userAgent;
    }
}
