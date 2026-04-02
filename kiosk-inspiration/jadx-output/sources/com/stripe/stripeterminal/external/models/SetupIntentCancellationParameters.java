package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SetupIntentCancellationParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \n2\u00020\u0001:\u0002\t\nB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "", "builder", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;", "(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;)V", "reason", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "getReason", "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupIntentCancellationParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final SetupIntentCancellationParameters NULL = new Builder().build();
    private final SetupIntentCancellationReason reason;

    public /* synthetic */ SetupIntentCancellationParameters(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private SetupIntentCancellationParameters(Builder builder) {
        this.reason = builder.getReason();
    }

    public final SetupIntentCancellationReason getReason() {
        return this.reason;
    }

    /* JADX INFO: compiled from: SetupIntentCancellationParameters.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Builder;", "", "()V", "reason", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "getReason$public_release", "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "setReason$public_release", "(Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;)V", "build", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "setReason", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private SetupIntentCancellationReason reason;

        /* JADX INFO: renamed from: getReason$public_release, reason: from getter */
        public final SetupIntentCancellationReason getReason() {
            return this.reason;
        }

        public final void setReason$public_release(SetupIntentCancellationReason setupIntentCancellationReason) {
            this.reason = setupIntentCancellationReason;
        }

        public final Builder setReason(SetupIntentCancellationReason reason) {
            this.reason = reason;
            return this;
        }

        public final SetupIntentCancellationParameters build() {
            return new SetupIntentCancellationParameters(this, null);
        }
    }

    /* JADX INFO: compiled from: SetupIntentCancellationParameters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters$Companion;", "", "()V", "NULL", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "getNULL$annotations", "getNULL", "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getNULL$annotations() {
        }

        private Companion() {
        }

        public final SetupIntentCancellationParameters getNULL() {
            return SetupIntentCancellationParameters.NULL;
        }
    }
}
