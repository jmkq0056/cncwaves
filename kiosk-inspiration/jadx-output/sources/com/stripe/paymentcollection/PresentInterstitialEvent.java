package com.stripe.paymentcollection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/paymentcollection/PresentInterstitialEvent;", "Lcom/stripe/paymentcollection/UserInteractionEvent;", "language", "", "(Ljava/lang/String;)V", "getLanguage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PresentInterstitialEvent extends UserInteractionEvent {
    private final String language;

    /* JADX WARN: Multi-variable type inference failed */
    public PresentInterstitialEvent() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ PresentInterstitialEvent copy$default(PresentInterstitialEvent presentInterstitialEvent, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = presentInterstitialEvent.language;
        }
        return presentInterstitialEvent.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    public final PresentInterstitialEvent copy(String language) {
        return new PresentInterstitialEvent(language);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PresentInterstitialEvent) && Intrinsics.areEqual(this.language, ((PresentInterstitialEvent) other).language);
    }

    public int hashCode() {
        String str = this.language;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "PresentInterstitialEvent(language=" + this.language + ')';
    }

    public PresentInterstitialEvent(String str) {
        super(null);
        this.language = str;
    }

    public /* synthetic */ PresentInterstitialEvent(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public final String getLanguage() {
        return this.language;
    }
}
