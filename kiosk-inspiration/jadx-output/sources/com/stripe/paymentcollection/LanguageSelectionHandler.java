package com.stripe.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionStateHandlers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f2\u0006\u0010\r\u001a\u00020\nH\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\nH\u0002J\u001c\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/paymentcollection/LanguageSelectionHandler;", "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;", "timer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "logger", "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;", "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V", "applicationRequiresLanguageSelection", "", "application", "", "candidateLanguagesForApplication", "", "applicationTlv", "generateAutoSelectLanguageEvent", "", "candidates", "generateLanguageSelectionEvent", "language", "onEnter", "current", "Lcom/stripe/paymentcollection/PaymentCollectionData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "onPaymentCollectionDataUpdate", "new", "old", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LanguageSelectionHandler extends PaymentCollectionStateHandler {
    private final PaymentCollectionLogger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageSelectionHandler(PaymentCollectionStateTimer timer, PaymentCollectionLogger logger) {
        super(PaymentCollectionState.LANGUAGE_SELECTION, timer, logger);
        Intrinsics.checkNotNullParameter(timer, "timer");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler, com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(PaymentCollectionData current, PaymentCollectionState from) {
        super.onEnter(current, from);
        if (current != null) {
            Integer selectedApplicationIndex = current.getSelectedApplicationIndex();
            if (selectedApplicationIndex != null) {
                String str = (String) CollectionsKt.getOrNull(current.getApplicationList(), selectedApplicationIndex.intValue());
                if (str != null) {
                    if (!applicationRequiresLanguageSelection(str)) {
                        transitionTo(PaymentCollectionState.PROCESSING, "Language selection not required.");
                        return;
                    } else {
                        generateAutoSelectLanguageEvent(candidateLanguagesForApplication(str));
                        onPaymentCollectionDataUpdate(current, current);
                        return;
                    }
                }
            }
            this.logger.e("Attempt to select language without prior application selection.");
        }
    }

    @Override // com.stripe.paymentcollection.PaymentCollectionStateHandler
    public void onPaymentCollectionDataUpdate(PaymentCollectionData paymentCollectionData, PaymentCollectionData old) {
        Intrinsics.checkNotNullParameter(paymentCollectionData, "new");
        super.onPaymentCollectionDataUpdate(paymentCollectionData, old);
        String selectedLanguage = paymentCollectionData.getSelectedLanguage();
        if (selectedLanguage != null) {
            generateLanguageSelectionEvent(selectedLanguage);
            transitionTo(PaymentCollectionState.PROCESSING, "Language selected.");
        } else {
            checkForPrematureTransactionCompletionAndTransitionIfNeeded(paymentCollectionData);
        }
    }

    private final void generateAutoSelectLanguageEvent(List<String> candidates) {
        yieldEvent(new AutoSelectLanguageEvent(candidates));
    }

    private final void generateLanguageSelectionEvent(String language) {
        yieldEvent(new SelectLanguageEvent(language));
    }

    private final List<String> candidateLanguagesForApplication(String applicationTlv) {
        TlvMap tlvMap = TlvMap.INSTANCE.toTlvMap(applicationTlv);
        if (tlvMap != null) {
            List<String> languagePreferences = tlvMap.getLanguagePreferences();
            if (languagePreferences == null) {
                languagePreferences = CollectionsKt.emptyList();
            }
            if (languagePreferences != null) {
                return languagePreferences;
            }
        }
        return CollectionsKt.emptyList();
    }

    private final boolean applicationRequiresLanguageSelection(String application) {
        return !candidateLanguagesForApplication(application).isEmpty();
    }
}
