package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.sdk.DomesticDebitPriority;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DomesticDebitPriorityMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"convert", "", "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;", "(Lcom/stripe/bbpos/sdk/DomesticDebitPriority;)Ljava/lang/Integer;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DomesticDebitPriorityMapperKt {

    /* JADX INFO: compiled from: DomesticDebitPriorityMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DomesticDebitPriority.values().length];
            try {
                iArr[DomesticDebitPriority.DOMESTIC_DEBIT_PRIORITY_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DomesticDebitPriority.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DomesticDebitPriority.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DomesticDebitPriority.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DomesticDebitPriority.OFF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Integer convert(DomesticDebitPriority domesticDebitPriority) {
        Intrinsics.checkNotNullParameter(domesticDebitPriority, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[domesticDebitPriority.ordinal()];
        if (i == 1) {
            return null;
        }
        if (i == 2) {
            return 0;
        }
        if (i == 3) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 5) {
            return 3;
        }
        throw new NoWhenBranchMatchedException();
    }
}
