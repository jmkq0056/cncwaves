package com.stripe.stripeterminal.internal.common.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.Json;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.ListLocationsParameters;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.transaction.PaymentMethodCollectionType;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0011\u0018\u0000 )2\u00020\u0001:\u0001)B\u009d\u0001\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0014\b\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019¢\u0006\u0002\u0010\u001aR\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001b\u0010\u001cR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001d\u0010\u001cR\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u001f\u0010\u001cR\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b \u0010\u001cR\u001a\u0010!\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b\"\u0010\u001cR\u001a\u0010#\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b$\u0010\u001cR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b%\u0010\u001cR\u001a\u0010&\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b'\u0010\u001cR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0000\u0012\u0004\b(\u0010\u001c¨\u0006*"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", "Lcom/stripe/loggingmodels/ApplicationTrace;", FirebaseAnalytics.Param.METHOD, "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntentParameters", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "config", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "setupIntentParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "setupIntentCancellationParameters", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "refundParameters", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "listLocationsParameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "tags", "", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;)V", "getCart$annotations", "()V", "getConfig$annotations", "paymentIntentId", "getPaymentIntentId$annotations", "getPaymentIntentParameters$annotations", "readerId", "getReaderId$annotations", "readerName", "getReaderName$annotations", "getSetupIntentCancellationParameters$annotations", "setupIntentId", "getSetupIntentId$annotations", "getSetupIntentParameters$annotations", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkRequest extends ApplicationTrace {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Cart cart;
    private DiscoveryConfiguration config;
    private String paymentIntentId;
    private PaymentIntentParameters paymentIntentParameters;
    private String readerId;
    private String readerName;
    private SetupIntentCancellationParameters setupIntentCancellationParameters;
    private String setupIntentId;
    private SetupIntentParameters setupIntentParameters;

    private static /* synthetic */ void getCart$annotations() {
    }

    @Json(name = "discovery_configuration")
    private static /* synthetic */ void getConfig$annotations() {
    }

    @Json(name = OfflineStorageConstantsKt.PAYMENT_INTENT_ID)
    private static /* synthetic */ void getPaymentIntentId$annotations() {
    }

    @Json(name = "payment_intent_parameters")
    private static /* synthetic */ void getPaymentIntentParameters$annotations() {
    }

    @Json(name = OfflineStorageConstantsKt.READER_ID)
    private static /* synthetic */ void getReaderId$annotations() {
    }

    @Json(name = "reader_name")
    private static /* synthetic */ void getReaderName$annotations() {
    }

    @Json(name = "setup_intent_cancellation_parameters")
    private static /* synthetic */ void getSetupIntentCancellationParameters$annotations() {
    }

    @Json(name = "setup_intent_id")
    private static /* synthetic */ void getSetupIntentId$annotations() {
    }

    @Json(name = "setup_intent_parameters")
    private static /* synthetic */ void getSetupIntentParameters$annotations() {
    }

    /* synthetic */ SdkRequest(String str, Reader reader, PaymentIntent paymentIntent, PaymentIntentParameters paymentIntentParameters, DiscoveryConfiguration discoveryConfiguration, SetupIntent setupIntent, SetupIntentParameters setupIntentParameters, SetupIntentCancellationParameters setupIntentCancellationParameters, RefundParameters refundParameters, ListLocationsParameters listLocationsParameters, Cart cart, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : reader, (i & 4) != 0 ? null : paymentIntent, (i & 8) != 0 ? null : paymentIntentParameters, (i & 16) != 0 ? null : discoveryConfiguration, (i & 32) != 0 ? null : setupIntent, (i & 64) != 0 ? null : setupIntentParameters, (i & 128) != 0 ? null : setupIntentCancellationParameters, (i & 256) != 0 ? null : refundParameters, (i & 512) != 0 ? null : listLocationsParameters, (i & 1024) != 0 ? null : cart, (i & 2048) != 0 ? MapsKt.emptyMap() : map);
    }

    private SdkRequest(String str, Reader reader, PaymentIntent paymentIntent, PaymentIntentParameters paymentIntentParameters, DiscoveryConfiguration discoveryConfiguration, SetupIntent setupIntent, SetupIntentParameters setupIntentParameters, SetupIntentCancellationParameters setupIntentCancellationParameters, RefundParameters refundParameters, ListLocationsParameters listLocationsParameters, Cart cart, Map<String, String> map) {
        super("SdkRequest", str, map);
        this.config = discoveryConfiguration;
        this.paymentIntentId = paymentIntent != null ? paymentIntent.getId() : null;
        this.paymentIntentParameters = paymentIntentParameters;
        this.readerId = reader != null ? reader.getId() : null;
        this.readerName = reader != null ? reader.getSerialNumber() : null;
        this.setupIntentId = setupIntent != null ? setupIntent.getId() : null;
        this.setupIntentParameters = setupIntentParameters;
        this.setupIntentCancellationParameters = setupIntentCancellationParameters;
        this.cart = cart;
    }

    /* JADX INFO: compiled from: SdkRequest.kt */
    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\fJ\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020#J\u000e\u0010$\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020%J\u0006\u0010&\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u00042\u0006\u0010 \u001a\u00020(J\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0004J\u0006\u0010+\u001a\u00020\u0004J\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0004J\u0006\u00102\u001a\u00020\u0004J\u000e\u00103\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u00104\u001a\u00020\u0004J\u0006\u00105\u001a\u00020\u0004J\u000e\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u000208J\u0006\u00109\u001a\u00020\u0004¨\u0006:"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;", "", "()V", "activateReader", "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "cancelPaymentIntent", "intent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "cancelSetupIntent", "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "clearCachedCredentials", "clearReaderDisplay", "collectData", "type", "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "collectInputs", "collectPaymentMethod", "update", "", "collectRefundPaymentMethod", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "collectSetupIntentPaymentMethod", "completeNextActions", "confirmPaymentIntent", "confirmRefund", "confirmSetupIntent", "connectReader", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "createPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "createSetupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "disconnectReader", "discoverReaders", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;", "generateRegistrationCode", "getReaderSettings", "handleNextActions", "initialize", "installUpdate", "listLocations", "parameters", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "readReusableCard", "rebootReader", "reconnectReader", "retrievePaymentIntent", "retrieveSetupIntent", "setReaderDisplay", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: SdkRequest.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[PaymentMethodCollectionType.Passthrough.PassthroughType.values().length];
                try {
                    iArr[PaymentMethodCollectionType.Passthrough.PassthroughType.MAGSTRIPE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SdkRequest activateReader(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new SdkRequest("activateReader", reader, null, null, null, null, null, null, null, null, null, null, 4092, null);
        }

        public final /* synthetic */ SdkRequest clearReaderDisplay() {
            return new SdkRequest("clearReaderDisplay", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest clearCachedCredentials() {
            return new SdkRequest("clearCachedCredentials", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest collectPaymentMethod(PaymentIntent intent, boolean update) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkRequest("collectPaymentMethod", null, intent, null, null, null, null, null, null, null, null, MapsKt.mapOf(TuplesKt.to("update_pi", String.valueOf(update))), 2042, null);
        }

        public final /* synthetic */ SdkRequest retrieveSetupIntent() {
            return new SdkRequest("retrieveSetupIntent", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest collectSetupIntentPaymentMethod(SetupIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkRequest("collectSetupIntentPaymentMethod", null, null, null, null, intent, null, null, null, null, null, null, 4062, null);
        }

        public final /* synthetic */ SdkRequest collectRefundPaymentMethod(RefundParameters params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new SdkRequest("collectRefundPaymentMethod", null, null, null, null, null, null, null, params, null, null, null, 3838, null);
        }

        public final /* synthetic */ SdkRequest discoverReaders(DiscoveryConfiguration config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return new SdkRequest("discoverReaders", null, null, null, config, null, null, null, null, null, null, null, 4078, null);
        }

        public final /* synthetic */ SdkRequest cancelPaymentIntent(PaymentIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkRequest("cancelPaymentIntent", null, intent, null, null, null, null, null, null, null, null, null, 4090, null);
        }

        public final /* synthetic */ SdkRequest connectReader(Reader reader, ConnectionConfiguration config) {
            String str;
            Map mapEmptyMap;
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(config, "config");
            if (config instanceof ConnectionConfiguration.BluetoothConnectionConfiguration) {
                str = "bluetooth";
            } else if (config instanceof ConnectionConfiguration.InternetConnectionConfiguration) {
                str = "ip";
            } else {
                str = config instanceof ConnectionConfiguration.UsbConnectionConfiguration ? "usb" : null;
            }
            if (str == null || (mapEmptyMap = MapsKt.mapOf(TuplesKt.to(BbposAdapter.CONNECTION_TYPE_TAG_KEY, str))) == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            return new SdkRequest("connectReader", reader, null, null, null, null, null, null, null, null, null, mapEmptyMap, 2044, null);
        }

        public final /* synthetic */ SdkRequest reconnectReader(Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new SdkRequest("reconnectReader", reader, null, null, null, null, null, null, null, null, null, null, 4092, null);
        }

        public final /* synthetic */ SdkRequest createPaymentIntent(PaymentIntentParameters params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new SdkRequest("createPaymentIntent", null, null, params, null, null, null, null, null, null, null, null, 4086, null);
        }

        public final /* synthetic */ SdkRequest createSetupIntent(SetupIntentParameters params) {
            Intrinsics.checkNotNullParameter(params, "params");
            return new SdkRequest("createSetupIntent", null, null, null, null, null, params, null, null, null, null, null, 4030, null);
        }

        public final /* synthetic */ SdkRequest confirmSetupIntent(SetupIntent setupIntent) {
            Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
            return new SdkRequest("confirmSetupIntent", null, null, null, null, setupIntent, null, null, null, null, null, null, 4062, null);
        }

        public final /* synthetic */ SdkRequest cancelSetupIntent(SetupIntent setupIntent, SetupIntentCancellationParameters params) {
            Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
            Intrinsics.checkNotNullParameter(params, "params");
            return new SdkRequest("cancelSetupIntent", null, null, null, null, setupIntent, null, params, null, null, null, null, 3934, null);
        }

        public final /* synthetic */ SdkRequest rebootReader() {
            return new SdkRequest("rebootReader", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest disconnectReader() {
            return new SdkRequest("disconnectReader", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest generateRegistrationCode() {
            return new SdkRequest("generateRegistrationCode", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest installUpdate() {
            return new SdkRequest("installUpdate", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest confirmPaymentIntent(PaymentIntent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            return new SdkRequest("confirmPaymentIntent", null, intent, null, null, null, null, null, null, null, null, null, 4090, null);
        }

        public final /* synthetic */ SdkRequest confirmRefund() {
            return new SdkRequest("confirmRefund", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest readReusableCard() {
            return new SdkRequest("readReusableCard", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest retrievePaymentIntent() {
            return new SdkRequest("retrievePaymentIntent", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest setReaderDisplay(Cart cart) {
            Intrinsics.checkNotNullParameter(cart, "cart");
            return new SdkRequest("setReaderDisplay", null, null, null, null, null, null, null, null, null, cart, null, 3070, null);
        }

        public final /* synthetic */ SdkRequest listLocations(ListLocationsParameters parameters) {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            return new SdkRequest("listLocations", null, null, null, null, null, null, null, null, parameters, null, null, 3582, null);
        }

        public final /* synthetic */ SdkRequest collectInputs() {
            return new SdkRequest("collectInputs", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest handleNextActions() {
            return new SdkRequest("handleNextActions", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest completeNextActions() {
            return new SdkRequest("completeNextActions", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final /* synthetic */ SdkRequest initialize() {
            return new SdkRequest("initTerminal", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final SdkRequest setReaderSettings() {
            return new SdkRequest("setReaderSettings", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final SdkRequest getReaderSettings() {
            return new SdkRequest("getReaderSettings", null, null, null, null, null, null, null, null, null, null, null, 4094, null);
        }

        public final SdkRequest collectData(PaymentMethodCollectionType.Passthrough.PassthroughType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            if (WhenMappings.$EnumSwitchMapping$0[type.ordinal()] != 1) {
                throw new NoWhenBranchMatchedException();
            }
            return new SdkRequest("collectData", null, null, null, null, null, null, null, null, null, null, MapsKt.mapOf(TuplesKt.to("passthrough_type", "magstripe")), 2046, null);
        }
    }
}
