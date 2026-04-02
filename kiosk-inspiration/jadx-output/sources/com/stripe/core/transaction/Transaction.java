package com.stripe.core.transaction;

import com.stripe.cart.Cart;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.Confirmation;
import com.stripe.restclient.IntegrationType;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.transaction.ChargeAttempt;
import com.stripe.transaction.Settings;
import com.stripe.transaction.payment.MagstripePayment;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Transaction.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 G2\u00020\u0001:\u0004FGHIB\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010E\u001a\u00020\u0003R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010$¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010(¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010+\u001a\u00020,¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010/\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0013\u00103\u001a\u0004\u0018\u000104¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u00107\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\b7\u00102R\u0011\u00108\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\b8\u00102R\u0011\u00109\u001a\u00020:¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0011\u0010=\u001a\u00020>¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0011\u0010A\u001a\u00020B¢\u0006\b\n\u0000\u001a\u0004\bC\u0010D¨\u0006J"}, d2 = {"Lcom/stripe/core/transaction/Transaction;", "", "builder", "Lcom/stripe/core/transaction/Transaction$Builder;", "(Lcom/stripe/core/transaction/Transaction$Builder;)V", "activeReaderConfiguration", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "getActiveReaderConfiguration", "()Ljava/util/Set;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "getAmount", "()Lcom/stripe/currency/Amount;", "cart", "Lcom/stripe/cart/Cart;", "getCart", "()Lcom/stripe/cart/Cart;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "getChargeAttempt", "()Lcom/stripe/transaction/ChargeAttempt;", "confirmation", "Lcom/stripe/hardware/emv/Confirmation;", "getConfirmation", "()Lcom/stripe/hardware/emv/Confirmation;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "getDeviceType", "()Lcom/stripe/stripeterminal/external/models/DeviceType;", "domesticDebitAids", "", "", "getDomesticDebitAids", "()Ljava/util/List;", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "getDomesticDebitPriority", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "error", "Lcom/stripe/core/transaction/Transaction$Error;", "getError", "()Lcom/stripe/core/transaction/Transaction$Error;", "fallbackReason", "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "getFallbackReason", "()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "", "getForcePinEntry", "()Z", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "getIntegrationType", "()Lcom/stripe/restclient/IntegrationType;", "isDeferredAuthorizationCountry", "isOffline", "numOfCanceledPayments", "", "getNumOfCanceledPayments", "()I", "settings", "Lcom/stripe/transaction/Settings;", "getSettings", "()Lcom/stripe/transaction/Settings;", "type", "Lcom/stripe/core/transaction/Transaction$Type;", "getType", "()Lcom/stripe/core/transaction/Transaction$Type;", "toBuilder", "Builder", "Companion", "Error", "Type", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Transaction {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Set<ReaderConfiguration.ReaderType> activeReaderConfiguration;
    private final Amount amount;
    private final Cart cart;
    private final ChargeAttempt chargeAttempt;
    private final Confirmation confirmation;
    private final DeviceType deviceType;
    private final List<String> domesticDebitAids;
    private final ReaderConfiguration.DomesticDebitPriority domesticDebitPriority;
    private final Error error;
    private final MagstripePayment.FallbackReason fallbackReason;
    private final boolean forcePinEntry;
    private final IntegrationType integrationType;
    private final boolean isDeferredAuthorizationCountry;
    private final boolean isOffline;
    private final int numOfCanceledPayments;
    private final Settings settings;
    private final Type type;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Transaction.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/core/transaction/Transaction$Type;", "", "(Ljava/lang/String;I)V", "DISPLAY_CART", "INTERAC_REFUND", "PAYMENT_METHOD", "REUSABLE_CARD", "SETUP_INTENT", "TIPPING_SELECTION", "PASSTHROUGH", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type DISPLAY_CART = new Type("DISPLAY_CART", 0);
        public static final Type INTERAC_REFUND = new Type("INTERAC_REFUND", 1);
        public static final Type PAYMENT_METHOD = new Type("PAYMENT_METHOD", 2);
        public static final Type REUSABLE_CARD = new Type("REUSABLE_CARD", 3);
        public static final Type SETUP_INTENT = new Type("SETUP_INTENT", 4);
        public static final Type TIPPING_SELECTION = new Type("TIPPING_SELECTION", 5);
        public static final Type PASSTHROUGH = new Type("PASSTHROUGH", 6);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{DISPLAY_CART, INTERAC_REFUND, PAYMENT_METHOD, REUSABLE_CARD, SETUP_INTENT, TIPPING_SELECTION, PASSTHROUGH};
        }

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        private Type(String str, int i) {
        }

        static {
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
        }
    }

    public Transaction(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.type = builder.getType();
        this.settings = builder.getSettings();
        this.error = builder.getError();
        this.fallbackReason = builder.getFallbackReason();
        this.amount = builder.getAmount();
        this.cart = builder.getCart();
        this.chargeAttempt = builder.getChargeAttempt();
        this.numOfCanceledPayments = builder.getNumOfCanceledPayments();
        this.confirmation = builder.getConfirmation();
        this.activeReaderConfiguration = builder.getActiveReaderConfiguration$transaction_release();
        this.integrationType = builder.getIntegrationType();
        this.isOffline = builder.getIsOffline();
        this.isDeferredAuthorizationCountry = builder.getIsDeferredAuthorizationCountry();
        this.deviceType = builder.getDeviceType();
        this.domesticDebitPriority = builder.getDomesticDebitPriority();
        List<String> domesticDebitAids$transaction_release = builder.getDomesticDebitAids$transaction_release();
        this.domesticDebitAids = domesticDebitAids$transaction_release == null ? CollectionsKt.emptyList() : domesticDebitAids$transaction_release;
        this.forcePinEntry = builder.getForcePinEntry();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Transaction.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/core/transaction/Transaction$Error;", "", "(Ljava/lang/String;I)V", "BAD_SWIPE", "CARD_BLOCKED", "CHECK_MOBILE_DEVICE", "CHIP_CARD_SWIPE", "CONTACTLESS_LIMIT_EXCEEDED", "DECLINED", "HARDWARE_ERROR", "INSERT_OR_SWIPE_REQUIRED", "INVALID_CARD", "MULTIPLE_CARDS_DETECTED", "NO_MUTUALLY_SUPPORTED_APPS", "TERMINATED", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Error {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Error[] $VALUES;
        public static final Error BAD_SWIPE = new Error("BAD_SWIPE", 0);
        public static final Error CARD_BLOCKED = new Error("CARD_BLOCKED", 1);
        public static final Error CHECK_MOBILE_DEVICE = new Error("CHECK_MOBILE_DEVICE", 2);
        public static final Error CHIP_CARD_SWIPE = new Error("CHIP_CARD_SWIPE", 3);
        public static final Error CONTACTLESS_LIMIT_EXCEEDED = new Error("CONTACTLESS_LIMIT_EXCEEDED", 4);
        public static final Error DECLINED = new Error("DECLINED", 5);
        public static final Error HARDWARE_ERROR = new Error("HARDWARE_ERROR", 6);
        public static final Error INSERT_OR_SWIPE_REQUIRED = new Error("INSERT_OR_SWIPE_REQUIRED", 7);
        public static final Error INVALID_CARD = new Error("INVALID_CARD", 8);
        public static final Error MULTIPLE_CARDS_DETECTED = new Error("MULTIPLE_CARDS_DETECTED", 9);
        public static final Error NO_MUTUALLY_SUPPORTED_APPS = new Error("NO_MUTUALLY_SUPPORTED_APPS", 10);
        public static final Error TERMINATED = new Error("TERMINATED", 11);

        private static final /* synthetic */ Error[] $values() {
            return new Error[]{BAD_SWIPE, CARD_BLOCKED, CHECK_MOBILE_DEVICE, CHIP_CARD_SWIPE, CONTACTLESS_LIMIT_EXCEEDED, DECLINED, HARDWARE_ERROR, INSERT_OR_SWIPE_REQUIRED, INVALID_CARD, MULTIPLE_CARDS_DETECTED, NO_MUTUALLY_SUPPORTED_APPS, TERMINATED};
        }

        public static EnumEntries<Error> getEntries() {
            return $ENTRIES;
        }

        public static Error valueOf(String str) {
            return (Error) Enum.valueOf(Error.class, str);
        }

        public static Error[] values() {
            return (Error[]) $VALUES.clone();
        }

        private Error(String str, int i) {
        }

        static {
            Error[] errorArr$values = $values();
            $VALUES = errorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(errorArr$values);
        }
    }

    public final Type getType() {
        return this.type;
    }

    public final Settings getSettings() {
        return this.settings;
    }

    public final Error getError() {
        return this.error;
    }

    public final MagstripePayment.FallbackReason getFallbackReason() {
        return this.fallbackReason;
    }

    public final Amount getAmount() {
        return this.amount;
    }

    public final Cart getCart() {
        return this.cart;
    }

    public final ChargeAttempt getChargeAttempt() {
        return this.chargeAttempt;
    }

    public final int getNumOfCanceledPayments() {
        return this.numOfCanceledPayments;
    }

    public final Confirmation getConfirmation() {
        return this.confirmation;
    }

    public final Set<ReaderConfiguration.ReaderType> getActiveReaderConfiguration() {
        return this.activeReaderConfiguration;
    }

    public final IntegrationType getIntegrationType() {
        return this.integrationType;
    }

    /* JADX INFO: renamed from: isOffline, reason: from getter */
    public final boolean getIsOffline() {
        return this.isOffline;
    }

    /* JADX INFO: renamed from: isDeferredAuthorizationCountry, reason: from getter */
    public final boolean getIsDeferredAuthorizationCountry() {
        return this.isDeferredAuthorizationCountry;
    }

    public final DeviceType getDeviceType() {
        return this.deviceType;
    }

    public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
        return this.domesticDebitPriority;
    }

    public final List<String> getDomesticDebitAids() {
        return this.domesticDebitAids;
    }

    public final boolean getForcePinEntry() {
        return this.forcePinEntry;
    }

    public final Builder toBuilder() {
        return new Builder(this.type, this.settings, this.error, this.fallbackReason, this.amount, this.cart, this.chargeAttempt, this.numOfCanceledPayments, this.confirmation, this.activeReaderConfiguration, this.integrationType, this.isOffline, this.isDeferredAuthorizationCountry, this.deviceType, this.domesticDebitPriority, this.domesticDebitAids, this.forcePinEntry);
    }

    /* JADX INFO: compiled from: Transaction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/stripe/core/transaction/Transaction$Companion;", "", "()V", "newBuilder", "Lcom/stripe/core/transaction/Transaction$Builder;", "type", "Lcom/stripe/core/transaction/Transaction$Type;", "settings", "Lcom/stripe/transaction/Settings;", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Builder newBuilder(Type type, Settings settings) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(settings, "settings");
            return new Builder(type, settings, null, null, null, null, null, 0, null, null, null, false, false, null, null, null, false, 131068, null);
        }
    }

    /* JADX INFO: compiled from: Transaction.kt */
    @Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\bC\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001BË\u0001\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!\u0012\b\b\u0002\u0010#\u001a\u00020\u001a¢\u0006\u0002\u0010$J\u0016\u0010\u0014\u001a\u00020\u00002\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010e\u001a\u00020fJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010g\u001a\u00020\u0000J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010h\u001a\u00020\u00002\b\u0010i\u001a\u0004\u0018\u00010\u001dJ\u0014\u0010j\u001a\u00020\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!J\u0010\u0010k\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u000e\u0010l\u001a\u00020m2\u0006\u0010#\u001a\u00020\u001aJ\u000e\u0010n\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u001aJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u001aJ\u000e\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010\u001c\u001a\u00020\u001dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001a\u0010#\u001a\u00020\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010\u001b\u001a\u00020\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010N\"\u0004\bV\u0010PR\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010N\"\u0004\bX\u0010PR\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010d¨\u0006r"}, d2 = {"Lcom/stripe/core/transaction/Transaction$Builder;", "", "type", "Lcom/stripe/core/transaction/Transaction$Type;", "settings", "Lcom/stripe/transaction/Settings;", "error", "Lcom/stripe/core/transaction/Transaction$Error;", "fallbackReason", "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "cart", "Lcom/stripe/cart/Cart;", "chargeAttempt", "Lcom/stripe/transaction/ChargeAttempt;", "numOfCanceledPayments", "", "confirmation", "Lcom/stripe/hardware/emv/Confirmation;", "activeReaderConfiguration", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "integrationType", "Lcom/stripe/restclient/IntegrationType;", "isOffline", "", "isDeferredAuthorizationCountry", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", BbposDeviceControllerImpl.DOMESTIC_DEBIT_PRIORITY_PARAM_NAME, "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "domesticDebitAids", "", "", BbposDeviceControllerImpl.FORCE_PIN_ENTRY, "(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)V", "getActiveReaderConfiguration$transaction_release", "()Ljava/util/Set;", "setActiveReaderConfiguration$transaction_release", "(Ljava/util/Set;)V", "getAmount$transaction_release", "()Lcom/stripe/currency/Amount;", "setAmount$transaction_release", "(Lcom/stripe/currency/Amount;)V", "getCart$transaction_release", "()Lcom/stripe/cart/Cart;", "setCart$transaction_release", "(Lcom/stripe/cart/Cart;)V", "getChargeAttempt$transaction_release", "()Lcom/stripe/transaction/ChargeAttempt;", "setChargeAttempt$transaction_release", "(Lcom/stripe/transaction/ChargeAttempt;)V", "getConfirmation$transaction_release", "()Lcom/stripe/hardware/emv/Confirmation;", "setConfirmation$transaction_release", "(Lcom/stripe/hardware/emv/Confirmation;)V", "getDeviceType$transaction_release", "()Lcom/stripe/stripeterminal/external/models/DeviceType;", "setDeviceType$transaction_release", "(Lcom/stripe/stripeterminal/external/models/DeviceType;)V", "getDomesticDebitAids$transaction_release", "()Ljava/util/List;", "setDomesticDebitAids$transaction_release", "(Ljava/util/List;)V", "getDomesticDebitPriority$transaction_release", "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;", "setDomesticDebitPriority$transaction_release", "(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;)V", "getError$transaction_release", "()Lcom/stripe/core/transaction/Transaction$Error;", "setError$transaction_release", "(Lcom/stripe/core/transaction/Transaction$Error;)V", "getFallbackReason$transaction_release", "()Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;", "setFallbackReason$transaction_release", "(Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;)V", "getForcePinEntry$transaction_release", "()Z", "setForcePinEntry$transaction_release", "(Z)V", "getIntegrationType$transaction_release", "()Lcom/stripe/restclient/IntegrationType;", "setIntegrationType$transaction_release", "(Lcom/stripe/restclient/IntegrationType;)V", "isDeferredAuthorizationCountry$transaction_release", "setDeferredAuthorizationCountry$transaction_release", "isOffline$transaction_release", "setOffline$transaction_release", "getNumOfCanceledPayments$transaction_release", "()I", "setNumOfCanceledPayments$transaction_release", "(I)V", "getSettings$transaction_release", "()Lcom/stripe/transaction/Settings;", "setSettings$transaction_release", "(Lcom/stripe/transaction/Settings;)V", "getType$transaction_release", "()Lcom/stripe/core/transaction/Transaction$Type;", "setType$transaction_release", "(Lcom/stripe/core/transaction/Transaction$Type;)V", "build", "Lcom/stripe/core/transaction/Transaction;", "incrementNumOfCanceledPayments", "setDeviceType", "devType", "setDomesticDebitAids", "setDomesticDebitPriority", "setForcePinEntry", "", "setIsDeferredAuthorizationCountry", "isDeferredAuthCountry", "setOffline", "offline", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private Set<? extends ReaderConfiguration.ReaderType> activeReaderConfiguration;
        private Amount amount;
        private Cart cart;
        private ChargeAttempt chargeAttempt;
        private Confirmation confirmation;
        private DeviceType deviceType;
        private List<String> domesticDebitAids;
        private ReaderConfiguration.DomesticDebitPriority domesticDebitPriority;
        private Error error;
        private MagstripePayment.FallbackReason fallbackReason;
        private boolean forcePinEntry;
        private IntegrationType integrationType;
        private boolean isDeferredAuthorizationCountry;
        private boolean isOffline;
        private int numOfCanceledPayments;
        private Settings settings;
        private Type type;

        public Builder(Type type, Settings settings, Error error, MagstripePayment.FallbackReason fallbackReason, Amount amount, Cart cart, ChargeAttempt chargeAttempt, int i, Confirmation confirmation, Set<? extends ReaderConfiguration.ReaderType> set, IntegrationType integrationType, boolean z, boolean z2, DeviceType deviceType, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, List<String> list, boolean z3) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(settings, "settings");
            Intrinsics.checkNotNullParameter(fallbackReason, "fallbackReason");
            Intrinsics.checkNotNullParameter(deviceType, "deviceType");
            this.type = type;
            this.settings = settings;
            this.error = error;
            this.fallbackReason = fallbackReason;
            this.amount = amount;
            this.cart = cart;
            this.chargeAttempt = chargeAttempt;
            this.numOfCanceledPayments = i;
            this.confirmation = confirmation;
            this.activeReaderConfiguration = set;
            this.integrationType = integrationType;
            this.isOffline = z;
            this.isDeferredAuthorizationCountry = z2;
            this.deviceType = deviceType;
            this.domesticDebitPriority = domesticDebitPriority;
            this.domesticDebitAids = list;
            this.forcePinEntry = z3;
        }

        /* JADX INFO: renamed from: getType$transaction_release, reason: from getter */
        public final Type getType() {
            return this.type;
        }

        public final void setType$transaction_release(Type type) {
            Intrinsics.checkNotNullParameter(type, "<set-?>");
            this.type = type;
        }

        /* JADX INFO: renamed from: getSettings$transaction_release, reason: from getter */
        public final Settings getSettings() {
            return this.settings;
        }

        public final void setSettings$transaction_release(Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "<set-?>");
            this.settings = settings;
        }

        /* JADX INFO: renamed from: getError$transaction_release, reason: from getter */
        public final Error getError() {
            return this.error;
        }

        public final void setError$transaction_release(Error error) {
            this.error = error;
        }

        /* JADX INFO: renamed from: getFallbackReason$transaction_release, reason: from getter */
        public final MagstripePayment.FallbackReason getFallbackReason() {
            return this.fallbackReason;
        }

        public final void setFallbackReason$transaction_release(MagstripePayment.FallbackReason fallbackReason) {
            Intrinsics.checkNotNullParameter(fallbackReason, "<set-?>");
            this.fallbackReason = fallbackReason;
        }

        /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
            java.lang.NullPointerException
            */
        public /* synthetic */ Builder(com.stripe.core.transaction.Transaction.Type r22, com.stripe.transaction.Settings r23, com.stripe.core.transaction.Transaction.Error r24, com.stripe.transaction.payment.MagstripePayment.FallbackReason r25, com.stripe.currency.Amount r26, com.stripe.cart.Cart r27, com.stripe.transaction.ChargeAttempt r28, int r29, com.stripe.hardware.emv.Confirmation r30, java.util.Set r31, com.stripe.restclient.IntegrationType r32, boolean r33, boolean r34, com.stripe.stripeterminal.external.models.DeviceType r35, com.stripe.hardware.ReaderConfiguration.DomesticDebitPriority r36, java.util.List r37, boolean r38, int r39, kotlin.jvm.internal.DefaultConstructorMarker r40) {
            /*
                r21 = this;
                r0 = r39
                r1 = r0 & 4
                r2 = 0
                if (r1 == 0) goto L9
                r6 = r2
                goto Lb
            L9:
                r6 = r24
            Lb:
                r1 = r0 & 8
                if (r1 == 0) goto L13
                com.stripe.transaction.payment.MagstripePayment$FallbackReason r1 = com.stripe.transaction.payment.MagstripePayment.FallbackReason.NONE
                r7 = r1
                goto L15
            L13:
                r7 = r25
            L15:
                r1 = r0 & 16
                if (r1 == 0) goto L1b
                r8 = r2
                goto L1d
            L1b:
                r8 = r26
            L1d:
                r1 = r0 & 32
                if (r1 == 0) goto L23
                r9 = r2
                goto L25
            L23:
                r9 = r27
            L25:
                r1 = r0 & 64
                if (r1 == 0) goto L2b
                r10 = r2
                goto L2d
            L2b:
                r10 = r28
            L2d:
                r1 = r0 & 128(0x80, float:1.794E-43)
                r3 = 0
                if (r1 == 0) goto L34
                r11 = r3
                goto L36
            L34:
                r11 = r29
            L36:
                r1 = r0 & 256(0x100, float:3.59E-43)
                if (r1 == 0) goto L3c
                r12 = r2
                goto L3e
            L3c:
                r12 = r30
            L3e:
                r1 = r0 & 512(0x200, float:7.175E-43)
                if (r1 == 0) goto L44
                r13 = r2
                goto L46
            L44:
                r13 = r31
            L46:
                r1 = r0 & 1024(0x400, float:1.435E-42)
                if (r1 == 0) goto L4c
                r14 = r2
                goto L4e
            L4c:
                r14 = r32
            L4e:
                r1 = r0 & 2048(0x800, float:2.87E-42)
                if (r1 == 0) goto L54
                r15 = r3
                goto L56
            L54:
                r15 = r33
            L56:
                r1 = r0 & 4096(0x1000, float:5.74E-42)
                if (r1 == 0) goto L5d
                r16 = r3
                goto L5f
            L5d:
                r16 = r34
            L5f:
                r1 = r0 & 8192(0x2000, float:1.14794E-41)
                if (r1 == 0) goto L68
                com.stripe.stripeterminal.external.models.DeviceType r1 = com.stripe.stripeterminal.external.models.DeviceType.UNKNOWN
                r17 = r1
                goto L6a
            L68:
                r17 = r35
            L6a:
                r1 = r0 & 16384(0x4000, float:2.2959E-41)
                if (r1 == 0) goto L71
                r18 = r2
                goto L73
            L71:
                r18 = r36
            L73:
                r1 = 32768(0x8000, float:4.5918E-41)
                r1 = r1 & r0
                if (r1 == 0) goto L7c
                r19 = r2
                goto L7e
            L7c:
                r19 = r37
            L7e:
                r1 = 65536(0x10000, float:9.18355E-41)
                r0 = r0 & r1
                if (r0 == 0) goto L8c
                r20 = r3
                r4 = r22
                r5 = r23
                r3 = r21
                goto L94
            L8c:
                r20 = r38
                r3 = r21
                r4 = r22
                r5 = r23
            L94:
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.transaction.Transaction.Builder.<init>(com.stripe.core.transaction.Transaction$Type, com.stripe.transaction.Settings, com.stripe.core.transaction.Transaction$Error, com.stripe.transaction.payment.MagstripePayment$FallbackReason, com.stripe.currency.Amount, com.stripe.cart.Cart, com.stripe.transaction.ChargeAttempt, int, com.stripe.hardware.emv.Confirmation, java.util.Set, com.stripe.restclient.IntegrationType, boolean, boolean, com.stripe.stripeterminal.external.models.DeviceType, com.stripe.hardware.ReaderConfiguration$DomesticDebitPriority, java.util.List, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        /* JADX INFO: renamed from: getAmount$transaction_release, reason: from getter */
        public final Amount getAmount() {
            return this.amount;
        }

        public final void setAmount$transaction_release(Amount amount) {
            this.amount = amount;
        }

        /* JADX INFO: renamed from: getCart$transaction_release, reason: from getter */
        public final Cart getCart() {
            return this.cart;
        }

        public final void setCart$transaction_release(Cart cart) {
            this.cart = cart;
        }

        /* JADX INFO: renamed from: getChargeAttempt$transaction_release, reason: from getter */
        public final ChargeAttempt getChargeAttempt() {
            return this.chargeAttempt;
        }

        public final void setChargeAttempt$transaction_release(ChargeAttempt chargeAttempt) {
            this.chargeAttempt = chargeAttempt;
        }

        /* JADX INFO: renamed from: getNumOfCanceledPayments$transaction_release, reason: from getter */
        public final int getNumOfCanceledPayments() {
            return this.numOfCanceledPayments;
        }

        public final void setNumOfCanceledPayments$transaction_release(int i) {
            this.numOfCanceledPayments = i;
        }

        /* JADX INFO: renamed from: getConfirmation$transaction_release, reason: from getter */
        public final Confirmation getConfirmation() {
            return this.confirmation;
        }

        public final void setConfirmation$transaction_release(Confirmation confirmation) {
            this.confirmation = confirmation;
        }

        public final Set<ReaderConfiguration.ReaderType> getActiveReaderConfiguration$transaction_release() {
            return this.activeReaderConfiguration;
        }

        public final void setActiveReaderConfiguration$transaction_release(Set<? extends ReaderConfiguration.ReaderType> set) {
            this.activeReaderConfiguration = set;
        }

        /* JADX INFO: renamed from: getIntegrationType$transaction_release, reason: from getter */
        public final IntegrationType getIntegrationType() {
            return this.integrationType;
        }

        public final void setIntegrationType$transaction_release(IntegrationType integrationType) {
            this.integrationType = integrationType;
        }

        /* JADX INFO: renamed from: isOffline$transaction_release, reason: from getter */
        public final boolean getIsOffline() {
            return this.isOffline;
        }

        public final void setOffline$transaction_release(boolean z) {
            this.isOffline = z;
        }

        /* JADX INFO: renamed from: isDeferredAuthorizationCountry$transaction_release, reason: from getter */
        public final boolean getIsDeferredAuthorizationCountry() {
            return this.isDeferredAuthorizationCountry;
        }

        public final void setDeferredAuthorizationCountry$transaction_release(boolean z) {
            this.isDeferredAuthorizationCountry = z;
        }

        /* JADX INFO: renamed from: getDeviceType$transaction_release, reason: from getter */
        public final DeviceType getDeviceType() {
            return this.deviceType;
        }

        public final void setDeviceType$transaction_release(DeviceType deviceType) {
            Intrinsics.checkNotNullParameter(deviceType, "<set-?>");
            this.deviceType = deviceType;
        }

        /* JADX INFO: renamed from: getDomesticDebitPriority$transaction_release, reason: from getter */
        public final ReaderConfiguration.DomesticDebitPriority getDomesticDebitPriority() {
            return this.domesticDebitPriority;
        }

        public final void setDomesticDebitPriority$transaction_release(ReaderConfiguration.DomesticDebitPriority domesticDebitPriority) {
            this.domesticDebitPriority = domesticDebitPriority;
        }

        public final List<String> getDomesticDebitAids$transaction_release() {
            return this.domesticDebitAids;
        }

        public final void setDomesticDebitAids$transaction_release(List<String> list) {
            this.domesticDebitAids = list;
        }

        /* JADX INFO: renamed from: getForcePinEntry$transaction_release, reason: from getter */
        public final boolean getForcePinEntry() {
            return this.forcePinEntry;
        }

        public final void setForcePinEntry$transaction_release(boolean z) {
            this.forcePinEntry = z;
        }

        public final Builder type(Type type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder error(Error error) {
            this.error = error;
            return this;
        }

        public final Builder fallbackReason(MagstripePayment.FallbackReason fallbackReason) {
            Intrinsics.checkNotNullParameter(fallbackReason, "fallbackReason");
            this.fallbackReason = fallbackReason;
            return this;
        }

        public final Builder amount(Amount amount) {
            this.amount = amount;
            return this;
        }

        public final Builder cart(Cart cart) {
            this.cart = cart;
            return this;
        }

        public final Builder chargeAttempt(ChargeAttempt chargeAttempt) {
            this.chargeAttempt = chargeAttempt;
            return this;
        }

        public final Builder incrementNumOfCanceledPayments() {
            if (this.settings.getAllowIncrementNumOfCanceledPayments()) {
                this.numOfCanceledPayments++;
            }
            return this;
        }

        public final Builder confirmation(Confirmation confirmation) {
            this.confirmation = confirmation;
            return this;
        }

        public final Builder activeReaderConfiguration(Set<? extends ReaderConfiguration.ReaderType> activeReaderConfiguration) {
            this.activeReaderConfiguration = activeReaderConfiguration;
            return this;
        }

        public final Builder integrationType(IntegrationType integrationType) {
            this.integrationType = integrationType;
            return this;
        }

        public final Builder setOffline(boolean offline) {
            this.isOffline = offline;
            return this;
        }

        public final Builder setIsDeferredAuthorizationCountry(boolean isDeferredAuthCountry) {
            this.isDeferredAuthorizationCountry = isDeferredAuthCountry;
            return this;
        }

        public final Builder setDeviceType(DeviceType devType) {
            if (devType == null) {
                devType = DeviceType.UNKNOWN;
            }
            this.deviceType = devType;
            return this;
        }

        public final Builder setDomesticDebitPriority(ReaderConfiguration.DomesticDebitPriority domesticDebitPriority) {
            this.domesticDebitPriority = domesticDebitPriority;
            return this;
        }

        public final Builder setDomesticDebitAids(List<String> domesticDebitAids) {
            Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
            this.domesticDebitAids = domesticDebitAids;
            return this;
        }

        public final void setForcePinEntry(boolean forcePinEntry) {
            this.forcePinEntry = forcePinEntry;
        }

        public final Transaction build() {
            return new Transaction(this);
        }
    }
}
