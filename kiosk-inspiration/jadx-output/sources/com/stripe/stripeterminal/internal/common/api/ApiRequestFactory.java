package com.stripe.stripeterminal.internal.common.api;

import android.location.Location;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.currency.Amount;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRefundRequest;
import com.stripe.proto.api.rest.AddEmvSecondGenerationDataRequest;
import com.stripe.proto.api.rest.CancelPaymentIntentRequest;
import com.stripe.proto.api.rest.CancelSetupIntentRequest;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateReaderCollectedDataRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.api.rest.DetachPaymentMethodRequest;
import com.stripe.proto.api.rest.DiscoverLocationsRequest;
import com.stripe.proto.api.rest.ListAllReadersRequest;
import com.stripe.proto.api.rest.ListLocationsRequest;
import com.stripe.proto.api.rest.PaymentMethodOptions;
import com.stripe.proto.api.rest.RefundChargeRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.proto.api.rest.RetrieveLocationRequest;
import com.stripe.proto.api.rest.RetrievePaymentIntentRequest;
import com.stripe.proto.api.rest.RetrieveSetupIntentRequest;
import com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions;
import com.stripe.proto.api.rest.UpdatePaymentIntentRequest;
import com.stripe.stripeterminal.external.models.AllowRedisplay;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.stripeterminal.internal.models.ReadMethod;
import com.stripe.transaction.payment.ManualEntryPayment;
import com.stripe.transaction.payment.NonCardPayment;
import com.sun.jna.platform.win32.WinError;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.ByteString;

/* JADX INFO: compiled from: ApiRequestFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¶\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 ¢\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002¢\u0001B]\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015¢\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ&\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 j\u0002`#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020%J\u0011\u0010(\u001a\u00020)2\u0006\u0010+\u001a\u00020,H\u0096\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010*\u001a\u00020/2\u0006\u00100\u001a\u000201J\u0019\u0010-\u001a\u00020.2\u0006\u0010+\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0096\u0001JU\u00102\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\b\u00106\u001a\u0004\u0018\u0001072\b\u00108\u001a\u0004\u0018\u0001092\b\u0010:\u001a\u0004\u0018\u00010\u001e2\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010=\u001a\u0004\u0018\u00010>¢\u0006\u0002\u0010?J&\u0010@\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0006\u0010A\u001a\u00020BJ\u0016\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020/2\u0006\u0010A\u001a\u00020BJI\u0010F\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\u0006\u0010G\u001a\u00020H2\b\u00108\u001a\u0004\u0018\u0001092\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010I\u001a\u0004\u0018\u00010,¢\u0006\u0002\u0010JJ]\u0010K\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\b\u0010L\u001a\u0004\u0018\u00010,2\n\b\u0002\u00108\u001a\u0004\u0018\u0001092\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010;\u001a\u0004\u0018\u00010<2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010>¢\u0006\u0002\u0010MJa\u0010N\u001a\u0012\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040 j\u0002`52\u0006\u0010*\u001a\u00020%2\b\u00106\u001a\u0004\u0018\u0001072\b\u0010O\u001a\u0004\u0018\u00010P2\b\u00108\u001a\u0004\u0018\u0001092\b\u0010;\u001a\u0004\u0018\u00010<2\b\u0010I\u001a\u0004\u0018\u00010,2\b\u0010Q\u001a\u0004\u0018\u00010RH\u0002¢\u0006\u0002\u0010SJ\u0018\u0010T\u001a\u00020D2\u0006\u0010E\u001a\u00020/2\b\u0010=\u001a\u0004\u0018\u00010>J\u0011\u0010U\u001a\u00020V2\u0006\u00100\u001a\u00020WH\u0096\u0001J \u0010X\u001a\u00020Y2\u0006\u00100\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\b\u0010L\u001a\u0004\u0018\u00010,J$\u0010]\u001a\u0002072\u0006\u0010[\u001a\u00020\\2\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010L\u001a\u0004\u0018\u00010,H\u0002J\u000e\u0010^\u001a\u00020_2\u0006\u00106\u001a\u00020\\J\u0011\u0010`\u001a\u00020a2\u0006\u00100\u001a\u00020bH\u0096\u0001J\u0010\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\u001eH\u0002J\u000e\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020iJ\u0014\u0010j\u001a\u00020k2\f\u0010l\u001a\b\u0012\u0004\u0012\u00020,0mJB\u0010n\u001a\u0012\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020p0 j\u0002`q2\b\u0010r\u001a\u0004\u0018\u00010,2\u0006\u0010s\u001a\u00020'2\u0006\u0010t\u001a\u00020\u001e2\u0006\u0010u\u001a\u00020\u001e2\b\u0010v\u001a\u0004\u0018\u00010,J\u001e\u0010w\u001a\u00020x2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010z2\n\b\u0002\u0010{\u001a\u0004\u0018\u00010,J\u000e\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u00020\u007fJ\u0011\u0010\u0080\u0001\u001a\u0002072\u0006\u0010A\u001a\u00020BH\u0002J}\u0010\u0081\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u0082\u0001\u0012\u0005\u0012\u00030\u0083\u00010 j\u0003`\u0084\u00012\t\u0010\u0085\u0001\u001a\u0004\u0018\u00010,2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010,2\u0007\u0010\u0087\u0001\u001a\u00020<2\u0006\u00106\u001a\u0002072\u0006\u0010u\u001a\u00020\u001e2\u0006\u0010t\u001a\u00020\u001e2\u0007\u0010\u0088\u0001\u001a\u00020,2\u0014\u0010\u0089\u0001\u001a\u000f\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020,0\u008a\u00012\b\u0010v\u001a\u0004\u0018\u00010,H\u0096\u0001J\u0010\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0006\u0010+\u001a\u00020,J\u0011\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0007\u0010\u008f\u0001\u001a\u00020,J.\u0010\u0090\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u0091\u00010 j\u0003`\u0092\u00012\u0007\u0010\u0086\u0001\u001a\u00020,2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010,J\u0011\u0010\u0094\u0001\u001a\u00030\u0095\u00012\u0007\u0010\u008f\u0001\u001a\u00020,J%\u0010\u0096\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\u0006\u0010A\u001a\u00020BJ/\u0010\u0099\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\u0006\u0010G\u001a\u00020H2\b\u00108\u001a\u0004\u0018\u000109JC\u0010\u009a\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0005\u0012\u00030\u0098\u00010 2\u0006\u0010*\u001a\u00020%2\b\u0010L\u001a\u0004\u0018\u00010,2\b\u00108\u001a\u0004\u0018\u0001092\u0006\u0010e\u001a\u00020\u001e2\b\u0010=\u001a\u0004\u0018\u00010>J\u001f\u0010\u009b\u0001\u001a\u00030\u009c\u0001*\u00030\u009d\u00012\b\u0010:\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0003\u0010\u009e\u0001J\u0017\u0010\u009f\u0001\u001a\u00030\u009c\u0001*\u00030\u009d\u00012\u0006\u0010G\u001a\u00020HH\u0002J\u000e\u0010 \u0001\u001a\u00030¡\u0001*\u00020\\H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006£\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "setUpIntentRestApiFactory", "paymentIntentRestApiFactory", "refundRestApiRequestFactory", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "activateReader", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfig", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "shouldActivateWithExpandedLocation", "", "addEmvSecondGenerationData", "Lcom/stripe/jvmcore/restclient/RestRequest;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest$Builder;", "Lcom/stripe/stripeterminal/internal/common/api/AddEmvSecondGenerationDataRestRequest;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "transactionResult", "Lcom/stripe/hardware/emv/TransactionResult;", "cancelPaymentIntent", "Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;", "intent", OfflineStorageConstantsKt.ID, "", "cancelSetupIntent", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "confirmCollectiblePayment", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$Builder;", "Lcom/stripe/stripeterminal/internal/common/api/ConfirmPaymentIntentRestRequest;", "paymentMethodData", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "amountTip", "Lcom/stripe/currency/Amount;", "dynamicCurrencyConversionSelected", "amountSurcharge", "", "allowRedisplay", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;", "confirmManualEntryPaymentIntent", "manualEntryPayment", "Lcom/stripe/transaction/payment/ManualEntryPayment;", "confirmManualEntrySetupIntent", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "setupIntent", "confirmNonCardPaymentMethodPaymentIntent", "payment", "Lcom/stripe/transaction/payment/NonCardPayment;", "returnUrl", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;", "confirmPaymentIntent", "readerId", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;", "confirmPaymentIntentRequest", "paymentMethodOptions", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "redirectPreferences", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;)Lcom/stripe/jvmcore/restclient/RestRequest;", "confirmSetupIntent", "createPaymentIntent", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createPaymentMethod", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "data", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "createPaymentMethodRequest", "createReaderCollectedData", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "createSetupIntent", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createUpdatePaymentIntentPaymentMethodOptionsRequest", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "requestDynamicCurrencyConversion", "detachPaymentMethod", "Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "discoverLocations", "Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;", "serialNumbers", "", "emvSecondGenerationDataRefundRequest", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;", "Lcom/stripe/stripeterminal/internal/common/api/AddEmvSecondGenerationRefundDataRestRequest;", "refundId", "result", "refundApplicationFee", "reverseTransfer", "stripeAccountId", "listAllReaders", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", FirebaseAnalytics.Param.LOCATION, "listLocations", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "manualEntryRequestedPaymentMethod", "refundChargeRequest", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;", "charge", "paymentIntentId", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "reason", "metadata", "", "retrieveLocation", "Lcom/stripe/proto/api/rest/RetrieveLocationRequest;", "retrievePaymentIntent", "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;", "clientSecret", "retrievePaymentIntentWithPaymentIntentId", "Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest$Builder;", "Lcom/stripe/stripeterminal/internal/common/api/RetrievePaymentIntentRestRequest;", "accountId", "retrieveSetupIntent", "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;", "updateManualEntryPaymentIntent", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Builder;", "updateNonCardPaymentMethodPaymentIntent", "updatePaymentIntent", "addCardPaymentMethodOptionsIfNeeded", "", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;", "(Lcom/stripe/proto/api/rest/PaymentMethodOptions$Builder;Ljava/lang/Boolean;)V", "addNonCardPaymentMethodOptionsIfNeeded", "readMethodFromTlv", "Lcom/stripe/stripeterminal/internal/models/ReadMethod;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiRequestFactory implements PaymentIntentRestApiFactory, SetupIntentRestApiFactory, RefundRestApiRequestFactory {
    private static final String CARD_TYPE = "card";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String EMV_TYPE = "emv";
    private static final String ENCRYPTED_EMV_TYPE = "encrypted_emv";
    private static final String ENCRYPTED_TRACK_DATA_TYPE = "encrypted_track_data";
    private static final String IF_AVAILABLE = "if_available";
    private static final String INVALID_CLIENT_SECRET = "Invalid client secret.";
    private static final String NEVER = "never";
    private static final String SECRET_DELIMITER = "_secret_";
    private static final String STRIPE_ACCOUNT_HEADER = "Stripe-Account";
    private static final String WEB = "web";
    private final LocationHandler locationHandler;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final PaymentIntentRestApiFactory paymentIntentRestApiFactory;
    private final PosInfoFactory posInfoFactory;
    private final RefundRestApiRequestFactory refundRestApiRequestFactory;
    private final SetupIntentRestApiFactory setUpIntentRestApiFactory;
    private final SettingsRepository settingsRepository;
    private final TerminalStatusManager statusManager;
    private final TransactionRepository transactionRepository;

    /* JADX INFO: compiled from: ApiRequestFactory.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ReadMethod.values().length];
            try {
                iArr[ReadMethod.CONTACT_EMV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadMethod.CONTACTLESS_EMV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadMethod.MAGNETIC_STRIPE_FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReadMethod.MAGNETIC_STRIPE_TRACK_2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReadMethod.CONTACTLESS_MAGSTRIPE_MODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TransactionResult.Result.values().length];
            try {
                iArr2[TransactionResult.Result.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[TransactionResult.Result.ICC_CARD_REMOVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[TransactionResult.Result.CONTACTLESS_LIMIT_EXCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[TransactionResult.Result.DECLINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[TransactionResult.Result.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[TransactionResult.Result.TIMEOUT.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[TransactionResult.Result.CANCELED.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[TransactionResult.Result.EMPTY_CANDIDATE_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[TransactionResult.Result.CARD_BLOCKED.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[TransactionResult.Result.DEVICE_FAILURE.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[TransactionResult.Result.CHECK_MOBILE_DEVICE.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[TransactionResult.Result.INSERT_OR_SWIPE_REQUIRED.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[TransactionResult.Result.MULTIPLE_CARDS_DETECTED.ordinal()] = 13;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[TransactionResult.Result.MOBILE_WALLET_TOO_MANY_TAPS.ordinal()] = 14;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr2[TransactionResult.Result.CARD_STILL_INSERTED.ordinal()] = 15;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[PaymentMethodType.values().length];
            try {
                iArr3[PaymentMethodType.WECHAT_PAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory
    public CancelPaymentIntentRequest cancelPaymentIntent(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.paymentIntentRestApiFactory.cancelPaymentIntent(id);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory
    public CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(params, "params");
        return this.setUpIntentRestApiFactory.cancelSetupIntent(id, params);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentRestApiFactory
    public CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return this.paymentIntentRestApiFactory.createPaymentIntent(params);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentRestApiFactory
    public CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return this.setUpIntentRestApiFactory.createSetupIntent(params);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory
    public RestRequest<RefundChargeRequest, RefundChargeRequest.Builder> refundChargeRequest(String charge, String paymentIntentId, long amount, RequestedPaymentMethod paymentMethodData, boolean reverseTransfer, boolean refundApplicationFee, String reason, Map<String, String> metadata, String stripeAccountId) {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        return this.refundRestApiRequestFactory.refundChargeRequest(charge, paymentIntentId, amount, paymentMethodData, reverseTransfer, refundApplicationFee, reason, metadata, stripeAccountId);
    }

    public ApiRequestFactory(PosInfoFactory posInfoFactory, LocationHandler locationHandler, TerminalStatusManager statusManager, SettingsRepository settingsRepository, TransactionRepository transactionRepository, SetupIntentRestApiFactory setUpIntentRestApiFactory, PaymentIntentRestApiFactory paymentIntentRestApiFactory, RefundRestApiRequestFactory refundRestApiRequestFactory, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(setUpIntentRestApiFactory, "setUpIntentRestApiFactory");
        Intrinsics.checkNotNullParameter(paymentIntentRestApiFactory, "paymentIntentRestApiFactory");
        Intrinsics.checkNotNullParameter(refundRestApiRequestFactory, "refundRestApiRequestFactory");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.posInfoFactory = posInfoFactory;
        this.locationHandler = locationHandler;
        this.statusManager = statusManager;
        this.settingsRepository = settingsRepository;
        this.transactionRepository = transactionRepository;
        this.setUpIntentRestApiFactory = setUpIntentRestApiFactory;
        this.paymentIntentRestApiFactory = paymentIntentRestApiFactory;
        this.refundRestApiRequestFactory = refundRestApiRequestFactory;
        this.logger = logger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.stripe.proto.api.rest.ActivateConnectionTokenRequest activateReader(com.stripe.stripeterminal.external.models.Reader r28, com.stripe.stripeterminal.external.models.ConnectionConfiguration r29, boolean r30) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.api.ApiRequestFactory.activateReader(com.stripe.stripeterminal.external.models.Reader, com.stripe.stripeterminal.external.models.ConnectionConfiguration, boolean):com.stripe.proto.api.rest.ActivateConnectionTokenRequest");
    }

    public final ConfirmSetupIntentRequest confirmManualEntrySetupIntent(SetupIntent setupIntent, ManualEntryPayment manualEntryPayment) throws TerminalException {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        Intrinsics.checkNotNullParameter(manualEntryPayment, "manualEntryPayment");
        return new ConfirmSetupIntentRequest(CollectionsKt.listOf("latest_attempt"), manualEntryRequestedPaymentMethod(manualEntryPayment), null, null, null, setupIntent.getId(), null, 92, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.stripe.proto.api.rest.ConfirmSetupIntentRequest confirmSetupIntent(com.stripe.stripeterminal.external.models.SetupIntent r41, com.stripe.stripeterminal.external.models.AllowRedisplay r42) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.api.ApiRequestFactory.confirmSetupIntent(com.stripe.stripeterminal.external.models.SetupIntent, com.stripe.stripeterminal.external.models.AllowRedisplay):com.stripe.proto.api.rest.ConfirmSetupIntentRequest");
    }

    public final RetrieveSetupIntentRequest retrieveSetupIntent(String clientSecret) throws TerminalException {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        String str = (String) CollectionsKt.firstOrNull(StringsKt.split$default((CharSequence) clientSecret, new String[]{SECRET_DELIMITER}, false, 0, 6, (Object) null));
        if (str == null) {
            throw new TerminalException(TerminalErrorCode.INVALID_CLIENT_SECRET, INVALID_CLIENT_SECRET, null, null, 12, null);
        }
        return new RetrieveSetupIntentRequest(null, str, clientSecret, null, 9, null);
    }

    public final CancelSetupIntentRequest cancelSetupIntent(SetupIntent intent, SetupIntentCancellationParameters params) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(params, "params");
        return cancelSetupIntent(OfflineAdapterKt.requireOnlineId(intent), params);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.stripe.proto.api.rest.ReadCardPaymentMethodRequest createPaymentMethod(com.stripe.stripeterminal.external.models.ReadReusableCardParameters r40, com.stripe.stripeterminal.internal.models.PaymentMethodData r41, java.lang.String r42) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.api.ApiRequestFactory.createPaymentMethod(com.stripe.stripeterminal.external.models.ReadReusableCardParameters, com.stripe.stripeterminal.internal.models.PaymentMethodData, java.lang.String):com.stripe.proto.api.rest.ReadCardPaymentMethodRequest");
    }

    public final RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> updatePaymentIntent(PaymentIntent intent, String readerId, Amount amountTip, boolean requestDynamicCurrencyConversion, AllowRedisplay allowRedisplay) throws Exception {
        Intrinsics.checkNotNullParameter(intent, "intent");
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptionsCreateUpdatePaymentIntentPaymentMethodOptionsRequest = createUpdatePaymentIntentPaymentMethodOptionsRequest(requestDynamicCurrencyConversion);
        List listListOf = CollectionsKt.listOf("payment_method.card_present");
        String id = intent.getId();
        PaymentMethodData paymentMethodData = intent.getPaymentMethodData();
        Intrinsics.checkNotNull(paymentMethodData);
        return new RestRequest<>(new UpdatePaymentIntentRequest(listListOf, null, id, createPaymentMethodRequest(paymentMethodData, allowRedisplay, readerId), amountTip != null ? Long.valueOf(amountTip.getValue()) : null, updatePaymentIntentPaymentMethodOptionsCreateUpdatePaymentIntentPaymentMethodOptionsRequest, null, 66, null), INSTANCE.getHeaders(intent));
    }

    public final RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> updateManualEntryPaymentIntent(PaymentIntent intent, ManualEntryPayment manualEntryPayment) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(manualEntryPayment, "manualEntryPayment");
        return new RestRequest<>(new UpdatePaymentIntentRequest(CollectionsKt.listOf("payment_method.card_present"), null, intent.getId(), manualEntryRequestedPaymentMethod(manualEntryPayment), null, null, null, WinError.ERROR_INVALID_TARGET_HANDLE, null), INSTANCE.getHeaders(intent));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> updateNonCardPaymentMethodPaymentIntent(PaymentIntent intent, NonCardPayment payment, Amount amountTip) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(payment, "payment");
        String typeName = payment.getPaymentMethodType().getTypeName();
        return new RestRequest<>(new UpdatePaymentIntentRequest(CollectionsKt.listOf("payment_method." + typeName), null, intent.getId(), new RequestedPaymentMethod(typeName, null, 0 == true ? 1 : 0, null, null, null, null, 126, null), amountTip != null ? Long.valueOf(amountTip.getValue()) : null, new UpdatePaymentIntentPaymentMethodOptions(0 == true ? 1 : 0, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0).newBuilder().build(), null, 66, null), INSTANCE.getHeaders(intent));
    }

    public static /* synthetic */ RestRequest confirmPaymentIntent$default(ApiRequestFactory apiRequestFactory, PaymentIntent paymentIntent, String str, Amount amount, Boolean bool, Long l, AllowRedisplay allowRedisplay, int i, Object obj) throws TerminalException {
        if ((i & 4) != 0) {
            amount = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        if ((i & 16) != 0) {
            l = null;
        }
        if ((i & 32) != 0) {
            allowRedisplay = null;
        }
        return apiRequestFactory.confirmPaymentIntent(paymentIntent, str, amount, bool, l, allowRedisplay);
    }

    public final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> confirmPaymentIntent(PaymentIntent intent, String readerId, Amount amountTip, Boolean dynamicCurrencyConversionSelected, Long amountSurcharge, AllowRedisplay allowRedisplay) throws Exception {
        Intrinsics.checkNotNullParameter(intent, "intent");
        PaymentMethodData paymentMethodData = intent.getPaymentMethodData();
        Intrinsics.checkNotNull(paymentMethodData);
        PaymentMethodOptions.Companion companion = PaymentMethodOptions.INSTANCE;
        PaymentMethodOptions.Builder builder = new PaymentMethodOptions.Builder();
        addCardPaymentMethodOptionsIfNeeded(builder, dynamicCurrencyConversionSelected);
        PaymentMethodOptions paymentMethodOptionsBuild = builder.build();
        if (paymentMethodOptionsBuild.card_present == null) {
            paymentMethodOptionsBuild = null;
        }
        return confirmPaymentIntentRequest(intent, createPaymentMethodRequest(paymentMethodData, allowRedisplay, readerId), paymentMethodOptionsBuild, amountTip, amountSurcharge, null, null);
    }

    public final RestRequest<AddEmvSecondGenerationDataRequest, AddEmvSecondGenerationDataRequest.Builder> addEmvSecondGenerationData(PaymentIntent paymentIntent, TransactionResult transactionResult) throws TerminalException {
        boolean z;
        String str;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        Intrinsics.checkNotNullParameter(transactionResult, "transactionResult");
        String id = paymentIntent.getId();
        switch (WhenMappings.$EnumSwitchMapping$1[transactionResult.getResult().ordinal()]) {
            case 1:
                z = true;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                z = false;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        switch (WhenMappings.$EnumSwitchMapping$1[transactionResult.getResult().ordinal()]) {
            case 1:
                str = null;
                break;
            case 2:
            case 6:
                str = "card_absent";
                break;
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                str = "card_rejected";
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        String tlvBlob = transactionResult.getTlvBlob();
        return new RestRequest<>(new AddEmvSecondGenerationDataRequest(null, Boolean.valueOf(z), tlvBlob, str, id, null, 33, null), INSTANCE.getHeaders(paymentIntent));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final RequestedPaymentMethod manualEntryRequestedPaymentMethod(ManualEntryPayment manualEntryPayment) {
        int i = 2;
        RequestedPaymentMethod.BillingDetails billingDetails = new RequestedPaymentMethod.BillingDetails(new RequestedPaymentMethod.BillingDetails.Address(manualEntryPayment.getZipCode(), null, i, 0 == true ? 1 : 0), 0 == true ? 1 : 0, i, 0 == true ? 1 : 0);
        String encPAN = manualEntryPayment.getEncPAN();
        String ksn = manualEntryPayment.getKsn();
        String strTakeLast = StringsKt.takeLast(manualEntryPayment.getExpiryDate(), 2);
        String strTake = StringsKt.take(manualEntryPayment.getExpiryDate(), 2);
        String encCVV = manualEntryPayment.getEncCVV();
        ByteString byteString = null;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = null;
        String str = null;
        ByteString byteString2 = null;
        return new RequestedPaymentMethod(CARD_TYPE, 0 == true ? 1 : 0, requestedCardPresent, new RequestedPaymentMethod.RequestedCard(encPAN, manualEntryPayment.getKsn(), strTakeLast, strTake, encCVV, ksn, byteString, 64, null), billingDetails, str, byteString2, 102, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> confirmManualEntryPaymentIntent(PaymentIntent intent, ManualEntryPayment manualEntryPayment) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(manualEntryPayment, "manualEntryPayment");
        return confirmPaymentIntentRequest(intent, manualEntryRequestedPaymentMethod(manualEntryPayment), new PaymentMethodOptions(null, new PaymentMethodOptions.Card(true, null, 2, null == true ? 1 : 0), null, null, 13, null), null, null, null, null);
    }

    public final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> confirmNonCardPaymentMethodPaymentIntent(PaymentIntent intent, NonCardPayment payment, Amount amountTip, Long amountSurcharge, String returnUrl) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(payment, "payment");
        RequestedPaymentMethod requestedPaymentMethod = new RequestedPaymentMethod(payment.getPaymentMethodType().getTypeName(), null, null, null, null, null, null, 126, null);
        PaymentMethodOptions.Companion companion = PaymentMethodOptions.INSTANCE;
        PaymentMethodOptions.Builder builder = new PaymentMethodOptions.Builder();
        addNonCardPaymentMethodOptionsIfNeeded(builder, payment);
        Unit unit = Unit.INSTANCE;
        PaymentMethodOptions paymentMethodOptionsBuild = builder.build();
        ConfirmPaymentIntentRequest.RedirectPreferences.Companion companion2 = ConfirmPaymentIntentRequest.RedirectPreferences.INSTANCE;
        ConfirmPaymentIntentRequest.RedirectPreferences.Builder builder2 = new ConfirmPaymentIntentRequest.RedirectPreferences.Builder();
        builder2.additional_formats = CollectionsKt.listOf("qr_code");
        Unit unit2 = Unit.INSTANCE;
        return confirmPaymentIntentRequest(intent, requestedPaymentMethod, paymentMethodOptionsBuild, amountTip, amountSurcharge, returnUrl, builder2.build());
    }

    public final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> confirmCollectiblePayment(PaymentIntent intent, RequestedPaymentMethod paymentMethodData, Amount amountTip, Boolean dynamicCurrencyConversionSelected, Long amountSurcharge, AllowRedisplay allowRedisplay) throws TerminalException {
        RequestedPaymentMethod requestedPaymentMethodCopy$default;
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresentCopy$default;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Location cachedLocation = this.locationHandler.getCachedLocation();
        if (paymentMethodData != null) {
            RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = paymentMethodData.card_present;
            if (requestedCardPresent != null) {
                requestedCardPresentCopy$default = RequestedPaymentMethod.RequestedCardPresent.copy$default(requestedCardPresent, null, null, null, null, null, null, null, null, null, null, null, null, cachedLocation != null ? Double.valueOf(cachedLocation.getLatitude()).toString() : null, cachedLocation != null ? Double.valueOf(cachedLocation.getLongitude()).toString() : null, null, null, 53247, null);
            } else {
                requestedCardPresentCopy$default = null;
            }
            requestedPaymentMethodCopy$default = RequestedPaymentMethod.copy$default(paymentMethodData, null, requestedCardPresentCopy$default, null, null, null, allowRedisplay != null ? allowRedisplay.getValue() : null, null, 93, null);
        } else {
            requestedPaymentMethodCopy$default = null;
        }
        PaymentMethodOptions.Companion companion = PaymentMethodOptions.INSTANCE;
        PaymentMethodOptions.Builder builder = new PaymentMethodOptions.Builder();
        addCardPaymentMethodOptionsIfNeeded(builder, dynamicCurrencyConversionSelected);
        Unit unit = Unit.INSTANCE;
        PaymentMethodOptions paymentMethodOptionsBuild = builder.build();
        return confirmPaymentIntentRequest(intent, requestedPaymentMethodCopy$default, paymentMethodOptionsBuild.card_present != null ? paymentMethodOptionsBuild : null, amountTip, amountSurcharge, null, null);
    }

    public final CreateReaderCollectedDataRequest createReaderCollectedData(PaymentMethodData paymentMethodData) throws Exception {
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        ReadMethod methodFromTlv = readMethodFromTlv(paymentMethodData);
        if (methodFromTlv == ReadMethod.MAGNETIC_STRIPE_TRACK_2) {
            return new CreateReaderCollectedDataRequest("magstripe", new CreateReaderCollectedDataRequest.MagstripeCollectedData(paymentMethodData.getTrack2(), paymentMethodData.getKsn(), null, 4, null), null, 4, null);
        }
        throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected passthrough read method: " + methodFromTlv, null, null, 12, null);
    }

    public final CancelPaymentIntentRequest cancelPaymentIntent(PaymentIntent intent) throws TerminalException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return cancelPaymentIntent(OfflineAdapterKt.requireOnlineId(intent));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DetachPaymentMethodRequest detachPaymentMethod(PaymentMethod method) throws TerminalException {
        Intrinsics.checkNotNullParameter(method, "method");
        return new DetachPaymentMethodRequest(method.getId(), null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DiscoverLocationsRequest discoverLocations(List<String> serialNumbers) throws TerminalException {
        Intrinsics.checkNotNullParameter(serialNumbers, "serialNumbers");
        return new DiscoverLocationsRequest(serialNumbers, null, 2, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ListAllReadersRequest listAllReaders$default(ApiRequestFactory apiRequestFactory, DeviceType deviceType, String str, int i, Object obj) throws TerminalException {
        if ((i & 1) != 0) {
            deviceType = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return apiRequestFactory.listAllReaders(deviceType, str);
    }

    public final ListAllReadersRequest listAllReaders(DeviceType deviceType, String location) throws TerminalException {
        return new ListAllReadersRequest(deviceType != null ? deviceType.getDeviceName() : null, location, CollectionsKt.listOf("data.location"), null, null, "android", "4.1.0", 100, null, 280, null);
    }

    public final RetrievePaymentIntentRequest retrievePaymentIntent(String clientSecret) throws TerminalException {
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        String str = (String) CollectionsKt.firstOrNull(StringsKt.split$default((CharSequence) clientSecret, new String[]{SECRET_DELIMITER}, false, 0, 6, (Object) null));
        if (str == null) {
            throw new TerminalException(TerminalErrorCode.INVALID_CLIENT_SECRET, INVALID_CLIENT_SECRET, null, null, 12, null);
        }
        return new RetrievePaymentIntentRequest(null, str, clientSecret, null, 9, null);
    }

    public final RestRequest<RetrievePaymentIntentRequest, RetrievePaymentIntentRequest.Builder> retrievePaymentIntentWithPaymentIntentId(String paymentIntentId, String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentIntentId, "paymentIntentId");
        return new RestRequest<>(new RetrievePaymentIntentRequest(null, paymentIntentId, null, null, 13, null), INSTANCE.withStripeAccountId(new LinkedHashMap(), accountId));
    }

    public final ListLocationsRequest listLocations(ListLocationsParameters parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return new ListLocationsRequest(parameters.getEndingBefore(), parameters.getLimit(), parameters.getStartingAfter(), null, 8, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RetrieveLocationRequest retrieveLocation(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new RetrieveLocationRequest(id, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.stripe.proto.api.rest.RequestedPaymentMethod createPaymentMethodRequest(com.stripe.stripeterminal.internal.models.PaymentMethodData r41, com.stripe.stripeterminal.external.models.AllowRedisplay r42, java.lang.String r43) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.api.ApiRequestFactory.createPaymentMethodRequest(com.stripe.stripeterminal.internal.models.PaymentMethodData, com.stripe.stripeterminal.external.models.AllowRedisplay, java.lang.String):com.stripe.proto.api.rest.RequestedPaymentMethod");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final UpdatePaymentIntentPaymentMethodOptions createUpdatePaymentIntentPaymentMethodOptionsRequest(boolean requestDynamicCurrencyConversion) {
        UpdatePaymentIntentPaymentMethodOptions.CardPresent.Builder builderNewBuilder = new UpdatePaymentIntentPaymentMethodOptions.CardPresent(null, null, null, 7, null).newBuilder();
        if (requestDynamicCurrencyConversion) {
            builderNewBuilder.request_dynamic_currency_conversion(IF_AVAILABLE);
        }
        return new UpdatePaymentIntentPaymentMethodOptions(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0).newBuilder().card_present(builderNewBuilder.build()).build();
    }

    private final RestRequest<ConfirmPaymentIntentRequest, ConfirmPaymentIntentRequest.Builder> confirmPaymentIntentRequest(PaymentIntent intent, RequestedPaymentMethod paymentMethodData, PaymentMethodOptions paymentMethodOptions, Amount amountTip, Long amountSurcharge, String returnUrl, ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferences) {
        return new RestRequest<>(new ConfirmPaymentIntentRequest(null, null, intent.getPaymentMethodId() == null ? paymentMethodData : null, null, intent.getId(), amountTip != null ? Long.valueOf(amountTip.getValue()) : null, paymentMethodOptions, amountSurcharge, returnUrl, redirectPreferences, null, 1035, null), INSTANCE.getHeaders(intent));
    }

    public final RestRequest<AddEmvSecondGenerationDataRefundRequest, AddEmvSecondGenerationDataRefundRequest.Builder> emvSecondGenerationDataRefundRequest(String refundId, TransactionResult result, boolean refundApplicationFee, boolean reverseTransfer, String stripeAccountId) {
        String str;
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = result.getResult() == TransactionResult.Result.APPROVED;
        String tlvBlob = result.getTlvBlob();
        if (result.getResult() == TransactionResult.Result.APPROVED) {
            str = null;
        } else if (result.getResult() == TransactionResult.Result.ICC_CARD_REMOVED) {
            str = "card_absent";
        } else {
            str = "card_rejected";
        }
        return new RestRequest<>(new AddEmvSecondGenerationDataRefundRequest(null, Boolean.valueOf(z), tlvBlob, str, refundId, Boolean.valueOf(refundApplicationFee), Boolean.valueOf(reverseTransfer), null, 129, null), INSTANCE.withStripeAccountId(new LinkedHashMap(), stripeAccountId));
    }

    private final ReadMethod readMethodFromTlv(PaymentMethodData paymentMethodData) throws Exception {
        try {
            return paymentMethodData.getReadMethod();
        } catch (Exception e) {
            this.logger.w("Failed to parse read method", TuplesKt.to("tlv", paymentMethodData.getTlv()));
            throw e;
        }
    }

    private final void addCardPaymentMethodOptionsIfNeeded(PaymentMethodOptions.Builder builder, Boolean bool) {
        if (bool != null) {
            bool.booleanValue();
            PaymentMethodOptions.CardPresent.Companion companion = PaymentMethodOptions.CardPresent.INSTANCE;
            PaymentMethodOptions.CardPresent.Builder builder2 = new PaymentMethodOptions.CardPresent.Builder();
            builder2.dynamic_currency_conversion_selected = bool;
            builder.card_present = builder2.build();
        }
    }

    private final void addNonCardPaymentMethodOptionsIfNeeded(PaymentMethodOptions.Builder builder, NonCardPayment nonCardPayment) {
        if (WhenMappings.$EnumSwitchMapping$2[nonCardPayment.getPaymentMethodType().ordinal()] == 1) {
            PaymentMethodOptions.WechatPay.Companion companion = PaymentMethodOptions.WechatPay.INSTANCE;
            PaymentMethodOptions.WechatPay.Builder builder2 = new PaymentMethodOptions.WechatPay.Builder();
            builder2.client = WEB;
            builder.wechat_pay = builder2.build();
        }
    }

    /* JADX INFO: compiled from: ApiRequestFactory.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f*\u00020\u00108BX\u0082\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;", "", "()V", "CARD_TYPE", "", "EMV_TYPE", "ENCRYPTED_EMV_TYPE", "ENCRYPTED_TRACK_DATA_TYPE", "IF_AVAILABLE", "INVALID_CLIENT_SECRET", "NEVER", "SECRET_DELIMITER", "STRIPE_ACCOUNT_HEADER", "WEB", "headers", "", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "getHeaders$annotations", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V", "getHeaders", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;", "withStripeAccountId", "", "stripeAccountId", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static /* synthetic */ void getHeaders$annotations(PaymentIntent paymentIntent) {
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map<String, String> withStripeAccountId(Map<String, String> map, String str) {
            if (str != null) {
                map.put("Stripe-Account", str);
            }
            return map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map<String, String> getHeaders(PaymentIntent paymentIntent) {
            return withStripeAccountId(new LinkedHashMap(), paymentIntent.getStripeAccountId());
        }
    }
}
