package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.callable.ReaderCallback;
import com.stripe.stripeterminal.external.callable.SetupIntentCallback;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.CollectConfiguration;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentConfiguration;
import com.stripe.stripeterminal.internal.common.activation.ActivateReaderCallback;
import com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineData;
import com.sun.jna.Callback;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: TerminalInternalApi.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J*\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J2\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0006\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u0018H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH&J \u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH&J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00160 H&J\u0010\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\"H&J\u001c\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\"2\u0006\u0010&\u001a\u00020\u001bH&J\u000e\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050$H&J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010)\u001a\u00020\u0016H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001bH&J\u001a\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u001b2\b\u0010-\u001a\u0004\u0018\u00010.H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00060À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;", "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;", "activateReader", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;", "activateReaderCallback", "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;", "collectPaymentMethodWithExplicitAllowRedisplay", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;", "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "collectSetupIntentPaymentMethod", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "customerConsentCollected", "", "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;", "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;", "completePaymentIntentActionRequired", "paymentIntentId", "", "connectEmbeddedReader", "connectionCallback", "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;", "getHasSessionTokenFlow", "Lkotlinx/coroutines/flow/StateFlow;", "getOfflineActiveAccount", "Lkotlinx/coroutines/flow/Flow;", "getOfflineData", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;", "accountId", "getOfflineReaders", "handleNextActions", "hasSessionToken", "restoreSoftDeletedPayments", "saveOfflineConfigForInternetReader", "locationId", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "setActiveAccount", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TerminalInternalApi extends TerminalApi {
    void activateReader(Reader reader, ConnectionConfiguration.EmbeddedConnectionConfiguration config, ActivateReaderCallback activateReaderCallback);

    com.stripe.stripeterminal.external.callable.Cancelable collectPaymentMethodWithExplicitAllowRedisplay(PaymentIntent intent, PaymentIntentCallback callback, CollectConfiguration config, AllowRedisplay allowRedisplay);

    com.stripe.stripeterminal.external.callable.Cancelable collectSetupIntentPaymentMethod(SetupIntent intent, boolean customerConsentCollected, AllowRedisplay allowRedisplay, SetupIntentConfiguration config, SetupIntentCallback callback);

    void completePaymentIntentActionRequired(String paymentIntentId);

    void connectEmbeddedReader(Reader reader, ConnectionConfiguration.EmbeddedConnectionConfiguration config, ReaderCallback connectionCallback);

    StateFlow<Boolean> getHasSessionTokenFlow();

    Flow<String> getOfflineActiveAccount();

    Flow<List<OfflineData>> getOfflineData(String accountId);

    List<Reader> getOfflineReaders();

    com.stripe.stripeterminal.external.callable.Cancelable handleNextActions(PaymentIntent intent, PaymentIntentCallback callback);

    boolean hasSessionToken();

    void restoreSoftDeletedPayments(String accountId);

    void saveOfflineConfigForInternetReader(String locationId, OfflineConfigPb offlineConfig);

    void setActiveAccount(String accountId);
}
