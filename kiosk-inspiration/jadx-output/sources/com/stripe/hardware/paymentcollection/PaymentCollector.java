package com.stripe.hardware.paymentcollection;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.CancellationPhase;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.jvmcore.dagger.BluetoothUsbPinPadReaders;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH'J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\rH&J\b\u0010\u0019\u001a\u00020\u0003H&J\b\u0010\u001a\u001a\u00020\u0003H&J\u0016\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH¦@¢\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00032\b\b\u0002\u0010 \u001a\u00020!H¦@¢\u0006\u0002\u0010\"ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006#À\u0006\u0001"}, d2 = {"Lcom/stripe/hardware/paymentcollection/PaymentCollector;", "", "cancelCollectTipAmount", "", "checkCardUntilRemoved", "readerType", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "collectTipAmount", "tipConfigValidationResult", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "handleAuthorisationResponseData", "tlvBlob", "", "handleFinalConfirmationRequest", "confirm", "", "selectAccountType", "accountType", "Lcom/stripe/hardware/emv/AccountType;", "selectApplication", FirebaseAnalytics.Param.INDEX, "", "selectLanguage", "language", "setPinEntryButtons", "startPinEntry", "startReader", "configuration", "Lcom/stripe/hardware/ReaderConfiguration;", "(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopReader", TypedValues.CycleType.S_WAVE_PHASE, "Lcom/stripe/hardware/emv/CancellationPhase;", "(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentCollector {
    @BluetoothUsbPinPadReaders
    void cancelCollectTipAmount();

    default void checkCardUntilRemoved(Set<? extends ReaderConfiguration.ReaderType> readerType) {
        Intrinsics.checkNotNullParameter(readerType, "readerType");
    }

    @BluetoothUsbPinPadReaders
    void collectTipAmount(TipConfigValidationResult tipConfigValidationResult);

    void handleAuthorisationResponseData(String tlvBlob);

    void handleFinalConfirmationRequest(boolean confirm);

    void selectAccountType(AccountType accountType);

    void selectApplication(int index);

    void selectLanguage(String language);

    void setPinEntryButtons();

    void startPinEntry();

    Object startReader(ReaderConfiguration readerConfiguration, Continuation<? super Unit> continuation);

    Object stopReader(CancellationPhase cancellationPhase, Continuation<? super Unit> continuation);

    static /* synthetic */ Object stopReader$default(PaymentCollector paymentCollector, CancellationPhase cancellationPhase, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stopReader");
        }
        if ((i & 1) != 0) {
            cancellationPhase = CancellationPhase.COLLECTION;
        }
        return paymentCollector.stopReader(cancellationPhase, continuation);
    }
}
