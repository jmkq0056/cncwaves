package com.stripe.stripeterminal.internal.common.validators;

import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CollectPaymentMethodOperationValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\b\u0007¢\u0006\u0002\u0010\u0002JI\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0002\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;", "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;", "()V", "validateParams", "", "skipTipping", "", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "", "enableCustomerCancellation", "requestDynamicCurrencyConversion", "surchargeNotice", "", "(ZZZLjava/lang/Long;ZZLjava/lang/String;)V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultCollectPaymentMethodOperationValidator implements CollectPaymentMethodOperationValidator {
    private static final int MAX_SURCHARGE_NOTICE = 94;

    @Inject
    public DefaultCollectPaymentMethodOperationValidator() {
    }

    @Override // com.stripe.stripeterminal.internal.common.validators.CollectPaymentMethodOperationValidator
    public void validateParams(boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, Long tipEligibleAmount, boolean enableCustomerCancellation, boolean requestDynamicCurrencyConversion, String surchargeNotice) throws TerminalException {
        if (requestDynamicCurrencyConversion && !updatePaymentIntent) {
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "UpdatePaymentIntent must be true in order to request dynamic currency conversion.", null, null, 12, null);
        }
        String str = surchargeNotice;
        if (str == null || StringsKt.isBlank(str)) {
            return;
        }
        if (!updatePaymentIntent) {
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "UpdatePaymentIntent must be true in order to display a surchargeNotice.", null, null, 12, null);
        }
        if (requestDynamicCurrencyConversion) {
            throw new TerminalException(TerminalErrorCode.UNSUPPORTED_OPERATION, "Surcharging is not supported on payment intents requesting dynamic currency conversion.", null, null, 12, null);
        }
        if (surchargeNotice.length() <= MAX_SURCHARGE_NOTICE) {
            return;
        }
        throw new TerminalException(TerminalErrorCode.INVALID_SURCHARGE_PARAMETER, "surchargeNotice exceeds the maximum length of 94 characters", null, null, 12, null);
    }
}
