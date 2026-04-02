package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.currency.Amount;
import com.stripe.currency.AmountExtensionsKt;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.SimulatorConfiguration;
import com.stripe.stripeterminal.internal.common.extensions.DeviceTypeExtensions;
import com.stripe.transaction.PaymentMethodCollectionType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseSimulatedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\t"}, d2 = {"getAmountTip", "Lcom/stripe/currency/Amount;", "existingAmountTip", "collectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "simulatorConfig", "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;", "connectedReader", "Lcom/stripe/stripeterminal/external/models/Reader;", "adapter_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BaseSimulatedAdapterKt {
    public static final Amount getAmountTip(Amount amount, PaymentMethodCollectionType paymentMethodCollectionType, SimulatorConfiguration simulatorConfig, Reader reader) {
        DeviceType deviceType;
        Intrinsics.checkNotNullParameter(simulatorConfig, "simulatorConfig");
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Sale) {
            Long simulatedTipAmount = simulatorConfig.getSimulatedTipAmount();
            if (simulatedTipAmount != null) {
                long jLongValue = simulatedTipAmount.longValue();
                PaymentMethodCollectionType.Sale sale = (PaymentMethodCollectionType.Sale) paymentMethodCollectionType;
                if (!sale.getSkipTipping() && reader != null && (deviceType = reader.getDeviceType()) != null && DeviceTypeExtensions.INSTANCE.supportsOnReaderTipping(deviceType)) {
                    return new Amount(jLongValue, AmountExtensionsKt.getCurrencyCode(sale.getAmount()));
                }
            }
            return null;
        }
        if (paymentMethodCollectionType instanceof PaymentMethodCollectionType.StrongCustomerAuthentication) {
            return amount;
        }
        if ((paymentMethodCollectionType instanceof PaymentMethodCollectionType.Refund) || (paymentMethodCollectionType instanceof PaymentMethodCollectionType.SetupIntent) || (paymentMethodCollectionType instanceof PaymentMethodCollectionType.Passthrough) || paymentMethodCollectionType == null) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
