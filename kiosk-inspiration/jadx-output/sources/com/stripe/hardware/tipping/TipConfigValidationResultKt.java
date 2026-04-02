package com.stripe.hardware.tipping;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.CurrencyCode;
import com.stripe.hardware.tipping.InvalidTipConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TipConfigValidationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a0\u0010\u0006\u001a\u00020\u00012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002\u001a0\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002¨\u0006\u0010"}, d2 = {"generateValidatedConfig", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "localizedTippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "processFixedAmountTipOption", "fixedAmountTips", "", "", FirebaseAnalytics.Param.CURRENCY, "Lcom/stripe/currency/CurrencyCode;", "isSmartTip", "", "processPercentageTipOption", "percentageTips", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TipConfigValidationResultKt {
    public static final TipConfigValidationResult generateValidatedConfig(TippingConfigPb.LocalizedTippingConfig localizedTippingConfig, Amount amount) {
        Intrinsics.checkNotNullParameter(localizedTippingConfig, "localizedTippingConfig");
        Intrinsics.checkNotNullParameter(amount, "amount");
        CurrencyCode currency = amount.getCurrency();
        if (currency == null) {
            return new InvalidTipConfig(InvalidTipConfig.Reason.NULL_TIP_CONFIG);
        }
        TippingConfigPb.Percentages percentages = localizedTippingConfig.fixed_percentage;
        TippingConfigPb.FixedAmounts fixedAmounts = localizedTippingConfig.fixed_amount;
        TippingConfigPb.SmartTip smartTip = localizedTippingConfig.smart_tip;
        if (percentages != null) {
            return processPercentageTipOption(percentages.percentages, amount, currency, false);
        }
        if (fixedAmounts != null) {
            return processFixedAmountTipOption(fixedAmounts.fixed_amounts, amount, currency, false);
        }
        if (smartTip != null) {
            if (smartTip.smart_tip_threshold != null && amount.getValue() >= r1.intValue()) {
                return processPercentageTipOption(smartTip.percentages, amount, currency, true);
            }
            return processFixedAmountTipOption(smartTip.fixed_amounts, amount, currency, true);
        }
        return new InvalidTipConfig(InvalidTipConfig.Reason.NULL_TIP_CONFIG);
    }

    private static final TipConfigValidationResult processFixedAmountTipOption(List<Integer> list, Amount amount, CurrencyCode currencyCode, boolean z) {
        List listFilterNotNull = CollectionsKt.filterNotNull(list);
        List list2 = listFilterNotNull;
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((Number) it.next()).intValue() < 1) {
                return new InvalidTipConfig(InvalidTipConfig.Reason.TIP_OUT_OF_BOUNDS);
            }
        }
        if (listFilterNotNull.size() != 3) {
            return new InvalidTipConfig(InvalidTipConfig.Reason.THREE_TIP_OPTIONS_EXPECTED);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Long.valueOf(((Number) it2.next()).intValue()));
        }
        return new FixedAmountTips(currencyCode, amount.getValue(), arrayList, z);
    }

    private static final TipConfigValidationResult processPercentageTipOption(List<Integer> list, Amount amount, CurrencyCode currencyCode, boolean z) {
        List listFilterNotNull = CollectionsKt.filterNotNull(list);
        if (listFilterNotNull.size() != 3) {
            return new InvalidTipConfig(InvalidTipConfig.Reason.THREE_TIP_OPTIONS_EXPECTED);
        }
        Iterator it = listFilterNotNull.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (iIntValue > 100 || iIntValue < 1) {
                return new InvalidTipConfig(InvalidTipConfig.Reason.TIP_OUT_OF_BOUNDS);
            }
        }
        return new PercentageTips(currencyCode, amount.getValue(), listFilterNotNull, z);
    }
}
