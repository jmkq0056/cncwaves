package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.paymentcollection.OnlineAuthStateListener;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.ReadReusableCardParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.transaction.CollectiblePayment;
import com.sun.jna.Callback;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: ResourceRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JX\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2>\u0010\f\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0015\u0012\u0013\u0018\u00010\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\rj\u0002`\u0015H&J\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u0018H&J\b\u0010\"\u001a\u00020\u0014H&J\u0018\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020$2\u0006\u0010%\u001a\u00020&H&J\u001c\u0010'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003H&Jw\u0010)\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u00182\u000e\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0,2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00170/2\f\u00101\u001a\b\u0012\u0004\u0012\u0002020,2\b\b\u0002\u00103\u001a\u00020(2\u0006\u00104\u001a\u0002052\n\b\u0002\u00106\u001a\u0004\u0018\u0001072\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u00109J<\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00170/2\u0006\u00104\u001a\u000205H&JT\u0010?\u001a\u00020$2\u0006\u0010!\u001a\u00020$2\b\u0010>\u001a\u0004\u0018\u00010-2\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\u00170/2\f\u00101\u001a\b\u0012\u0004\u0012\u0002020,2\b\b\u0002\u00103\u001a\u00020(2\u0006\u00104\u001a\u000205H&J\u0018\u0010@\u001a\u00020\u00182\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH&J\u0010\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u000202H&J\u0018\u0010H\u001a\u00020$2\u0006\u0010I\u001a\u00020J2\u0006\u0010C\u001a\u00020DH&J\"\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020M0L2\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00030OH&J\u0018\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010G\u001a\u000202H&J$\u0010T\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u00182\b\u0010>\u001a\u0004\u0018\u00010-2\b\b\u0002\u0010U\u001a\u00020(H&R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006VÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;", "", "defaultRefundReason", "", "getDefaultRefundReason", "()Ljava/lang/String;", "activateReader", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "awaitActionRequiredPaymentIntentCompletion", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentId", "accountId", "cancelConfirmPaymentIntent", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/Callback;", "cancelConfirmRefund", "cancelConfirmSetupIntent", "cancelPaymentIntent", "intent", "cancelPaymentIntentActionRequired", "cancelSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "completePaymentIntentActionRequired", "", "confirmPaymentIntent", "paymentIntent", "getCollectiblePayment", "Lkotlin/Function0;", "Lcom/stripe/transaction/CollectiblePayment;", "handleAuthResponse", "Lkotlin/Function1;", "Lcom/stripe/hardware/emv/TransactionResult;", "collectScaPaymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "immediateRecollectForSca", "authStateListener", "Lcom/stripe/paymentcollection/OnlineAuthStateListener;", "amountSurcharge", "", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "confirmRefund", "Lcom/stripe/stripeterminal/external/models/Refund;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "collectiblePayment", "confirmSetupIntent", "createPaymentIntent", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createConfiguration", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createReaderCollectedData", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "paymentMethodData", "createSetupIntent", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "getReaderLocations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "", "readReusableCard", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "readReusableCardParams", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "updatePaymentIntent", "requestDynamicCurrencyConversion", "resourcerepository_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ResourceRepository {
    ActivateReaderResponse activateReader(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) throws TerminalException;

    Deferred<PaymentIntent> awaitActionRequiredPaymentIntentCompletion(String paymentIntentId, String accountId);

    void cancelConfirmPaymentIntent(com.stripe.stripeterminal.external.callable.Callback callback);

    void cancelConfirmRefund(com.stripe.stripeterminal.external.callable.Callback callback);

    void cancelConfirmSetupIntent(com.stripe.stripeterminal.external.callable.Callback callback);

    PaymentIntent cancelPaymentIntent(PaymentIntent intent) throws TerminalException;

    void cancelPaymentIntentActionRequired();

    SetupIntent cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) throws TerminalException;

    boolean completePaymentIntentActionRequired(String paymentIntentId, String accountId);

    PaymentIntent confirmPaymentIntent(PaymentIntent paymentIntent, Function0<CollectiblePayment> getCollectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener, Long amountSurcharge, String returnUrl) throws TerminalException;

    Refund confirmRefund(RefundParameters refundParams, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, OnlineAuthStateListener authStateListener);

    SetupIntent confirmSetupIntent(SetupIntent intent, CollectiblePayment collectiblePayment, Function1<? super String, ? extends Deferred<TransactionResult>> handleAuthResponse, Function0<PaymentMethodData> collectScaPaymentMethodData, boolean immediateRecollectForSca, OnlineAuthStateListener authStateListener);

    PaymentIntent createPaymentIntent(PaymentIntentParameters paymentIntentParameters, CreateConfiguration createConfiguration) throws TerminalException;

    CollectedData createReaderCollectedData(PaymentMethodData paymentMethodData) throws TerminalException;

    SetupIntent createSetupIntent(SetupIntentParameters setupIntentParameters, CreateConfiguration createConfiguration);

    Map<String, Location> getReaderLocations(List<String> deviceSerials) throws TerminalException;

    PaymentMethod readReusableCard(ReadReusableCardParameters readReusableCardParams, PaymentMethodData paymentMethodData);

    PaymentIntent updatePaymentIntent(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion);

    default String getDefaultRefundReason() {
        return "requested_by_customer";
    }

    static /* synthetic */ PaymentIntent updatePaymentIntent$default(ResourceRepository resourceRepository, PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePaymentIntent");
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return resourceRepository.updatePaymentIntent(paymentIntent, collectiblePayment, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ PaymentIntent confirmPaymentIntent$default(ResourceRepository resourceRepository, PaymentIntent paymentIntent, Function0 function0, Function1 function1, Function0 function02, boolean z, OnlineAuthStateListener onlineAuthStateListener, Long l, String str, int i, Object obj) throws TerminalException {
        String str2;
        ResourceRepository resourceRepository2;
        PaymentIntent paymentIntent2;
        Function0 function03;
        Function1 function12;
        Function0 function04;
        OnlineAuthStateListener onlineAuthStateListener2;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: confirmPaymentIntent");
        }
        boolean z2 = (i & 16) != 0 ? true : z;
        Long l2 = (i & 64) != 0 ? null : l;
        if ((i & 128) != 0) {
            str2 = null;
            paymentIntent2 = paymentIntent;
            function03 = function0;
            function12 = function1;
            function04 = function02;
            onlineAuthStateListener2 = onlineAuthStateListener;
            resourceRepository2 = resourceRepository;
        } else {
            str2 = str;
            resourceRepository2 = resourceRepository;
            paymentIntent2 = paymentIntent;
            function03 = function0;
            function12 = function1;
            function04 = function02;
            onlineAuthStateListener2 = onlineAuthStateListener;
        }
        return resourceRepository2.confirmPaymentIntent(paymentIntent2, function03, function12, function04, z2, onlineAuthStateListener2, l2, str2);
    }

    static /* synthetic */ SetupIntent confirmSetupIntent$default(ResourceRepository resourceRepository, SetupIntent setupIntent, CollectiblePayment collectiblePayment, Function1 function1, Function0 function0, boolean z, OnlineAuthStateListener onlineAuthStateListener, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: confirmSetupIntent");
        }
        if ((i & 16) != 0) {
            z = true;
        }
        return resourceRepository.confirmSetupIntent(setupIntent, collectiblePayment, function1, function0, z, onlineAuthStateListener);
    }

    static /* synthetic */ Deferred awaitActionRequiredPaymentIntentCompletion$default(ResourceRepository resourceRepository, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitActionRequiredPaymentIntentCompletion");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return resourceRepository.awaitActionRequiredPaymentIntentCompletion(str, str2);
    }

    static /* synthetic */ boolean completePaymentIntentActionRequired$default(ResourceRepository resourceRepository, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: completePaymentIntentActionRequired");
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return resourceRepository.completePaymentIntentActionRequired(str, str2);
    }
}
