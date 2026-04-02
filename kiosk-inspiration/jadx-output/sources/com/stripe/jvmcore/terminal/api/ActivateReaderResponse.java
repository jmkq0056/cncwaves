package com.stripe.jvmcore.terminal.api;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.model.merchant.ApiLocationPb;
import kotlin.Metadata;

/* JADX INFO: compiled from: ActivateReaderResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B]\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "", "accountId", "", "livemode", "", "readerId", "stripeSessionToken", "offlineStripeSessionToken", "rpcSessionToken", "connectionContextId", "canonicalReaderVersion", "", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V", "getAccountId", "()Ljava/lang/String;", "getCanonicalReaderVersion", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getConnectionContextId", "getLivemode", "()Z", "getLocation", "()Lcom/stripe/proto/model/merchant/ApiLocationPb;", "getOfflineStripeSessionToken", "getReaderId", "getRpcSessionToken", "getStripeSessionToken", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateReaderResponse {
    private final String accountId;
    private final Long canonicalReaderVersion;
    private final String connectionContextId;
    private final boolean livemode;
    private final ApiLocationPb location;
    private final String offlineStripeSessionToken;
    private final String readerId;
    private final String rpcSessionToken;
    private final String stripeSessionToken;

    public ActivateReaderResponse(String str, boolean z, String str2, String str3, String str4, String str5, String str6, Long l, ApiLocationPb apiLocationPb) {
        this.accountId = str;
        this.livemode = z;
        this.readerId = str2;
        this.stripeSessionToken = str3;
        this.offlineStripeSessionToken = str4;
        this.rpcSessionToken = str5;
        this.connectionContextId = str6;
        this.canonicalReaderVersion = l;
        this.location = apiLocationPb;
    }

    public final String getAccountId() {
        return this.accountId;
    }

    public final boolean getLivemode() {
        return this.livemode;
    }

    public final String getReaderId() {
        return this.readerId;
    }

    public final String getStripeSessionToken() {
        return this.stripeSessionToken;
    }

    public final String getOfflineStripeSessionToken() {
        return this.offlineStripeSessionToken;
    }

    public final String getRpcSessionToken() {
        return this.rpcSessionToken;
    }

    public final String getConnectionContextId() {
        return this.connectionContextId;
    }

    public final Long getCanonicalReaderVersion() {
        return this.canonicalReaderVersion;
    }

    public final ApiLocationPb getLocation() {
        return this.location;
    }
}
