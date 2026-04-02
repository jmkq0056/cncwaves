package com.stripe.stripeterminal.dagger;

import com.stripe.core.locale.LocaleManager;
import com.stripe.currency.Amount;
import com.stripe.paymentcollection.PaymentCollectionLocaleManager;
import com.stripe.paymentcollection.SettingsRepository;
import com.stripe.paymentcollection.TransactionRepository;
import com.stripe.proto.model.config.MagstripeConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.restclient.IntegrationType;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.transaction.PaymentCollectionDeviceCapability;
import com.stripe.transaction.Settings;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionExternalModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;", "", "()V", "providesPaymentCollectionLocaleManager", "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;", "localeManager", "Lcom/stripe/core/locale/LocaleManager;", "providesPaymentCollectionSettingsRepository", "Lcom/stripe/paymentcollection/SettingsRepository;", "coreSettingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "providesPaymentCollectionTransactionRepository", "Lcom/stripe/paymentcollection/TransactionRepository;", "coreTransactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class PaymentCollectionExternalModule {
    @Provides
    @Reusable
    public final PaymentCollectionLocaleManager providesPaymentCollectionLocaleManager(final LocaleManager localeManager) {
        Intrinsics.checkNotNullParameter(localeManager, "localeManager");
        return new PaymentCollectionLocaleManager() { // from class: com.stripe.stripeterminal.dagger.PaymentCollectionExternalModule.providesPaymentCollectionLocaleManager.1
            @Override // com.stripe.paymentcollection.PaymentCollectionLocaleManager
            public String getFirstSupportedISO6391Code(List<String> isoCodes) {
                Intrinsics.checkNotNullParameter(isoCodes, "isoCodes");
                return localeManager.getFirstSupportedISO6391Code(isoCodes);
            }
        };
    }

    @Provides
    @Reusable
    public final SettingsRepository providesPaymentCollectionSettingsRepository(final com.stripe.core.transaction.SettingsRepository coreSettingsRepository) {
        Intrinsics.checkNotNullParameter(coreSettingsRepository, "coreSettingsRepository");
        return new SettingsRepository() { // from class: com.stripe.stripeterminal.dagger.PaymentCollectionExternalModule.providesPaymentCollectionSettingsRepository.1
            @Override // com.stripe.paymentcollection.SettingsRepository
            public MagstripeConfig getMagstripeConfig() {
                return coreSettingsRepository.getMagstripeConfig();
            }

            @Override // com.stripe.paymentcollection.SettingsRepository
            public Settings getSettings() {
                return coreSettingsRepository.getSettings();
            }

            @Override // com.stripe.paymentcollection.SettingsRepository
            public TippingConfigPb getTippingConfig() {
                return coreSettingsRepository.getTippingConfig();
            }
        };
    }

    @Provides
    @Reusable
    public final TransactionRepository providesPaymentCollectionTransactionRepository(final com.stripe.core.transaction.TransactionRepository coreTransactionRepository) {
        Intrinsics.checkNotNullParameter(coreTransactionRepository, "coreTransactionRepository");
        return new TransactionRepository() { // from class: com.stripe.stripeterminal.dagger.PaymentCollectionExternalModule.providesPaymentCollectionTransactionRepository.1
            @Override // com.stripe.paymentcollection.TransactionRepository
            public Amount getAmountTip() {
                return coreTransactionRepository.getAmountTip();
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public List<String> getDomesticDebitAids() {
                return coreTransactionRepository.getDomesticDebitAids();
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public IntegrationType getIntegrationType() {
                return coreTransactionRepository.getIntegrationType();
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public String getPaymentIntentId() {
                return coreTransactionRepository.getPaymentIntentId();
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public PaymentMethodType getNonCardPaymentMethodType() {
                return coreTransactionRepository.getNonCardPaymentMethodType();
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public void setNonCardPaymentMethodType(PaymentMethodType paymentMethodType) {
                coreTransactionRepository.setNonCardPaymentMethodType(paymentMethodType);
            }

            @Override // com.stripe.paymentcollection.TransactionRepository
            public PaymentCollectionDeviceCapability getDevicePaymentCapability() {
                return coreTransactionRepository.getDevicePaymentCapability();
            }
        };
    }
}
