package com.stripe.stripeterminal.external.internal;

import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.ApplicationPreferredName;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.stripeterminal.external.models.RoutingPriority;
import com.stripe.stripeterminal.external.models.SimulatedCardType;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.HexExtensionsKt;
import kotlin.text.HexFormat;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: EmvBlob.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/internal/EmvBlob;", "", "blob", "", "(Ljava/lang/String;)V", "getBlob", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EmvBlob {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String OFFLINE_PIN_CVM_VALUE = "410302";
    private static final String ONLINE_PIN_CVM_VALUE = "020000";
    private static final String PIN_BLOCK = "0000000000000000";
    private final String blob;

    public /* synthetic */ EmvBlob(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public static /* synthetic */ EmvBlob copy$default(EmvBlob emvBlob, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emvBlob.blob;
        }
        return emvBlob.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBlob() {
        return this.blob;
    }

    public final EmvBlob copy(String blob) {
        Intrinsics.checkNotNullParameter(blob, "blob");
        return new EmvBlob(blob);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof EmvBlob) && Intrinsics.areEqual(this.blob, ((EmvBlob) other).blob);
    }

    public int hashCode() {
        return this.blob.hashCode();
    }

    public String toString() {
        return "EmvBlob(blob=" + this.blob + ')';
    }

    private EmvBlob(String str) {
        this.blob = str;
    }

    public final String getBlob() {
        return this.blob;
    }

    /* JADX INFO: compiled from: EmvBlob.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0017J=\u0010\u0018\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u001cJ\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;", "", "()V", "OFFLINE_PIN_CVM_VALUE", "", "ONLINE_PIN_CVM_VALUE", "PIN_BLOCK", "buildApplicationSpecificTlvs", "pan", "computedPriority", "", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "buildCvmEmvData", "simulatedCardPan", "isScaRecollection", "", "fromCardType", "Lcom/stripe/stripeterminal/external/internal/EmvBlob;", "cardType", "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;", "fromCardType$public_release", "fromTestCardNumber", "testCardNumber", "fromTestCardNumber$public_release", "generateEmvData", "expMonth", "", "expYear", "generateEmvData$public_release", "generateTlv", "tag", "value", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: EmvBlob.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ApplicationId.values().length];
                try {
                    iArr[ApplicationId.INTERAC.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ApplicationId.EFTPOS_SAVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EmvBlob fromTestCardNumber$public_release(String testCardNumber) {
            Intrinsics.checkNotNullParameter(testCardNumber, "testCardNumber");
            return generateEmvData$public_release$default(this, testCardNumber, 12, 30, CollectionsKt.emptyList(), false, 16, null);
        }

        public final EmvBlob fromCardType$public_release(SimulatedCardType cardType) {
            Intrinsics.checkNotNullParameter(cardType, "cardType");
            return generateEmvData$public_release$default(this, cardType.getCardNumber(), cardType.getExpMonth(), cardType.getExpYear(), CollectionsKt.emptyList(), false, 16, null);
        }

        public static /* synthetic */ EmvBlob generateEmvData$public_release$default(Companion companion, String str, int i, int i2, List list, boolean z, int i3, Object obj) {
            if ((i3 & 16) != 0) {
                z = false;
            }
            return companion.generateEmvData$public_release(str, i, i2, list, z);
        }

        public final EmvBlob generateEmvData$public_release(String pan, int expMonth, int expYear, List<? extends RoutingPriority> computedPriority, boolean isScaRecollection) throws TerminalException {
            Intrinsics.checkNotNullParameter(pan, "pan");
            Intrinsics.checkNotNullParameter(computedPriority, "computedPriority");
            return new EmvBlob(generateTlv(TlvMap.TAG_TRACK_2_DATA, pan + 'D' + expYear + expMonth + "101") + generateTlv(TlvMap.TAG_POS_ENTRY_MODE, Intrinsics.areEqual(pan, SimulatedCardType.INTERAC.getCardNumber()) ? TlvMap.ENTRY_MODE_CONTACT : TlvMap.ENTRY_MODE_CONTACTLESS) + buildApplicationSpecificTlvs(pan, computedPriority) + buildCvmEmvData(pan, isScaRecollection) + generateTlv(TlvMap.TAG_TERMINAL_VERIFICATION_RESULTS, "0000008000") + generateTlv(TlvMap.TAG_EXPIRATION_DATE, expYear + expMonth + TlvMap.SET_BUZZER_DISABLED_VALUE) + generateTlv(TlvMap.TAG_BBPOS_PAN_FIRST_SIX_AND_LAST_FOUR, pan.length() == 15 ? pan + 'F' : pan) + generateTlv(TlvMap.TAG_LANGUAGE_PREFERENCE, "656E"), null);
        }

        private final String buildCvmEmvData(String simulatedCardPan, boolean isScaRecollection) {
            if (Intrinsics.areEqual(simulatedCardPan, SimulatedCardType.OFFLINE_PIN_CVM.getCardNumber()) || (Intrinsics.areEqual(simulatedCardPan, SimulatedCardType.OFFLINE_PIN_SCA_RETRY.getCardNumber()) && isScaRecollection)) {
                return generateTlv(TlvMap.TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS, EmvBlob.OFFLINE_PIN_CVM_VALUE);
            }
            if (Intrinsics.areEqual(simulatedCardPan, SimulatedCardType.ONLINE_PIN_CVM.getCardNumber()) || (Intrinsics.areEqual(simulatedCardPan, SimulatedCardType.ONLINE_PIN_SCA_RETRY.getCardNumber()) && isScaRecollection)) {
                return generateTlv(TlvMap.TAG_CUSTOMER_VERIFICATION_METHOD_RESULTS, EmvBlob.ONLINE_PIN_CVM_VALUE) + generateTlv(TlvMap.TAG_PIN_DATA, EmvBlob.PIN_BLOCK);
            }
            return "";
        }

        private final String buildApplicationSpecificTlvs(String pan, List<? extends RoutingPriority> computedPriority) throws TerminalException {
            Pair pair;
            boolean z = (computedPriority.isEmpty() || computedPriority.contains(RoutingPriority.DOMESTIC)) ? false : true;
            boolean zAreEqual = Intrinsics.areEqual(computedPriority, CollectionsKt.listOf((Object[]) new RoutingPriority[]{RoutingPriority.DOMESTIC, RoutingPriority.INTERNATIONAL}));
            boolean zAreEqual2 = Intrinsics.areEqual(pan, SimulatedCardType.INTERAC.getCardNumber());
            boolean zAreEqual3 = Intrinsics.areEqual(pan, SimulatedCardType.EFTPOS_AU_DEBIT.getCardNumber());
            boolean zContains = ArraysKt.contains(new String[]{SimulatedCardType.EFTPOS_AU_DEBIT_MASTERCARD.getCardNumber(), SimulatedCardType.EFTPOS_AU_VISA_DEBIT.getCardNumber()}, pan);
            boolean zAreEqual4 = Intrinsics.areEqual(pan, SimulatedCardType.VISA_US_COMMON_DEBIT.getCardNumber());
            boolean zContains2 = ArraysKt.contains(new String[]{SimulatedCardType.VISA.getCardNumber(), SimulatedCardType.VISA_DEBIT.getCardNumber(), SimulatedCardType.CHARGE_DECLINED.getCardNumber(), SimulatedCardType.CHARGE_DECLINED_INSUFFICIENT_FUNDS.getCardNumber(), SimulatedCardType.CHARGE_DECLINED_LOST_CARD.getCardNumber(), SimulatedCardType.CHARGE_DECLINED_STOLEN_CARD.getCardNumber(), SimulatedCardType.CHARGE_DECLINED_EXPIRED_CARD.getCardNumber(), SimulatedCardType.CHARGE_DECLINED_PROCESSING_ERROR.getCardNumber(), SimulatedCardType.OFFLINE_PIN_CVM.getCardNumber(), SimulatedCardType.OFFLINE_PIN_SCA_RETRY.getCardNumber(), SimulatedCardType.ONLINE_PIN_CVM.getCardNumber(), SimulatedCardType.ONLINE_PIN_SCA_RETRY.getCardNumber(), SimulatedCardType.EFTPOS_AU_VISA_DEBIT.getCardNumber(), SimulatedCardType.VISA_US_COMMON_DEBIT.getCardNumber()}, pan);
            boolean zContains3 = ArraysKt.contains(new String[]{SimulatedCardType.AMEX.getCardNumber(), SimulatedCardType.AMEX_2.getCardNumber()}, pan);
            boolean zContains4 = ArraysKt.contains(new String[]{SimulatedCardType.MASTERCARD.getCardNumber(), SimulatedCardType.MASTERCARD_DEBIT.getCardNumber(), SimulatedCardType.MASTERCARD_PREPAID.getCardNumber(), SimulatedCardType.EFTPOS_AU_DEBIT_MASTERCARD.getCardNumber()}, pan);
            boolean zContains5 = ArraysKt.contains(new String[]{SimulatedCardType.DISCOVER.getCardNumber(), SimulatedCardType.DISCOVER_2.getCardNumber(), SimulatedCardType.DINERS.getCardNumber(), SimulatedCardType.DINERS_14_DIGITS.getCardNumber()}, pan);
            boolean zAreEqual5 = Intrinsics.areEqual(pan, SimulatedCardType.JCB.getCardNumber());
            boolean zAreEqual6 = Intrinsics.areEqual(pan, SimulatedCardType.UNION_PAY.getCardNumber());
            AccountType accountType = null;
            if (zAreEqual2) {
                pair = new Pair(ApplicationId.INTERAC, ApplicationPreferredName.INTERAC);
            } else {
                if (zAreEqual3 && z) {
                    throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "You cannot use proprietary eftpos_au debit card with this PaymentIntent's routing option. We recommend setting the PaymentIntent's capture method to `automatic` or `manual_preferred`", null, null, 12, null);
                }
                if (zAreEqual3) {
                    pair = new Pair(ApplicationId.EFTPOS_SAVING, ApplicationPreferredName.EFTPOS_SAVING);
                } else if (zContains && zAreEqual) {
                    pair = new Pair(ApplicationId.EFTPOS_SAVING, ApplicationPreferredName.EFTPOS_SAVING);
                } else if (zAreEqual4 && zAreEqual) {
                    pair = new Pair(ApplicationId.VISA_US_COMMON_DEBIT, ApplicationPreferredName.VISA_US_COMMON_DEBIT);
                } else if (zContains2) {
                    pair = new Pair(ApplicationId.VISA_CREDIT, ApplicationPreferredName.VISA);
                } else if (zContains3) {
                    pair = new Pair(ApplicationId.AMEX_CREDIT, ApplicationPreferredName.AMEX);
                } else if (zContains4) {
                    pair = new Pair(ApplicationId.MASTERCARD_CREDIT, ApplicationPreferredName.MASTERCARD);
                } else if (zAreEqual5) {
                    pair = new Pair(ApplicationId.JCB, ApplicationPreferredName.JCB);
                } else if (zContains5) {
                    pair = new Pair(ApplicationId.DISCOVER, ApplicationPreferredName.DISCOVER);
                } else if (zAreEqual6) {
                    pair = new Pair(ApplicationId.UNION_PAY, ApplicationPreferredName.UNION_PAY_CREDIT);
                } else {
                    pair = new Pair(null, null);
                }
            }
            ApplicationId applicationId = (ApplicationId) pair.component1();
            ApplicationPreferredName applicationPreferredName = (ApplicationPreferredName) pair.component2();
            int i = applicationId == null ? -1 : WhenMappings.$EnumSwitchMapping$0[applicationId.ordinal()];
            if (i == 1) {
                accountType = AccountType.CHECKING;
            } else if (i == 2) {
                accountType = AccountType.SAVINGS;
            }
            StringBuilder sb = new StringBuilder();
            if (applicationId != null) {
                sb.append(EmvBlob.INSTANCE.generateTlv(TlvMap.TAG_APPLICATION_ID, applicationId.getId()));
                sb.append(EmvBlob.INSTANCE.generateTlv(TlvMap.TAG_DEDICATED_FILE_NAME, applicationId.getId()));
            }
            if (applicationPreferredName != null) {
                sb.append(EmvBlob.INSTANCE.generateTlv(TlvMap.TAG_APPLICATION_PREFERRED_NAME, ArraysKt.joinToString$default(StringsKt.encodeToByteArray(applicationPreferredName.getId()), (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new Function1<Byte, CharSequence>() { // from class: com.stripe.stripeterminal.external.internal.EmvBlob$Companion$buildApplicationSpecificTlvs$1$1
                    public final CharSequence invoke(byte b) {
                        return StringsKt.padStart(HexExtensionsKt.toHexString$default(b, (HexFormat) null, 1, (Object) null), 2, '0');
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ CharSequence invoke(Byte b) {
                        return invoke(b.byteValue());
                    }
                }, 30, (Object) null)));
            }
            if (accountType != null) {
                sb.append(accountType.toTlvBlob());
            }
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }

        private final String generateTlv(String tag, String value) {
            if (value.length() % 2 != 0) {
                value = value + 'F';
            }
            String upperCase = value.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            String string = Integer.toString(upperCase.length() / 2, CharsKt.checkRadix(16));
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String upperCase2 = string.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
            return tag + StringsKt.padStart(upperCase2, 2, '0') + upperCase;
        }
    }
}
