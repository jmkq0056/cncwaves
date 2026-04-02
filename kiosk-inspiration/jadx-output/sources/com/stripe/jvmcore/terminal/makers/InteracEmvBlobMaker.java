package com.stripe.jvmcore.terminal.makers;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.TlvMap;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: InteracEmvBlobMaker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/jvmcore/terminal/makers/InteracEmvBlobMaker;", "", "()V", "Companion", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InteracEmvBlobMaker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: InteracEmvBlobMaker.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u001c\u0010\u000b\u001a\u00020\u00042\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\rH\u0002¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/terminal/makers/InteracEmvBlobMaker$Companion;", "", "()V", "create", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "emvBlob", "generateTlv", "tag", "value", "generateTlvs", "tlvs", "", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String create(long amount, String emvBlob) {
            Intrinsics.checkNotNullParameter(emvBlob, "emvBlob");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format(Locale.ROOT, "%012d", Arrays.copyOf(new Object[]{Long.valueOf(amount)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return emvBlob + generateTlvs(MapsKt.mapOf(TuplesKt.to(TlvMap.TAG_ACCOUNT_TYPE, "20"), TuplesKt.to(TlvMap.TAG_AMOUNT_AUTHORIZED, str), TuplesKt.to(TlvMap.TAG_APPLICATION_CRYPTOGRAM, "9D8FED825F205F4A"), TuplesKt.to(TlvMap.TAG_APPLICATION_INTERCHANGE_PROFILE, "1C00"), TuplesKt.to(TlvMap.TAG_APPLICATION_LABEL, "494E5445524143"), TuplesKt.to(TlvMap.TAG_APPLICATION_PAN_SEQUENCE_NUMBER, TlvMap.SET_BUZZER_DISABLED_VALUE), TuplesKt.to(TlvMap.TAG_APPLICATION_PREFERRED_NAME, "496E7465726163"), TuplesKt.to(TlvMap.TAG_APPLICATION_PRIMARY_ACCOUNT_NUMBER, "4506445006931933"), TuplesKt.to(TlvMap.TAG_APPLICATION_TRANSACTION_COUNTER, "0009"), TuplesKt.to(TlvMap.TAG_APPLICATION_USAGE_CONTROL, "AB00"), TuplesKt.to(TlvMap.TAG_CARDHOLDER_NAME, "55534120494E54455241432F5465737420436172642030312020"), TuplesKt.to(TlvMap.TAG_CASHBACK_AMOUNT, str), TuplesKt.to(TlvMap.TAG_CRYPTOGRAM_INFORMATION_DATA, "80"), TuplesKt.to(TlvMap.TAG_DEDICATED_FILE_NAME, ApplicationId.INTERAC.getId()), TuplesKt.to(TlvMap.TAG_ISSUER_APPLICATION_DATA, "06010A03A4B800"), TuplesKt.to(TlvMap.TAG_LANGUAGE_PREFERENCE, "656E"), TuplesKt.to(TlvMap.TAG_SERVICE_CODE, "0220"), TuplesKt.to(TlvMap.TAG_TERMINAL_APPLICATION_VERSION_NUMBER, "0001"), TuplesKt.to(TlvMap.TAG_TERMINAL_CAPABILITIES, "E0B8C8"), TuplesKt.to(TlvMap.TAG_TERMINAL_COUNTRY_CODE, "0124"), TuplesKt.to(TlvMap.TAG_TERMINAL_SERIAL_NUMBER, "3735323537363238"), TuplesKt.to(TlvMap.TAG_TERMINAL_TYPE, "21"), TuplesKt.to(TlvMap.TAG_TERMINAL_VERIFICATION_RESULTS, "8000008000"), TuplesKt.to(TlvMap.TAG_TRANSACTION_CURRENCY_CODE, "0124"), TuplesKt.to(TlvMap.TAG_TRANSACTION_SEQUENCE_COUNTER, "0001"), TuplesKt.to(TlvMap.TAG_TRANSACTION_STATUS_INFORMATION, "6800"), TuplesKt.to(TlvMap.TAG_TRANSACTION_TIME, "074641"), TuplesKt.to(TlvMap.TAG_TRANSACTION_TYPE, TlvMap.SET_BUZZER_ENABLED_VALUE), TuplesKt.to(TlvMap.TAG_UNPREDICTABLE_NUMBER, "DE676942")));
        }

        private final String generateTlvs(Map<String, String> tlvs) {
            return CollectionsKt.joinToString$default(tlvs.entrySet(), "", null, null, 0, null, new Function1<Map.Entry<? extends String, ? extends String>, CharSequence>() { // from class: com.stripe.jvmcore.terminal.makers.InteracEmvBlobMaker$Companion$generateTlvs$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final CharSequence invoke2(Map.Entry<String, String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return InteracEmvBlobMaker.INSTANCE.generateTlv(it.getKey(), it.getValue());
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends String> entry) {
                    return invoke2((Map.Entry<String, String>) entry);
                }
            }, 30, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String generateTlv(String tag, String value) {
            if (value.length() % 2 != 0) {
                value = value + 'F';
            }
            String string = Integer.toString(value.length() / 2, CharsKt.checkRadix(16));
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String upperCase = string.toUpperCase(US);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return tag + StringsKt.padStart(upperCase, 2, '0') + value;
        }
    }
}
