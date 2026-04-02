package com.stripe.stripeterminal.external.models;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SetupIntentParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u001f\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\bR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;)V", "customer", "", "getCustomer", "()Ljava/lang/String;", "description", "getDescription", "metadata", "", "getMetadata", "()Ljava/util/Map;", "onBehalfOf", "getOnBehalfOf", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getPaymentMethodTypes", "()Ljava/util/List;", "usage", "getUsage", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupIntentParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final SetupIntentParameters NULL = new Builder().build();
    private final String customer;
    private final String description;
    private final Map<String, String> metadata;
    private final String onBehalfOf;
    private final List<PaymentMethodType> paymentMethodTypes;
    private final String usage;

    public /* synthetic */ SetupIntentParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private SetupIntentParameters(Builder builder) {
        this.customer = builder.getCustomer();
        this.description = builder.getDescription();
        this.metadata = builder.getMetadata$public_release();
        this.usage = builder.getUsage();
        this.onBehalfOf = builder.getOnBehalfOf();
        this.paymentMethodTypes = builder.getPaymentMethodTypes$public_release();
    }

    public final String getCustomer() {
        return this.customer;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getUsage() {
        return this.usage;
    }

    public final String getOnBehalfOf() {
        return this.onBehalfOf;
    }

    public final List<PaymentMethodType> getPaymentMethodTypes() {
        return this.paymentMethodTypes;
    }

    /* JADX INFO: compiled from: SetupIntentParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u001c\u0010#\u001a\u00020\u00002\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\rJ\u0010\u0010$\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0014\u0010%\u001a\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016J\u0010\u0010&\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR(\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\b¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;", "", "()V", "customer", "", "getCustomer$public_release", "()Ljava/lang/String;", "setCustomer$public_release", "(Ljava/lang/String;)V", "description", "getDescription$public_release", "setDescription$public_release", "metadata", "", "getMetadata$public_release", "()Ljava/util/Map;", "setMetadata$public_release", "(Ljava/util/Map;)V", "onBehalfOf", "getOnBehalfOf$public_release", "setOnBehalfOf$public_release", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getPaymentMethodTypes$public_release", "()Ljava/util/List;", "setPaymentMethodTypes$public_release", "(Ljava/util/List;)V", "usage", "getUsage$public_release", "setUsage$public_release", "build", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "setCustomer", "setDescription", "setMetadata", "setOnBehalfOf", "setPaymentMethodTypes", "setUsage", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String customer;
        private String description;
        private Map<String, String> metadata;
        private String onBehalfOf;
        private List<? extends PaymentMethodType> paymentMethodTypes = CollectionsKt.listOf(PaymentMethodType.CARD_PRESENT);
        private String usage;

        /* JADX INFO: renamed from: getCustomer$public_release, reason: from getter */
        public final String getCustomer() {
            return this.customer;
        }

        public final void setCustomer$public_release(String str) {
            this.customer = str;
        }

        /* JADX INFO: renamed from: getDescription$public_release, reason: from getter */
        public final String getDescription() {
            return this.description;
        }

        public final void setDescription$public_release(String str) {
            this.description = str;
        }

        public final Map<String, String> getMetadata$public_release() {
            return this.metadata;
        }

        public final void setMetadata$public_release(Map<String, String> map) {
            this.metadata = map;
        }

        /* JADX INFO: renamed from: getUsage$public_release, reason: from getter */
        public final String getUsage() {
            return this.usage;
        }

        public final void setUsage$public_release(String str) {
            this.usage = str;
        }

        /* JADX INFO: renamed from: getOnBehalfOf$public_release, reason: from getter */
        public final String getOnBehalfOf() {
            return this.onBehalfOf;
        }

        public final void setOnBehalfOf$public_release(String str) {
            this.onBehalfOf = str;
        }

        public final List<PaymentMethodType> getPaymentMethodTypes$public_release() {
            return this.paymentMethodTypes;
        }

        public final void setPaymentMethodTypes$public_release(List<? extends PaymentMethodType> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.paymentMethodTypes = list;
        }

        public final Builder setCustomer(String customer) {
            this.customer = customer;
            return this;
        }

        public final Builder setDescription(String description) {
            this.description = description;
            return this;
        }

        public final Builder setMetadata(Map<String, String> metadata) {
            this.metadata = metadata;
            return this;
        }

        public final Builder setUsage(String usage) {
            this.usage = usage;
            return this;
        }

        public final Builder setOnBehalfOf(String onBehalfOf) {
            this.onBehalfOf = onBehalfOf;
            return this;
        }

        public final Builder setPaymentMethodTypes(List<? extends PaymentMethodType> paymentMethodTypes) {
            Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
            this.paymentMethodTypes = paymentMethodTypes;
            return this;
        }

        public final SetupIntentParameters build() {
            if (this.paymentMethodTypes.isEmpty()) {
                throw new RuntimeException("paymentMethodTypes cannot be empty");
            }
            return new SetupIntentParameters(this, null);
        }
    }

    /* JADX INFO: compiled from: SetupIntentParameters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;", "", "()V", "NULL", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "getNULL$annotations", "getNULL", "()Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getNULL$annotations() {
        }

        private Companion() {
        }

        public final SetupIntentParameters getNULL() {
            return SetupIntentParameters.NULL;
        }
    }
}
