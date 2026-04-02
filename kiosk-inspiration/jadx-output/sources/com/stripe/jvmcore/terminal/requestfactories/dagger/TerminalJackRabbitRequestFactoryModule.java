package com.stripe.jvmcore.terminal.requestfactories.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.requestfactories.DefaultJackRabbitApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.accessibility.DefaultAccessibilityJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.DefaultActivateApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.discover.DefaultDiscoveryJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.display.DefaultReaderDisplayJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.DefaultPaymentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.DefaultRefundJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.DefaultSetupIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: TerminalJackRabbitRequestFactoryModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001)B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\fH\u0007J@\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\b\u0010!\u001a\u00020\"H\u0007J\b\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(H\u0007¨\u0006*"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule;", "", "()V", "provideDefaultAccessibilityJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;", "provideDefaultActivateJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideDefaultDiscoveryJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;", "provideDefaultJackRabbitApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;", "activateApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;", "discoveryApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "readerDisplayApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "accessibilityJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "paymentIntentApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "setupIntentApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "refundApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "provideDefaultPaymentIntentJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;", "paymentIntentRestApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "provideDefaultReaderDisplayJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;", "provideDefaultRefundJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;", "provideDefaultSetupIntentJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;", "setupIntentRestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "Bindings", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class TerminalJackRabbitRequestFactoryModule {
    public static final TerminalJackRabbitRequestFactoryModule INSTANCE = new TerminalJackRabbitRequestFactoryModule();

    /* JADX INFO: compiled from: TerminalJackRabbitRequestFactoryModule.kt */
    @Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H'J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H'J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H'J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH'J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\"À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule$Bindings;", "", "bindAccessibilityJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "defaultAccessibilityJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;", "bindActivateApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;", "defaultActivateApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;", "bindDiscoveryApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "defaultDiscoveryJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;", "bindJackRabbitApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "defaultJackRabbitApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;", "bindPaymentApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "defaultPaymentJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;", "bindReaderDisplayApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "defaultReaderDisplayJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;", "bindRefundApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "defaultRefundJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;", "bindSetupIntentApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "defaultSetupIntentJackRabbitApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        AccessibilityJackRabbitApiFactory bindAccessibilityJackRabbitApiFactory(DefaultAccessibilityJackRabbitApiFactory defaultAccessibilityJackRabbitApiFactory);

        @Binds
        ActivateJackRabbitApiFactory bindActivateApiRequestFactory(DefaultActivateApiFactory defaultActivateApiFactory);

        @Binds
        DiscoverJackRabbitApiFactory bindDiscoveryApiRequestFactory(DefaultDiscoveryJackRabbitApiFactory defaultDiscoveryJackRabbitApiFactory);

        @Binds
        JackRabbitApiRequestFactory bindJackRabbitApiRequestFactory(DefaultJackRabbitApiRequestFactory defaultJackRabbitApiRequestFactory);

        @Binds
        PaymentIntentJackRabbitApiFactory bindPaymentApiRequestFactory(DefaultPaymentJackRabbitApiFactory defaultPaymentJackRabbitApiFactory);

        @Binds
        ReaderDisplayJackRabbitApiFactory bindReaderDisplayApiRequestFactory(DefaultReaderDisplayJackRabbitApiFactory defaultReaderDisplayJackRabbitApiFactory);

        @Binds
        RefundJackRabbitApiFactory bindRefundApiRequestFactory(DefaultRefundJackRabbitApiFactory defaultRefundJackRabbitApiFactory);

        @Binds
        SetupIntentJackRabbitApiFactory bindSetupIntentApiRequestFactory(DefaultSetupIntentJackRabbitApiFactory defaultSetupIntentJackRabbitApiFactory);
    }

    private TerminalJackRabbitRequestFactoryModule() {
    }

    @Provides
    public final DefaultDiscoveryJackRabbitApiFactory provideDefaultDiscoveryJackRabbitApiFactory() {
        return new DefaultDiscoveryJackRabbitApiFactory();
    }

    @Provides
    public final DefaultActivateApiFactory provideDefaultActivateJackRabbitApiFactory(ApplicationInformationProvider applicationInformationProvider, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultActivateApiFactory(applicationInformationProvider, loggerFactory.create(Reflection.getOrCreateKotlinClass(JackRabbitApiRequestFactory.class)));
    }

    @Provides
    public final DefaultReaderDisplayJackRabbitApiFactory provideDefaultReaderDisplayJackRabbitApiFactory() {
        return new DefaultReaderDisplayJackRabbitApiFactory();
    }

    @Provides
    @Reusable
    public final DefaultAccessibilityJackRabbitApiFactory provideDefaultAccessibilityJackRabbitApiFactory() {
        return new DefaultAccessibilityJackRabbitApiFactory();
    }

    @Provides
    public final DefaultRefundJackRabbitApiFactory provideDefaultRefundJackRabbitApiFactory() {
        return new DefaultRefundJackRabbitApiFactory();
    }

    @Provides
    public final DefaultPaymentJackRabbitApiFactory provideDefaultPaymentIntentJackRabbitApiFactory(PaymentIntentRestApiFactory paymentIntentRestApiFactory) {
        Intrinsics.checkNotNullParameter(paymentIntentRestApiFactory, "paymentIntentRestApiFactory");
        return new DefaultPaymentJackRabbitApiFactory(paymentIntentRestApiFactory);
    }

    @Provides
    public final DefaultSetupIntentJackRabbitApiFactory provideDefaultSetupIntentJackRabbitApiFactory(SetupIntentRestApiFactory setupIntentRestFactory) {
        Intrinsics.checkNotNullParameter(setupIntentRestFactory, "setupIntentRestFactory");
        return new DefaultSetupIntentJackRabbitApiFactory(setupIntentRestFactory);
    }

    @Provides
    @Reusable
    public final DefaultJackRabbitApiRequestFactory provideDefaultJackRabbitApiRequestFactory(ActivateJackRabbitApiFactory activateApiFactory, DiscoverJackRabbitApiFactory discoveryApiFactory, ReaderDisplayJackRabbitApiFactory readerDisplayApiFactory, AccessibilityJackRabbitApiFactory accessibilityJackRabbitApiFactory, PaymentIntentJackRabbitApiFactory paymentIntentApiFactory, SetupIntentJackRabbitApiFactory setupIntentApiFactory, RefundJackRabbitApiFactory refundApiFactory) {
        Intrinsics.checkNotNullParameter(activateApiFactory, "activateApiFactory");
        Intrinsics.checkNotNullParameter(discoveryApiFactory, "discoveryApiFactory");
        Intrinsics.checkNotNullParameter(readerDisplayApiFactory, "readerDisplayApiFactory");
        Intrinsics.checkNotNullParameter(accessibilityJackRabbitApiFactory, "accessibilityJackRabbitApiFactory");
        Intrinsics.checkNotNullParameter(paymentIntentApiFactory, "paymentIntentApiFactory");
        Intrinsics.checkNotNullParameter(setupIntentApiFactory, "setupIntentApiFactory");
        Intrinsics.checkNotNullParameter(refundApiFactory, "refundApiFactory");
        return new DefaultJackRabbitApiRequestFactory(activateApiFactory, discoveryApiFactory, readerDisplayApiFactory, accessibilityJackRabbitApiFactory, paymentIntentApiFactory, setupIntentApiFactory, refundApiFactory);
    }
}
