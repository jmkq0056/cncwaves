package com.stripe.transaction.payment;

import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.SourceType;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.model.sdk.CardEntryMethod;
import com.stripe.proto.model.sdk.CardPaymentMethod;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmvPayment.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J;\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\b\u0010$\u001a\u00020\u000bH\u0016J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, d2 = {"Lcom/stripe/transaction/payment/EmvPayment;", "Lcom/stripe/transaction/payment/Payment;", "authData", "", "interfaceType", "Lcom/stripe/hardware/emv/InterfaceType;", "emvTransactionType", "Lcom/stripe/hardware/emv/EmvTransactionType;", "sourceType", "Lcom/stripe/hardware/emv/SourceType;", "encryptedEmv", "", "(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V", "getAuthData$annotations", "()V", "getAuthData", "()Ljava/lang/String;", "getEmvTransactionType", "()Lcom/stripe/hardware/emv/EmvTransactionType;", "getEncryptedEmv", "()Z", "getInterfaceType", "()Lcom/stripe/hardware/emv/InterfaceType;", "getSourceType", "()Lcom/stripe/hardware/emv/SourceType;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "supportsSca", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EmvPayment extends Payment {
    private final String authData;
    private final EmvTransactionType emvTransactionType;
    private final boolean encryptedEmv;
    private final InterfaceType interfaceType;
    private final SourceType sourceType;

    /* JADX INFO: compiled from: EmvPayment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InterfaceType.values().length];
            try {
                iArr[InterfaceType.CONTACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InterfaceType.CONTACTLESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SourceType.values().length];
            try {
                iArr2[SourceType.CARD_PRESENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[SourceType.INTERAC_PRESENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static /* synthetic */ EmvPayment copy$default(EmvPayment emvPayment, String str, InterfaceType interfaceType, EmvTransactionType emvTransactionType, SourceType sourceType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emvPayment.authData;
        }
        if ((i & 2) != 0) {
            interfaceType = emvPayment.interfaceType;
        }
        if ((i & 4) != 0) {
            emvTransactionType = emvPayment.emvTransactionType;
        }
        if ((i & 8) != 0) {
            sourceType = emvPayment.sourceType;
        }
        if ((i & 16) != 0) {
            z = emvPayment.encryptedEmv;
        }
        boolean z2 = z;
        EmvTransactionType emvTransactionType2 = emvTransactionType;
        return emvPayment.copy(str, interfaceType, emvTransactionType2, sourceType, z2);
    }

    public static /* synthetic */ void getAuthData$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAuthData() {
        return this.authData;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SourceType getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getEncryptedEmv() {
        return this.encryptedEmv;
    }

    public final EmvPayment copy(String authData, InterfaceType interfaceType, EmvTransactionType emvTransactionType, SourceType sourceType, boolean encryptedEmv) {
        Intrinsics.checkNotNullParameter(authData, "authData");
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        return new EmvPayment(authData, interfaceType, emvTransactionType, sourceType, encryptedEmv);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EmvPayment)) {
            return false;
        }
        EmvPayment emvPayment = (EmvPayment) other;
        return Intrinsics.areEqual(this.authData, emvPayment.authData) && this.interfaceType == emvPayment.interfaceType && this.emvTransactionType == emvPayment.emvTransactionType && this.sourceType == emvPayment.sourceType && this.encryptedEmv == emvPayment.encryptedEmv;
    }

    public int hashCode() {
        return (((((((this.authData.hashCode() * 31) + this.interfaceType.hashCode()) * 31) + this.emvTransactionType.hashCode()) * 31) + this.sourceType.hashCode()) * 31) + Boolean.hashCode(this.encryptedEmv);
    }

    public String toString() {
        return "EmvPayment(authData=██, interfaceType=" + this.interfaceType + ", emvTransactionType=" + this.emvTransactionType + ", sourceType=" + this.sourceType + ", encryptedEmv=" + this.encryptedEmv + ')';
    }

    public /* synthetic */ EmvPayment(String str, InterfaceType interfaceType, EmvTransactionType emvTransactionType, SourceType sourceType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, interfaceType, emvTransactionType, sourceType, (i & 16) != 0 ? true : z);
    }

    public final String getAuthData() {
        return this.authData;
    }

    public final InterfaceType getInterfaceType() {
        return this.interfaceType;
    }

    public final EmvTransactionType getEmvTransactionType() {
        return this.emvTransactionType;
    }

    public final SourceType getSourceType() {
        return this.sourceType;
    }

    public final boolean getEncryptedEmv() {
        return this.encryptedEmv;
    }

    public EmvPayment(String authData, InterfaceType interfaceType, EmvTransactionType emvTransactionType, SourceType sourceType, boolean z) {
        int i;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent;
        RequestedPaymentMethod requestedPaymentMethodCopy$default;
        CardEntryMethod cardEntryMethod;
        Intrinsics.checkNotNullParameter(authData, "authData");
        Intrinsics.checkNotNullParameter(interfaceType, "interfaceType");
        Intrinsics.checkNotNullParameter(emvTransactionType, "emvTransactionType");
        Intrinsics.checkNotNullParameter(sourceType, "sourceType");
        this.authData = authData;
        this.interfaceType = interfaceType;
        this.emvTransactionType = emvTransactionType;
        this.sourceType = sourceType;
        this.encryptedEmv = z;
        int i2 = WhenMappings.$EnumSwitchMapping$0[interfaceType.ordinal()];
        PaymentMethod paymentMethodCopy$default = null;
        if (i2 == 1) {
            i = 1;
            requestedCardPresent = new RequestedPaymentMethod.RequestedCardPresent(z ? "encrypted_emv" : "emv", "contact_emv", null, null, EmvPaymentKt.toEmvProcessingMethod(emvTransactionType), authData, null, null, null, null, null, null, null, null, null, null, 65484, null);
        } else {
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            String str = z ? "encrypted_emv" : "emv";
            TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(authData);
            i = 1;
            requestedCardPresent = new RequestedPaymentMethod.RequestedCardPresent(str, Intrinsics.areEqual(tlvMap != null ? tlvMap.get(TlvMap.TAG_POS_ENTRY_MODE) : null, "91") ? "contactless_magstripe_mode" : "contactless_emv", null, null, null, authData, null, null, null, null, null, null, null, null, null, null, 65500, null);
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent2 = requestedCardPresent;
        int i3 = WhenMappings.$EnumSwitchMapping$1[sourceType.ordinal()];
        if (i3 == i) {
            requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(getRestSource(), "card_present", requestedCardPresent2, null, null, null, null, null, WinError.ERROR_INVALID_LEVEL, null);
        } else {
            if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(getRestSource(), "interac_present", null, requestedCardPresent2, null, null, null, null, 122, null);
        }
        setRestSource(requestedPaymentMethodCopy$default);
        PaymentMethod sdkSource = getSdkSource();
        if (sdkSource != null) {
            int i4 = WhenMappings.$EnumSwitchMapping$0[interfaceType.ordinal()];
            if (i4 == i) {
                cardEntryMethod = CardEntryMethod.CHIP_READ;
            } else {
                if (i4 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                cardEntryMethod = CardEntryMethod.CONTACTLESS;
            }
            paymentMethodCopy$default = PaymentMethod.copy$default(sdkSource, new CardPaymentMethod(null, null, null, cardEntryMethod, null, 23, null), null, null, null, 14, null);
        }
        setSdkSource(paymentMethodCopy$default);
    }

    @Override // com.stripe.transaction.payment.Payment
    public boolean supportsSca() {
        return this.emvTransactionType == EmvTransactionType.TRADITIONAL;
    }
}
