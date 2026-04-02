package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.terminal.requestfactories.payment.DefaultPaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.DefaultRefundRestApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.DefaultSetupIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;

/* JADX INFO: compiled from: TerminalRestRequestFactoryModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\n"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule;", "", "()V", "provideDefaultRestPaymentApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;", "provideDefaultRestRefundApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;", "provideDefaultRestSetupIntentRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;", "Bindings", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class TerminalRestRequestFactoryModule {
    public static final TerminalRestRequestFactoryModule INSTANCE = new TerminalRestRequestFactoryModule();

    /* JADX INFO: compiled from: TerminalRestRequestFactoryModule.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule$Bindings;", "", "bindPaymentApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "defaultPaymentIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentIntentRestApiFactory;", "bindRefundRestApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;", "defaultRefundApiRestRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;", "bindSetupIntentApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "defaultSetupIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentRestApiFactory;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        PaymentIntentRestApiFactory bindPaymentApiRequestFactory(DefaultPaymentIntentRestApiFactory defaultPaymentIntentRestApiFactory);

        @Binds
        RefundRestApiRequestFactory bindRefundRestApiRequestFactory(DefaultRefundRestApiRequestFactory defaultRefundApiRestRequestFactory);

        @Binds
        SetupIntentRestApiFactory bindSetupIntentApiRequestFactory(DefaultSetupIntentRestApiFactory defaultSetupIntentRestApiFactory);
    }

    private TerminalRestRequestFactoryModule() {
    }

    @Provides
    public final DefaultPaymentIntentRestApiFactory provideDefaultRestPaymentApiRequestFactory() {
        return new DefaultPaymentIntentRestApiFactory();
    }

    @Provides
    public final DefaultSetupIntentRestApiFactory provideDefaultRestSetupIntentRequestFactory() {
        return new DefaultSetupIntentRestApiFactory();
    }

    @Provides
    public final DefaultRefundRestApiRequestFactory provideDefaultRestRefundApiRequestFactory() {
        return new DefaultRefundRestApiRequestFactory();
    }
}
