package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomerAcceptanceParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;)V", "acceptedAt", "", "getAcceptedAt", "()Ljava/lang/Long;", "Ljava/lang/Long;", "onlineAcceptanceData", "Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;", "getOnlineAcceptanceData", "()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;", "type", "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;", "getType", "()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomerAcceptanceParameters {
    private final Long acceptedAt;
    private final MandateOnlineAcceptanceData onlineAcceptanceData;
    private final CustomerAcceptanceType type;

    public CustomerAcceptanceParameters(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.type = builder.getType();
        this.acceptedAt = builder.getAcceptedAt();
        this.onlineAcceptanceData = builder.getOnlineAcceptanceData();
    }

    public final CustomerAcceptanceType getType() {
        return this.type;
    }

    public final Long getAcceptedAt() {
        return this.acceptedAt;
    }

    public final MandateOnlineAcceptanceData getOnlineAcceptanceData() {
        return this.onlineAcceptanceData;
    }

    /* JADX INFO: compiled from: CustomerAcceptanceParameters.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J\u0015\u0010\u0017\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0004¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;", "", "type", "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;", "(Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;)V", "acceptedAt", "", "getAcceptedAt$public_release", "()Ljava/lang/Long;", "setAcceptedAt$public_release", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "onlineAcceptanceData", "Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;", "getOnlineAcceptanceData$public_release", "()Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;", "setOnlineAcceptanceData$public_release", "(Lcom/stripe/stripeterminal/external/models/MandateOnlineAcceptanceData;)V", "getType$public_release", "()Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceType;", "setType$public_release", "build", "Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters;", "setAcceptedAt", "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/CustomerAcceptanceParameters$Builder;", "setOnlineAcceptanceData", "data", "setType", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private Long acceptedAt;
        private MandateOnlineAcceptanceData onlineAcceptanceData;
        private CustomerAcceptanceType type;

        public Builder(CustomerAcceptanceType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
        }

        /* JADX INFO: renamed from: getType$public_release, reason: from getter */
        public final CustomerAcceptanceType getType() {
            return this.type;
        }

        public final void setType$public_release(CustomerAcceptanceType customerAcceptanceType) {
            Intrinsics.checkNotNullParameter(customerAcceptanceType, "<set-?>");
            this.type = customerAcceptanceType;
        }

        /* JADX INFO: renamed from: getAcceptedAt$public_release, reason: from getter */
        public final Long getAcceptedAt() {
            return this.acceptedAt;
        }

        public final void setAcceptedAt$public_release(Long l) {
            this.acceptedAt = l;
        }

        /* JADX INFO: renamed from: getOnlineAcceptanceData$public_release, reason: from getter */
        public final MandateOnlineAcceptanceData getOnlineAcceptanceData() {
            return this.onlineAcceptanceData;
        }

        public final void setOnlineAcceptanceData$public_release(MandateOnlineAcceptanceData mandateOnlineAcceptanceData) {
            this.onlineAcceptanceData = mandateOnlineAcceptanceData;
        }

        public final Builder setType(CustomerAcceptanceType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder setAcceptedAt(Long acceptedAt) {
            this.acceptedAt = acceptedAt;
            return this;
        }

        public final Builder setOnlineAcceptanceData(MandateOnlineAcceptanceData data) {
            this.onlineAcceptanceData = data;
            return this;
        }

        public final CustomerAcceptanceParameters build() {
            return new CustomerAcceptanceParameters(this);
        }
    }
}
