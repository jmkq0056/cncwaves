package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodOptionsParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;)V", "cardPresentParameters", "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "getCardPresentParameters", "()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodOptionsParameters {
    private final CardPresentParameters cardPresentParameters;

    public /* synthetic */ PaymentMethodOptionsParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private PaymentMethodOptionsParameters(Builder builder) {
        this.cardPresentParameters = builder.getCardPresentParameters();
    }

    public final CardPresentParameters getCardPresentParameters() {
        return this.cardPresentParameters;
    }

    /* JADX INFO: compiled from: PaymentMethodOptionsParameters.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;", "", "()V", "cardPresentParameters", "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "getCardPresentParameters$public_release", "()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "setCardPresentParameters$public_release", "(Lcom/stripe/stripeterminal/external/models/CardPresentParameters;)V", "build", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "setCardPresentParameters", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private /* synthetic */ CardPresentParameters cardPresentParameters;

        /* JADX INFO: renamed from: getCardPresentParameters$public_release, reason: from getter */
        public final CardPresentParameters getCardPresentParameters() {
            return this.cardPresentParameters;
        }

        public final void setCardPresentParameters$public_release(CardPresentParameters cardPresentParameters) {
            this.cardPresentParameters = cardPresentParameters;
        }

        public final Builder setCardPresentParameters(CardPresentParameters cardPresentParameters) {
            Intrinsics.checkNotNullParameter(cardPresentParameters, "cardPresentParameters");
            this.cardPresentParameters = cardPresentParameters;
            return this;
        }

        public final PaymentMethodOptionsParameters build() {
            return new PaymentMethodOptionsParameters(this, null);
        }
    }
}
