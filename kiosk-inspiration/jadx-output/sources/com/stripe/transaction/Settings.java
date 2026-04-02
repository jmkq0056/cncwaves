package com.stripe.transaction;

import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.proto.model.config.ClientCheckoutOptions;
import com.stripe.proto.model.config.VectorRegionalConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Settings.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/transaction/Settings;", "", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "allowIncrementNumOfCanceledPayments", "", "(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V", "getAllowIncrementNumOfCanceledPayments", "()Z", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Settings {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Settings DEFAULT = new Settings(EmvTransactionType.QUICK, false);
    private final boolean allowIncrementNumOfCanceledPayments;
    private final EmvTransactionType emvTransactionType;

    public static /* synthetic */ Settings copy$default(Settings settings, EmvTransactionType emvTransactionType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            emvTransactionType = settings.emvTransactionType;
        }
        if ((i & 2) != 0) {
            z = settings.allowIncrementNumOfCanceledPayments;
        }
        return settings.copy(emvTransactionType, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getAllowIncrementNumOfCanceledPayments() {
        return this.allowIncrementNumOfCanceledPayments;
    }

    public final Settings copy(EmvTransactionType emvTransactionType, boolean allowIncrementNumOfCanceledPayments) {
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        return new Settings(emvTransactionType, allowIncrementNumOfCanceledPayments);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Settings)) {
            return false;
        }
        Settings settings = (Settings) other;
        return this.emvTransactionType == settings.emvTransactionType && this.allowIncrementNumOfCanceledPayments == settings.allowIncrementNumOfCanceledPayments;
    }

    public int hashCode() {
        return (this.emvTransactionType.hashCode() * 31) + Boolean.hashCode(this.allowIncrementNumOfCanceledPayments);
    }

    public String toString() {
        return "Settings(emvTransactionType=" + this.emvTransactionType + ", allowIncrementNumOfCanceledPayments=" + this.allowIncrementNumOfCanceledPayments + ')';
    }

    public Settings(EmvTransactionType emvTransactionType, boolean z) {
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        this.emvTransactionType = emvTransactionType;
        this.allowIncrementNumOfCanceledPayments = z;
    }

    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final boolean getAllowIncrementNumOfCanceledPayments() {
        return this.allowIncrementNumOfCanceledPayments;
    }

    /* JADX INFO: compiled from: Settings.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0007\u001a\u00020\u0004*\u00020\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/transaction/Settings$Companion;", "", "()V", "DEFAULT", "Lcom/stripe/transaction/Settings;", "getDEFAULT", "()Lcom/stripe/transaction/Settings;", "toSettings", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Settings getDEFAULT() {
            return Settings.DEFAULT;
        }

        public final Settings toSettings(ClientCheckoutOptions clientCheckoutOptions) {
            EmvTransactionType emvTransactionType;
            Intrinsics.checkNotNullParameter(clientCheckoutOptions, "<this>");
            VectorRegionalConfiguration vectorRegionalConfiguration = clientCheckoutOptions.vector_config;
            if (vectorRegionalConfiguration != null && vectorRegionalConfiguration.allow_quick_chip) {
                emvTransactionType = EmvTransactionType.QUICK;
            } else {
                emvTransactionType = EmvTransactionType.TRADITIONAL;
            }
            Boolean bool = clientCheckoutOptions.increment_num_of_canceled_payments_on_query;
            return new Settings(emvTransactionType, bool != null ? bool.booleanValue() : false);
        }
    }
}
