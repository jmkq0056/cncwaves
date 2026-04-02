package com.stripe.core.transactionlog;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionLog.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BU\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003Jl\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0015\u0010\u000eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006)"}, d2 = {"Lcom/stripe/core/transactionlog/TransactionLog;", "", "intentId", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "tip", FirebaseAnalytics.Param.CURRENCY, "result", "tlv", "config", "uid", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getConfig", "()Ljava/lang/String;", "getCurrency", "getIntentId", "getResult", "getTip", "getTlv", "getUid", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/stripe/core/transactionlog/TransactionLog;", "equals", "", "other", "hashCode", "", "toString", "transactionlog_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TransactionLog {
    private final Long amount;
    private final String config;
    private final String currency;
    private final String intentId;
    private final String result;
    private final Long tip;
    private final String tlv;
    private final long uid;

    public static /* synthetic */ TransactionLog copy$default(TransactionLog transactionLog, String str, Long l, Long l2, String str2, String str3, String str4, String str5, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionLog.intentId;
        }
        if ((i & 2) != 0) {
            l = transactionLog.amount;
        }
        if ((i & 4) != 0) {
            l2 = transactionLog.tip;
        }
        if ((i & 8) != 0) {
            str2 = transactionLog.currency;
        }
        if ((i & 16) != 0) {
            str3 = transactionLog.result;
        }
        if ((i & 32) != 0) {
            str4 = transactionLog.tlv;
        }
        if ((i & 64) != 0) {
            str5 = transactionLog.config;
        }
        if ((i & 128) != 0) {
            j = transactionLog.uid;
        }
        long j2 = j;
        String str6 = str4;
        String str7 = str5;
        String str8 = str3;
        Long l3 = l2;
        return transactionLog.copy(str, l, l3, str2, str8, str6, str7, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getIntentId() {
        return this.intentId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Long getTip() {
        return this.tip;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getResult() {
        return this.result;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTlv() {
        return this.tlv;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getConfig() {
        return this.config;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    public final TransactionLog copy(String intentId, Long amount, Long tip, String currency, String result, String tlv, String config, long uid) {
        return new TransactionLog(intentId, amount, tip, currency, result, tlv, config, uid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransactionLog)) {
            return false;
        }
        TransactionLog transactionLog = (TransactionLog) other;
        return Intrinsics.areEqual(this.intentId, transactionLog.intentId) && Intrinsics.areEqual(this.amount, transactionLog.amount) && Intrinsics.areEqual(this.tip, transactionLog.tip) && Intrinsics.areEqual(this.currency, transactionLog.currency) && Intrinsics.areEqual(this.result, transactionLog.result) && Intrinsics.areEqual(this.tlv, transactionLog.tlv) && Intrinsics.areEqual(this.config, transactionLog.config) && this.uid == transactionLog.uid;
    }

    public int hashCode() {
        String str = this.intentId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.amount;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.tip;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str2 = this.currency;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.result;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.tlv;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.config;
        return ((iHashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31) + Long.hashCode(this.uid);
    }

    public String toString() {
        return "TransactionLog(intentId=" + this.intentId + ", amount=" + this.amount + ", tip=" + this.tip + ", currency=" + this.currency + ", result=" + this.result + ", tlv=" + this.tlv + ", config=" + this.config + ", uid=" + this.uid + ')';
    }

    public TransactionLog(String str, Long l, Long l2, String str2, String str3, String str4, String str5, long j) {
        this.intentId = str;
        this.amount = l;
        this.tip = l2;
        this.currency = str2;
        this.result = str3;
        this.tlv = str4;
        this.config = str5;
        this.uid = j;
    }

    public /* synthetic */ TransactionLog(String str, Long l, Long l2, String str2, String str3, String str4, String str5, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, l2, str2, str3, str4, str5, (i & 128) != 0 ? 0L : j);
    }

    public final String getIntentId() {
        return this.intentId;
    }

    public final Long getAmount() {
        return this.amount;
    }

    public final Long getTip() {
        return this.tip;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getResult() {
        return this.result;
    }

    public final String getTlv() {
        return this.tlv;
    }

    public final String getConfig() {
        return this.config;
    }

    public final long getUid() {
        return this.uid;
    }
}
