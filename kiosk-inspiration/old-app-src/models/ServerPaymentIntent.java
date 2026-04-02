package com.example.digitalkiosk.models;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServerPaymentIntent.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/models/ServerPaymentIntent;", "", OfflineStorageConstantsKt.ID, "", "client_secret", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getClient_secret", "getAmount", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ServerPaymentIntent {
    private final int amount;
    private final String client_secret;
    private final String id;

    public static /* synthetic */ ServerPaymentIntent copy$default(ServerPaymentIntent serverPaymentIntent, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = serverPaymentIntent.id;
        }
        if ((i2 & 2) != 0) {
            str2 = serverPaymentIntent.client_secret;
        }
        if ((i2 & 4) != 0) {
            i = serverPaymentIntent.amount;
        }
        return serverPaymentIntent.copy(str, str2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getClient_secret() {
        return this.client_secret;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getAmount() {
        return this.amount;
    }

    public final ServerPaymentIntent copy(String id, String client_secret, int amount) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(client_secret, "client_secret");
        return new ServerPaymentIntent(id, client_secret, amount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServerPaymentIntent)) {
            return false;
        }
        ServerPaymentIntent serverPaymentIntent = (ServerPaymentIntent) other;
        return Intrinsics.areEqual(this.id, serverPaymentIntent.id) && Intrinsics.areEqual(this.client_secret, serverPaymentIntent.client_secret) && this.amount == serverPaymentIntent.amount;
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.client_secret.hashCode()) * 31) + Integer.hashCode(this.amount);
    }

    public String toString() {
        return "ServerPaymentIntent(id=" + this.id + ", client_secret=" + this.client_secret + ", amount=" + this.amount + ')';
    }

    public ServerPaymentIntent(String id, String client_secret, int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(client_secret, "client_secret");
        this.id = id;
        this.client_secret = client_secret;
        this.amount = i;
    }

    public final String getId() {
        return this.id;
    }

    public final String getClient_secret() {
        return this.client_secret;
    }

    public final int getAmount() {
        return this.amount;
    }
}
