package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.api.ApiPaymentIntentUpdater;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: CommonModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002JP\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0004H\u0007¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;", "", "()V", "provideApiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "setupIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "paymentIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "refundRestApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "providePaymentIntentUpdater", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "apiRequestFactory", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class CommonModule {
    @Provides
    @Reusable
    public final ApiRequestFactory provideApiRequestFactory(PosInfoFactory posInfoFactory, LocationHandler locationHandler, TerminalStatusManager statusManager, SettingsRepository settingsRepository, TransactionRepository transactionRepository, SetupIntentRestApiFactory setupIntentRestApiFactory, PaymentIntentRestApiFactory paymentIntentRestApiFactory, RefundRestApiRequestFactory refundRestApiRequestFactory, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(setupIntentRestApiFactory, "setupIntentRestApiFactory");
        Intrinsics.checkNotNullParameter(paymentIntentRestApiFactory, "paymentIntentRestApiFactory");
        Intrinsics.checkNotNullParameter(refundRestApiRequestFactory, "refundRestApiRequestFactory");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ApiRequestFactory(posInfoFactory, locationHandler, statusManager, settingsRepository, transactionRepository, setupIntentRestApiFactory, paymentIntentRestApiFactory, refundRestApiRequestFactory, loggerFactory.create(Reflection.getOrCreateKotlinClass(ApiRequestFactory.class)));
    }

    @Provides
    @Reusable
    public final PaymentIntentUpdater providePaymentIntentUpdater(ApiClient apiClient, TerminalStatusManager statusManager, TransactionRepository transactionRepository, ApiRequestFactory apiRequestFactory) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        return new ApiPaymentIntentUpdater(apiClient, statusManager, transactionRepository, apiRequestFactory);
    }
}
