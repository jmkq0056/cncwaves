package com.stripe.stripeterminal.external.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentIntentParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001:\u00013B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u000b\u0010\bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u001f\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0013R\u0013\u0010)\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0013R\u0013\u0010+\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0013R\u0013\u0010-\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0013R\u0013\u0010/\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0013R\u0013\u00101\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u0013¨\u00064"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;)V", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "getAmount", "()Ljava/lang/Long;", "Ljava/lang/Long;", "applicationFeeAmount", "getApplicationFeeAmount", "captureMethod", "Lcom/stripe/stripeterminal/external/models/CaptureMethod;", "getCaptureMethod", "()Lcom/stripe/stripeterminal/external/models/CaptureMethod;", FirebaseAnalytics.Param.CURRENCY, "", "getCurrency", "()Ljava/lang/String;", "customer", "getCustomer", "description", "getDescription", "metadata", "", "getMetadata", "()Ljava/util/Map;", "onBehalfOf", "getOnBehalfOf", "paymentMethodOptionsParameters", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "getPaymentMethodOptionsParameters", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "getPaymentMethodTypes", "()Ljava/util/List;", "receiptEmail", "getReceiptEmail", "setupFutureUsage", "getSetupFutureUsage", "statementDescriptor", "getStatementDescriptor", "statementDescriptorSuffix", "getStatementDescriptorSuffix", "transferDataDestination", "getTransferDataDestination", "transferGroup", "getTransferGroup", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentIntentParameters {
    private final Long amount;
    private final Long applicationFeeAmount;
    private final CaptureMethod captureMethod;
    private final String currency;
    private final String customer;
    private final String description;
    private final transient Map<String, String> metadata;
    private final String onBehalfOf;
    private final PaymentMethodOptionsParameters paymentMethodOptionsParameters;
    private final transient /* synthetic */ List<PaymentMethodType> paymentMethodTypes;
    private final String receiptEmail;
    private final String setupFutureUsage;
    private final String statementDescriptor;
    private final String statementDescriptorSuffix;
    private final String transferDataDestination;
    private final String transferGroup;

    public /* synthetic */ PaymentIntentParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private PaymentIntentParameters(Builder builder) {
        this.amount = builder.getAmount();
        this.applicationFeeAmount = builder.getApplicationFeeAmount();
        this.captureMethod = builder.getCaptureMethod();
        this.currency = builder.getCurrency();
        this.customer = builder.getCustomer();
        this.description = builder.getDescription();
        this.onBehalfOf = builder.getOnBehalfOf();
        this.receiptEmail = builder.getReceiptEmail();
        this.setupFutureUsage = builder.getSetupFutureUsage();
        this.statementDescriptor = builder.getStatementDescriptor();
        this.statementDescriptorSuffix = builder.getStatementDescriptorSuffix();
        this.transferDataDestination = builder.getTransferDataDestination();
        this.transferGroup = builder.getTransferGroup();
        this.paymentMethodOptionsParameters = builder.getPaymentMethodOptionsParameters();
        this.paymentMethodTypes = builder.getPaymentMethodTypes$public_release();
        this.metadata = builder.getMetadata$public_release();
    }

    public final Long getAmount() {
        return this.amount;
    }

    public final Long getApplicationFeeAmount() {
        return this.applicationFeeAmount;
    }

    public final CaptureMethod getCaptureMethod() {
        return this.captureMethod;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getCustomer() {
        return this.customer;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getOnBehalfOf() {
        return this.onBehalfOf;
    }

    public final String getReceiptEmail() {
        return this.receiptEmail;
    }

    public final String getSetupFutureUsage() {
        return this.setupFutureUsage;
    }

    public final String getStatementDescriptor() {
        return this.statementDescriptor;
    }

    public final String getStatementDescriptorSuffix() {
        return this.statementDescriptorSuffix;
    }

    public final String getTransferDataDestination() {
        return this.transferDataDestination;
    }

    public final String getTransferGroup() {
        return this.transferGroup;
    }

    public final PaymentMethodOptionsParameters getPaymentMethodOptionsParameters() {
        return this.paymentMethodOptionsParameters;
    }

    public final List<PaymentMethodType> getPaymentMethodTypes() {
        return this.paymentMethodTypes;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    /* JADX INFO: compiled from: PaymentIntentParameters.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B/\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bB\u0017\b\u0017\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\fJ\u0006\u0010G\u001a\u00020HJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0005J\u001a\u0010O\u001a\u00020\u00002\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050$J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-J\u000e\u0010R\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0005J\u000e\u0010S\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0005J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0005J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0005J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0005J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u0005R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001a\"\u0004\b\"\u0010\u001cR(\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010$X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001a\"\u0004\b+\u0010\u001cR\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u0010\fR\u001c\u00105\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u001a\"\u0004\b7\u0010\u001cR\u001c\u00108\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u001a\"\u0004\b:\u0010\u001cR\u001c\u0010;\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u001a\"\u0004\b=\u0010\u001cR\u001c\u0010>\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u001a\"\u0004\b@\u0010\u001cR\u001c\u0010A\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u001a\"\u0004\bC\u0010\u001cR\u001c\u0010D\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u001a\"\u0004\bF\u0010\u001c¨\u0006X"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", FirebaseAnalytics.Param.CURRENCY, "", "captureMethod", "Lcom/stripe/stripeterminal/external/models/CaptureMethod;", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;)V", "(Ljava/util/List;)V", "getAmount$public_release", "()Ljava/lang/Long;", "setAmount$public_release", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "applicationFeeAmount", "getApplicationFeeAmount$public_release", "setApplicationFeeAmount$public_release", "getCaptureMethod$public_release", "()Lcom/stripe/stripeterminal/external/models/CaptureMethod;", "setCaptureMethod$public_release", "(Lcom/stripe/stripeterminal/external/models/CaptureMethod;)V", "getCurrency$public_release", "()Ljava/lang/String;", "setCurrency$public_release", "(Ljava/lang/String;)V", "customer", "getCustomer$public_release", "setCustomer$public_release", "description", "getDescription$public_release", "setDescription$public_release", "metadata", "", "getMetadata$public_release", "()Ljava/util/Map;", "setMetadata$public_release", "(Ljava/util/Map;)V", "onBehalfOf", "getOnBehalfOf$public_release", "setOnBehalfOf$public_release", "paymentMethodOptionsParameters", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "getPaymentMethodOptionsParameters$public_release", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;", "setPaymentMethodOptionsParameters$public_release", "(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;)V", "getPaymentMethodTypes$public_release", "()Ljava/util/List;", "setPaymentMethodTypes$public_release", "receiptEmail", "getReceiptEmail$public_release", "setReceiptEmail$public_release", "setupFutureUsage", "getSetupFutureUsage$public_release", "setSetupFutureUsage$public_release", "statementDescriptor", "getStatementDescriptor$public_release", "setStatementDescriptor$public_release", "statementDescriptorSuffix", "getStatementDescriptorSuffix$public_release", "setStatementDescriptorSuffix$public_release", "transferDataDestination", "getTransferDataDestination$public_release", "setTransferDataDestination$public_release", "transferGroup", "getTransferGroup$public_release", "setTransferGroup$public_release", "build", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "setAmount", "setApplicationFeeAmount", "setCaptureMethod", "setCurrency", "setCustomer", "setDescription", "setMetadata", "setOnBehalfOf", "setPaymentMethodOptionsParameters", "setReceiptEmail", "setSetupFutureUsage", "setStatementDescriptor", "setStatementDescriptorSuffix", "setTransferDataDestination", "setTransferGroup", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private /* synthetic */ Long amount;
        private /* synthetic */ Long applicationFeeAmount;
        private /* synthetic */ CaptureMethod captureMethod;
        private /* synthetic */ String currency;
        private /* synthetic */ String customer;
        private /* synthetic */ String description;
        private /* synthetic */ Map<String, String> metadata;
        private /* synthetic */ String onBehalfOf;
        private /* synthetic */ PaymentMethodOptionsParameters paymentMethodOptionsParameters;
        private /* synthetic */ List<? extends PaymentMethodType> paymentMethodTypes;
        private /* synthetic */ String receiptEmail;
        private /* synthetic */ String setupFutureUsage;
        private /* synthetic */ String statementDescriptor;
        private /* synthetic */ String statementDescriptorSuffix;
        private /* synthetic */ String transferDataDestination;
        private /* synthetic */ String transferGroup;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this((List) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(long j, String currency, CaptureMethod captureMethod) {
            this(j, currency, captureMethod, null, 8, null);
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(captureMethod, "captureMethod");
        }

        public final List<PaymentMethodType> getPaymentMethodTypes$public_release() {
            return this.paymentMethodTypes;
        }

        public final void setPaymentMethodTypes$public_release(List<? extends PaymentMethodType> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.paymentMethodTypes = list;
        }

        /* JADX INFO: renamed from: getCaptureMethod$public_release, reason: from getter */
        public final CaptureMethod getCaptureMethod() {
            return this.captureMethod;
        }

        public final void setCaptureMethod$public_release(CaptureMethod captureMethod) {
            Intrinsics.checkNotNullParameter(captureMethod, "<set-?>");
            this.captureMethod = captureMethod;
        }

        /* JADX INFO: renamed from: getAmount$public_release, reason: from getter */
        public final Long getAmount() {
            return this.amount;
        }

        public final void setAmount$public_release(Long l) {
            this.amount = l;
        }

        /* JADX INFO: renamed from: getApplicationFeeAmount$public_release, reason: from getter */
        public final Long getApplicationFeeAmount() {
            return this.applicationFeeAmount;
        }

        public final void setApplicationFeeAmount$public_release(Long l) {
            this.applicationFeeAmount = l;
        }

        /* JADX INFO: renamed from: getCurrency$public_release, reason: from getter */
        public final String getCurrency() {
            return this.currency;
        }

        public final void setCurrency$public_release(String str) {
            this.currency = str;
        }

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

        /* JADX INFO: renamed from: getOnBehalfOf$public_release, reason: from getter */
        public final String getOnBehalfOf() {
            return this.onBehalfOf;
        }

        public final void setOnBehalfOf$public_release(String str) {
            this.onBehalfOf = str;
        }

        /* JADX INFO: renamed from: getReceiptEmail$public_release, reason: from getter */
        public final String getReceiptEmail() {
            return this.receiptEmail;
        }

        public final void setReceiptEmail$public_release(String str) {
            this.receiptEmail = str;
        }

        /* JADX INFO: renamed from: getStatementDescriptor$public_release, reason: from getter */
        public final String getStatementDescriptor() {
            return this.statementDescriptor;
        }

        public final void setStatementDescriptor$public_release(String str) {
            this.statementDescriptor = str;
        }

        /* JADX INFO: renamed from: getStatementDescriptorSuffix$public_release, reason: from getter */
        public final String getStatementDescriptorSuffix() {
            return this.statementDescriptorSuffix;
        }

        public final void setStatementDescriptorSuffix$public_release(String str) {
            this.statementDescriptorSuffix = str;
        }

        /* JADX INFO: renamed from: getTransferDataDestination$public_release, reason: from getter */
        public final String getTransferDataDestination() {
            return this.transferDataDestination;
        }

        public final void setTransferDataDestination$public_release(String str) {
            this.transferDataDestination = str;
        }

        /* JADX INFO: renamed from: getTransferGroup$public_release, reason: from getter */
        public final String getTransferGroup() {
            return this.transferGroup;
        }

        public final void setTransferGroup$public_release(String str) {
            this.transferGroup = str;
        }

        /* JADX INFO: renamed from: getSetupFutureUsage$public_release, reason: from getter */
        public final String getSetupFutureUsage() {
            return this.setupFutureUsage;
        }

        public final void setSetupFutureUsage$public_release(String str) {
            this.setupFutureUsage = str;
        }

        /* JADX INFO: renamed from: getPaymentMethodOptionsParameters$public_release, reason: from getter */
        public final PaymentMethodOptionsParameters getPaymentMethodOptionsParameters() {
            return this.paymentMethodOptionsParameters;
        }

        public final void setPaymentMethodOptionsParameters$public_release(PaymentMethodOptionsParameters paymentMethodOptionsParameters) {
            this.paymentMethodOptionsParameters = paymentMethodOptionsParameters;
        }

        public /* synthetic */ Builder(long j, String str, CaptureMethod captureMethod, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, str, captureMethod, (i & 8) != 0 ? CollectionsKt.listOf(PaymentMethodType.CARD_PRESENT) : list);
        }

        public Builder(long j, String currency, CaptureMethod captureMethod, List<? extends PaymentMethodType> paymentMethodTypes) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            Intrinsics.checkNotNullParameter(captureMethod, "captureMethod");
            Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
            this.amount = Long.valueOf(j);
            this.currency = currency;
            this.captureMethod = captureMethod;
            this.paymentMethodTypes = paymentMethodTypes;
        }

        public Builder(List<? extends PaymentMethodType> paymentMethodTypes) {
            Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
            this.captureMethod = CaptureMethod.Manual;
            this.paymentMethodTypes = paymentMethodTypes;
        }

        public /* synthetic */ Builder(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.listOf(PaymentMethodType.CARD_PRESENT) : list);
        }

        public final Builder setAmount(long amount) {
            this.amount = Long.valueOf(amount);
            return this;
        }

        public final Builder setApplicationFeeAmount(long amount) {
            this.applicationFeeAmount = Long.valueOf(amount);
            return this;
        }

        public final Builder setCaptureMethod(CaptureMethod captureMethod) {
            Intrinsics.checkNotNullParameter(captureMethod, "captureMethod");
            this.captureMethod = captureMethod;
            return this;
        }

        public final Builder setCurrency(String currency) {
            Intrinsics.checkNotNullParameter(currency, "currency");
            this.currency = currency;
            return this;
        }

        public final Builder setCustomer(String customer) {
            Intrinsics.checkNotNullParameter(customer, "customer");
            this.customer = customer;
            return this;
        }

        public final Builder setDescription(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            return this;
        }

        public final Builder setMetadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder setOnBehalfOf(String onBehalfOf) {
            Intrinsics.checkNotNullParameter(onBehalfOf, "onBehalfOf");
            this.onBehalfOf = onBehalfOf;
            return this;
        }

        public final Builder setReceiptEmail(String receiptEmail) {
            Intrinsics.checkNotNullParameter(receiptEmail, "receiptEmail");
            this.receiptEmail = receiptEmail;
            return this;
        }

        public final Builder setStatementDescriptor(String statementDescriptor) {
            Intrinsics.checkNotNullParameter(statementDescriptor, "statementDescriptor");
            this.statementDescriptor = statementDescriptor;
            return this;
        }

        public final Builder setStatementDescriptorSuffix(String statementDescriptorSuffix) {
            Intrinsics.checkNotNullParameter(statementDescriptorSuffix, "statementDescriptorSuffix");
            this.statementDescriptorSuffix = statementDescriptorSuffix;
            return this;
        }

        public final Builder setTransferDataDestination(String transferDataDestination) {
            Intrinsics.checkNotNullParameter(transferDataDestination, "transferDataDestination");
            this.transferDataDestination = transferDataDestination;
            return this;
        }

        public final Builder setTransferGroup(String transferGroup) {
            Intrinsics.checkNotNullParameter(transferGroup, "transferGroup");
            this.transferGroup = transferGroup;
            return this;
        }

        public final Builder setSetupFutureUsage(String setupFutureUsage) {
            Intrinsics.checkNotNullParameter(setupFutureUsage, "setupFutureUsage");
            this.setupFutureUsage = setupFutureUsage;
            return this;
        }

        public final Builder setPaymentMethodOptionsParameters(PaymentMethodOptionsParameters paymentMethodOptionsParameters) {
            Intrinsics.checkNotNullParameter(paymentMethodOptionsParameters, "paymentMethodOptionsParameters");
            this.paymentMethodOptionsParameters = paymentMethodOptionsParameters;
            return this;
        }

        public final PaymentIntentParameters build() {
            if (this.amount == null) {
                throw new RuntimeException("Amount is a required parameter");
            }
            if (this.currency == null) {
                throw new RuntimeException("Currency is a required parameter");
            }
            return new PaymentIntentParameters(this, null);
        }
    }
}
