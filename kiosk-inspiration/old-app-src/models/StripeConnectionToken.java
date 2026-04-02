package com.example.digitalkiosk.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StripeConnectionToken.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/models/StripeConnectionToken;", "", "secret", "", "<init>", "(Ljava/lang/String;)V", "getSecret", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class StripeConnectionToken {
    private final String secret;

    public static /* synthetic */ StripeConnectionToken copy$default(StripeConnectionToken stripeConnectionToken, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stripeConnectionToken.secret;
        }
        return stripeConnectionToken.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSecret() {
        return this.secret;
    }

    public final StripeConnectionToken copy(String secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        return new StripeConnectionToken(secret);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof StripeConnectionToken) && Intrinsics.areEqual(this.secret, ((StripeConnectionToken) other).secret);
    }

    public int hashCode() {
        return this.secret.hashCode();
    }

    public String toString() {
        return "StripeConnectionToken(secret=" + this.secret + ')';
    }

    public StripeConnectionToken(String secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        this.secret = secret;
    }

    public final String getSecret() {
        return this.secret;
    }
}
