package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import java.io.Serializable;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J?\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\n2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;", "Ljava/io/Serializable;", "offlineId", "", "paymentIntentId", "type", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;", "createdAt", "Ljava/util/Date;", "forwarded", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;Ljava/util/Date;Z)V", "getCreatedAt", "()Ljava/util/Date;", "getForwarded", "()Z", "getOfflineId", "()Ljava/lang/String;", "getPaymentIntentId", "getType", "()Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SimpleOfflinePayment implements Serializable {
    private final Date createdAt;
    private final boolean forwarded;
    private final String offlineId;
    private final String paymentIntentId;
    private final PaymentIntentRequestType type;

    public static /* synthetic */ SimpleOfflinePayment copy$default(SimpleOfflinePayment simpleOfflinePayment, String str, String str2, PaymentIntentRequestType paymentIntentRequestType, Date date, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = simpleOfflinePayment.offlineId;
        }
        if ((i & 2) != 0) {
            str2 = simpleOfflinePayment.paymentIntentId;
        }
        if ((i & 4) != 0) {
            paymentIntentRequestType = simpleOfflinePayment.type;
        }
        if ((i & 8) != 0) {
            date = simpleOfflinePayment.createdAt;
        }
        if ((i & 16) != 0) {
            z = simpleOfflinePayment.forwarded;
        }
        boolean z2 = z;
        PaymentIntentRequestType paymentIntentRequestType2 = paymentIntentRequestType;
        return simpleOfflinePayment.copy(str, str2, paymentIntentRequestType2, date, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOfflineId() {
        return this.offlineId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final PaymentIntentRequestType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Date getCreatedAt() {
        return this.createdAt;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getForwarded() {
        return this.forwarded;
    }

    public final SimpleOfflinePayment copy(String offlineId, String paymentIntentId, PaymentIntentRequestType type, Date createdAt, boolean forwarded) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        return new SimpleOfflinePayment(offlineId, paymentIntentId, type, createdAt, forwarded);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimpleOfflinePayment)) {
            return false;
        }
        SimpleOfflinePayment simpleOfflinePayment = (SimpleOfflinePayment) other;
        return Intrinsics.areEqual(this.offlineId, simpleOfflinePayment.offlineId) && Intrinsics.areEqual(this.paymentIntentId, simpleOfflinePayment.paymentIntentId) && this.type == simpleOfflinePayment.type && Intrinsics.areEqual(this.createdAt, simpleOfflinePayment.createdAt) && this.forwarded == simpleOfflinePayment.forwarded;
    }

    public int hashCode() {
        String str = this.offlineId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.paymentIntentId;
        return ((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.type.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + Boolean.hashCode(this.forwarded);
    }

    public String toString() {
        return "SimpleOfflinePayment(offlineId=" + this.offlineId + ", paymentIntentId=" + this.paymentIntentId + ", type=" + this.type + ", createdAt=" + this.createdAt + ", forwarded=" + this.forwarded + ')';
    }

    public SimpleOfflinePayment(String str, String str2, PaymentIntentRequestType type, Date createdAt, boolean z) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        this.offlineId = str;
        this.paymentIntentId = str2;
        this.type = type;
        this.createdAt = createdAt;
        this.forwarded = z;
    }

    public final String getOfflineId() {
        return this.offlineId;
    }

    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    public final PaymentIntentRequestType getType() {
        return this.type;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }

    public final boolean getForwarded() {
        return this.forwarded;
    }
}
