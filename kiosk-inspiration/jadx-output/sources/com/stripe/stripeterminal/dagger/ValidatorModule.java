package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.validators.CollectPaymentMethodOperationValidator;
import com.stripe.stripeterminal.internal.common.validators.DefaultCollectPaymentMethodOperationValidator;
import com.stripe.stripeterminal.internal.common.validators.DefaultTipEligibleValidator;
import com.stripe.stripeterminal.internal.common.validators.TipEligibleValidator;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: ValidatorModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/dagger/ValidatorModule;", "", "bindsCollectPaymentMethodOperationValidator", "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;", "defaultCollectPaymentMethodOperationValidator", "Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;", "bindsTipEligibleValidator", "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;", "defaultTipEligibleValidator", "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public interface ValidatorModule {
    @Binds
    CollectPaymentMethodOperationValidator bindsCollectPaymentMethodOperationValidator(DefaultCollectPaymentMethodOperationValidator defaultCollectPaymentMethodOperationValidator);

    @Binds
    TipEligibleValidator bindsTipEligibleValidator(DefaultTipEligibleValidator defaultTipEligibleValidator);
}
