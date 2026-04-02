package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardPresentCaptureMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;", "", "key", "", "(Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPresentCaptureMethod {
    private final String key;
    public static final CardPresentCaptureMethod ManualPreferred = new CardPresentCaptureMethod("manual_preferred");
    public static final CardPresentCaptureMethod Manual = new CardPresentCaptureMethod("manual");

    private CardPresentCaptureMethod(String str) {
        this.key = str;
    }

    public final String getKey() {
        return this.key;
    }

    public boolean equals(Object other) {
        CardPresentCaptureMethod cardPresentCaptureMethod = other instanceof CardPresentCaptureMethod ? (CardPresentCaptureMethod) other : null;
        return Intrinsics.areEqual(cardPresentCaptureMethod != null ? cardPresentCaptureMethod.key : null, this.key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return this.key;
    }
}
