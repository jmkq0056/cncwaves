package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.io.Serializable;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RefundParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001f\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\fR\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;)V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "getAmount", "()J", "chargeId", "", "getChargeId", "()Ljava/lang/String;", FirebaseAnalytics.Param.CURRENCY, "getCurrency", OfflineStorageConstantsKt.ID, "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", "metadata", "", "getMetadata", "()Ljava/util/Map;", "paymentIntentId", "getPaymentIntentId", "refundApplicationFee", "", "getRefundApplicationFee", "()Z", "reverseTransfer", "getReverseTransfer", "Builder", "Id", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundParameters {
    private final long amount;
    private final String currency;
    private final Id id;
    private final Map<String, String> metadata;
    private final boolean refundApplicationFee;
    private final boolean reverseTransfer;

    public /* synthetic */ RefundParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private RefundParameters(Builder builder) {
        this.id = builder.getId();
        this.amount = builder.getAmount();
        this.currency = builder.getCurrency();
        this.metadata = builder.getMetadata$public_release();
        this.reverseTransfer = builder.getReverseTransfer();
        this.refundApplicationFee = builder.getRefundApplicationFee();
    }

    public final long getAmount() {
        return this.amount;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final boolean getReverseTransfer() {
        return this.reverseTransfer;
    }

    public final boolean getRefundApplicationFee() {
        return this.refundApplicationFee;
    }

    public final String getChargeId() {
        Id id = this.id;
        Id.Charge charge = id instanceof Id.Charge ? (Id.Charge) id : null;
        if (charge != null) {
            return charge.getId();
        }
        return null;
    }

    public final String getPaymentIntentId() {
        Id id = this.id;
        Id.PaymentIntent paymentIntent = id instanceof Id.PaymentIntent ? (Id.PaymentIntent) id : null;
        if (paymentIntent != null) {
            return paymentIntent.getId();
        }
        return null;
    }

    /* JADX INFO: compiled from: RefundParameters.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007B\u001d\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\u0006\u0010 \u001a\u00020!J\u001a\u0010\"\u001a\u00020\u00002\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0018J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001c¨\u0006&"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;", "", "chargeId", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "(Ljava/lang/String;JLjava/lang/String;)V", OfflineStorageConstantsKt.ID, "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", "(Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;JLjava/lang/String;)V", "getAmount$public_release", "()J", "getCurrency$public_release", "()Ljava/lang/String;", "getId$public_release", "()Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", "metadata", "", "getMetadata$public_release", "()Ljava/util/Map;", "setMetadata$public_release", "(Ljava/util/Map;)V", "refundApplicationFee", "", "getRefundApplicationFee$public_release", "()Z", "setRefundApplicationFee$public_release", "(Z)V", "reverseTransfer", "getReverseTransfer$public_release", "setReverseTransfer$public_release", "build", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "setMetadata", "value", "setRefundApplicationFee", "setReverseTransfer", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private final long amount;
        private final String currency;
        private final Id id;
        private Map<String, String> metadata;
        private boolean refundApplicationFee;
        private boolean reverseTransfer;

        public Builder(Id id, long j, String currency) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.id = id;
            this.amount = j;
            this.currency = currency;
        }

        /* JADX INFO: renamed from: getId$public_release, reason: from getter */
        public final Id getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: getAmount$public_release, reason: from getter */
        public final long getAmount() {
            return this.amount;
        }

        /* JADX INFO: renamed from: getCurrency$public_release, reason: from getter */
        public final String getCurrency() {
            return this.currency;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @Deprecated(message = "This method has been deprecated to support refunding by Payment Intent ID.", replaceWith = @ReplaceWith(expression = "RefundParameters.Builder(Id.Charge(chargeId), amount, currency)", imports = {"com.stripe.stripeterminal.external.models.RefundParameters.Id"}))
        public Builder(String chargeId, long j, String currency) {
            this(new Id.Charge(chargeId), j, currency);
            Intrinsics.checkNotNullParameter(chargeId, "chargeId");
            Intrinsics.checkNotNullParameter(currency, "currency");
        }

        public final Map<String, String> getMetadata$public_release() {
            return this.metadata;
        }

        public final void setMetadata$public_release(Map<String, String> map) {
            this.metadata = map;
        }

        /* JADX INFO: renamed from: getReverseTransfer$public_release, reason: from getter */
        public final boolean getReverseTransfer() {
            return this.reverseTransfer;
        }

        public final void setReverseTransfer$public_release(boolean z) {
            this.reverseTransfer = z;
        }

        /* JADX INFO: renamed from: getRefundApplicationFee$public_release, reason: from getter */
        public final boolean getRefundApplicationFee() {
            return this.refundApplicationFee;
        }

        public final void setRefundApplicationFee$public_release(boolean z) {
            this.refundApplicationFee = z;
        }

        public final Builder setMetadata(Map<String, String> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.metadata = value;
            return this;
        }

        public final Builder setReverseTransfer(boolean value) {
            this.reverseTransfer = value;
            return this;
        }

        public final Builder setRefundApplicationFee(boolean value) {
            this.refundApplicationFee = value;
            return this;
        }

        public final RefundParameters build() {
            return new RefundParameters(this, null);
        }
    }

    /* JADX INFO: compiled from: RefundParameters.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0007\bR\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", OfflineStorageConstantsKt.ID, "", "getId", "()Ljava/lang/String;", "Charge", "PaymentIntent", "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;", "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Id extends Serializable {
        String getId();

        /* JADX INFO: compiled from: RefundParameters.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;", "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class PaymentIntent implements Id {
            private final String id;

            public static /* synthetic */ PaymentIntent copy$default(PaymentIntent paymentIntent, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = paymentIntent.id;
                }
                return paymentIntent.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final PaymentIntent copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new PaymentIntent(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof PaymentIntent) && Intrinsics.areEqual(this.id, ((PaymentIntent) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "PaymentIntent(id=" + this.id + ')';
            }

            public PaymentIntent(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
            }

            @Override // com.stripe.stripeterminal.external.models.RefundParameters.Id
            public String getId() {
                return this.id;
            }
        }

        /* JADX INFO: compiled from: RefundParameters.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;", "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Charge implements Id {
            private final String id;

            public static /* synthetic */ Charge copy$default(Charge charge, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = charge.id;
                }
                return charge.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final Charge copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new Charge(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Charge) && Intrinsics.areEqual(this.id, ((Charge) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "Charge(id=" + this.id + ')';
            }

            public Charge(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
            }

            @Override // com.stripe.stripeterminal.external.models.RefundParameters.Id
            public String getId() {
                return this.id;
            }
        }
    }
}
