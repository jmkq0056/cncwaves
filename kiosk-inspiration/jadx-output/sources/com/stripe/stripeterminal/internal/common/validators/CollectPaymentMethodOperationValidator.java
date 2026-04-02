package com.stripe.stripeterminal.internal.common.validators;

import kotlin.Metadata;

/* JADX INFO: compiled from: CollectPaymentMethodOperationValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JI\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\rH&¢\u0006\u0002\u0010\u000eø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;", "", "validateParams", "", "skipTipping", "", "manualEntry", "updatePaymentIntent", "tipEligibleAmount", "", "enableCustomerCancellation", "requestDynamicCurrencyConversion", "surchargeNotice", "", "(ZZZLjava/lang/Long;ZZLjava/lang/String;)V", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CollectPaymentMethodOperationValidator {
    void validateParams(boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, Long tipEligibleAmount, boolean enableCustomerCancellation, boolean requestDynamicCurrencyConversion, String surchargeNotice);
}
