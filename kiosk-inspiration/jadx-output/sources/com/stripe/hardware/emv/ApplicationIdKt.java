package com.stripe.hardware.emv;

import com.stripe.misc.CardBrand;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ApplicationId.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0001¨\u0006\u0006"}, d2 = {"getApplicationIdOrNull", "Lcom/stripe/hardware/emv/ApplicationId;", OfflineStorageConstantsKt.ID, "", "getCardBrandForApplication", "Lcom/stripe/misc/CardBrand;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ApplicationIdKt {

    /* JADX INFO: compiled from: ApplicationId.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ApplicationId.values().length];
            try {
                iArr[ApplicationId.VISA_CREDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApplicationId.VISA_ELECTRON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApplicationId.MASTERCARD_CREDIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ApplicationId.MAESTRO_DEBIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ApplicationId.MAESTRO_US.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ApplicationId.AMEX_CREDIT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ApplicationId.EFTPOS_SAVING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ApplicationId.EFTPOS_CHECKING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ApplicationId.GIROCARD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ApplicationId.JCB.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ApplicationId.DISCOVER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ApplicationId.DISCOVER_ZIP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ApplicationId.UNION_PAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ApplicationId.UNION_PAY_QUASI.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ApplicationId getApplicationIdOrNull(String str) {
        ApplicationId applicationId = null;
        if (str == null) {
            return null;
        }
        Iterator<ApplicationId> it = ApplicationId.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ApplicationId next = it.next();
            if (StringsKt.startsWith$default(str, next.getId(), false, 2, (Object) null)) {
                applicationId = next;
                break;
            }
        }
        return applicationId;
    }

    public static final CardBrand getCardBrandForApplication(ApplicationId applicationId) {
        Intrinsics.checkNotNullParameter(applicationId, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[applicationId.ordinal()]) {
            case 1:
            case 2:
                return CardBrand.VISA;
            case 3:
            case 4:
            case 5:
                return CardBrand.MASTERCARD;
            case 6:
                return CardBrand.AMEX;
            case 7:
            case 8:
                return CardBrand.EFTPOS_AU;
            case 9:
                return CardBrand.GIROCARD;
            case 10:
                return CardBrand.JCB;
            case 11:
            case 12:
                return CardBrand.DISCOVER;
            case 13:
            case 14:
                return CardBrand.UNIONPAY;
            default:
                return CardBrand.UNKNOWN;
        }
    }
}
