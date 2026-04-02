package com.stripe.jvmcore.terminal.requestfactories;

import com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory;
import kotlin.Metadata;

/* JADX INFO: compiled from: JackRabbitApiRequestFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface JackRabbitApiRequestFactory extends ActivateJackRabbitApiFactory, DiscoverJackRabbitApiFactory, PaymentIntentJackRabbitApiFactory, ReaderDisplayJackRabbitApiFactory, AccessibilityJackRabbitApiFactory, RefundJackRabbitApiFactory, SetupIntentJackRabbitApiFactory {
}
