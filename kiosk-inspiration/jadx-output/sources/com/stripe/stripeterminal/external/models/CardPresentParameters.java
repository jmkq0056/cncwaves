package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CardPresentParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000f\u0010\fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;)V", "captureMethod", "Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;", "getCaptureMethod", "()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;", "requestExtendedAuthorization", "", "getRequestExtendedAuthorization", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "requestIncrementalAuthorizationSupport", "getRequestIncrementalAuthorizationSupport", "requestPartialAuthorization", "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "getRequestPartialAuthorization", "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "routing", "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;", "getRouting", "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardPresentParameters {
    private final CardPresentCaptureMethod captureMethod;
    private final Boolean requestExtendedAuthorization;
    private final Boolean requestIncrementalAuthorizationSupport;
    private final CardPresentRequestPartialAuthorization requestPartialAuthorization;
    private final CardPresentRoutingOptionParameters routing;

    public /* synthetic */ CardPresentParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private CardPresentParameters(Builder builder) {
        this.requestExtendedAuthorization = builder.getRequestExtendedAuthorization();
        this.requestIncrementalAuthorizationSupport = builder.getRequestIncrementalAuthorizationSupport();
        this.captureMethod = builder.getCaptureMethod();
        this.routing = builder.getRouting();
        this.requestPartialAuthorization = builder.getRequestPartialAuthorization();
    }

    public final Boolean getRequestExtendedAuthorization() {
        return this.requestExtendedAuthorization;
    }

    public final Boolean getRequestIncrementalAuthorizationSupport() {
        return this.requestIncrementalAuthorizationSupport;
    }

    public final CardPresentCaptureMethod getCaptureMethod() {
        return this.captureMethod;
    }

    public final CardPresentRoutingOptionParameters getRouting() {
        return this.routing;
    }

    public final CardPresentRequestPartialAuthorization getRequestPartialAuthorization() {
        return this.requestPartialAuthorization;
    }

    /* JADX INFO: compiled from: CardPresentParameters.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aR(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\n@@X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR*\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\n@@X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR(\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u0014@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0003\u001a\u0004\u0018\u00010\u001a@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/external/models/CardPresentParameters$Builder;", "", "()V", "<set-?>", "Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;", "captureMethod", "getCaptureMethod", "()Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;", "setCaptureMethod$public_release", "(Lcom/stripe/stripeterminal/external/models/CardPresentCaptureMethod;)V", "", "requestExtendedAuthorization", "getRequestExtendedAuthorization", "()Ljava/lang/Boolean;", "setRequestExtendedAuthorization$public_release", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "requestIncrementalAuthorizationSupport", "getRequestIncrementalAuthorizationSupport", "setRequestIncrementalAuthorizationSupport$public_release", "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "requestPartialAuthorization", "getRequestPartialAuthorization", "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;", "setRequestPartialAuthorization$public_release", "(Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V", "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;", "routing", "getRouting", "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;", "setRouting$public_release", "(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptionParameters;)V", "build", "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;", "setCaptureMethod", "setRequestExtendedAuthorization", "setRequestIncrementalAuthorizationSupport", "setRequestPartialAuthorization", "setRouting", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private CardPresentCaptureMethod captureMethod;
        private Boolean requestExtendedAuthorization;
        private Boolean requestIncrementalAuthorizationSupport;
        private CardPresentRequestPartialAuthorization requestPartialAuthorization;
        private CardPresentRoutingOptionParameters routing;

        public final Boolean getRequestExtendedAuthorization() {
            return this.requestExtendedAuthorization;
        }

        public final /* synthetic */ void setRequestExtendedAuthorization$public_release(Boolean bool) {
            this.requestExtendedAuthorization = bool;
        }

        public final Boolean getRequestIncrementalAuthorizationSupport() {
            return this.requestIncrementalAuthorizationSupport;
        }

        public final /* synthetic */ void setRequestIncrementalAuthorizationSupport$public_release(Boolean bool) {
            this.requestIncrementalAuthorizationSupport = bool;
        }

        public final CardPresentCaptureMethod getCaptureMethod() {
            return this.captureMethod;
        }

        public final /* synthetic */ void setCaptureMethod$public_release(CardPresentCaptureMethod cardPresentCaptureMethod) {
            this.captureMethod = cardPresentCaptureMethod;
        }

        public final CardPresentRoutingOptionParameters getRouting() {
            return this.routing;
        }

        public final /* synthetic */ void setRouting$public_release(CardPresentRoutingOptionParameters cardPresentRoutingOptionParameters) {
            this.routing = cardPresentRoutingOptionParameters;
        }

        public final CardPresentRequestPartialAuthorization getRequestPartialAuthorization() {
            return this.requestPartialAuthorization;
        }

        public final /* synthetic */ void setRequestPartialAuthorization$public_release(CardPresentRequestPartialAuthorization cardPresentRequestPartialAuthorization) {
            this.requestPartialAuthorization = cardPresentRequestPartialAuthorization;
        }

        public final Builder setRequestExtendedAuthorization(boolean requestExtendedAuthorization) {
            this.requestExtendedAuthorization = Boolean.valueOf(requestExtendedAuthorization);
            return this;
        }

        public final Builder setRequestIncrementalAuthorizationSupport(boolean requestIncrementalAuthorizationSupport) {
            this.requestIncrementalAuthorizationSupport = Boolean.valueOf(requestIncrementalAuthorizationSupport);
            return this;
        }

        public final Builder setCaptureMethod(CardPresentCaptureMethod captureMethod) {
            Intrinsics.checkNotNullParameter(captureMethod, "captureMethod");
            this.captureMethod = captureMethod;
            return this;
        }

        public final Builder setRouting(CardPresentRoutingOptionParameters routing) {
            Intrinsics.checkNotNullParameter(routing, "routing");
            this.routing = routing;
            return this;
        }

        public final Builder setRequestPartialAuthorization(CardPresentRequestPartialAuthorization requestPartialAuthorization) {
            Intrinsics.checkNotNullParameter(requestPartialAuthorization, "requestPartialAuthorization");
            this.requestPartialAuthorization = requestPartialAuthorization;
            return this;
        }

        public final CardPresentParameters build() {
            return new CardPresentParameters(this, null);
        }
    }
}
