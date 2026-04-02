package com.stripe.offlinemode.forwarding;

import android.location.Location;
import com.squareup.wire.Message;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.offlinemode.models.ForwardingLivemodePaymentInTestmodeException;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.NameValuePair;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.sun.jna.platform.win32.WinError;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000 82\u00020\u0001:\u000278B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u0018JN\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\"\u001c\b\u0000\u0010\u001b*\u0016\u0012\u0004\u0012\u0002H\u001b\u0012\u0002\b\u00030\u001dj\b\u0012\u0004\u0012\u0002H\u001b`\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001b0 H\u0082@¢\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u0018J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0002J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002J&\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020'2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0082@¢\u0006\u0002\u00102J.\u00103\u001a\u00020#2\u0006\u00104\u001a\u0002052\u0006\u0010.\u001a\u00020'2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0096@¢\u0006\u0002\u00106R\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;", "offlineForwardingService", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "credentialsProvider", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "logger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "traceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V", "value", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;", "cachedSession", "setCachedSession", "(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;)V", "clearStoredCredentials", "", "forwardOfflinePayment", "Lcom/stripe/proto/model/rest/PaymentIntent;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardOfflineRequest", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "offlineEntityType", "Ljava/lang/Class;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardOfflineSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "isTokenRefreshRequired", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "connection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "offlineDetails", "", "Lcom/stripe/proto/model/offline_mode/NameValuePair;", "refreshCredentialsIfNeeded", "offlineReader", "offlineConnection", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveSetupIntent", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "CachedSession", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineForwardingApiClient implements OfflineForwardingApiClient {
    private static final String DEFERRED_PAYMENT_TYPE = "deferred";
    private static final String OFFLINE_PAYMENT_LAT_KEY = "payment_method_data[card_present][offline][latitude]";
    private static final String OFFLINE_PAYMENT_LONG_KEY = "payment_method_data[card_present][offline][longitude]";
    private static final String OFFLINE_PAYMENT_TYPE_KEY = "payment_method_data[card_present][offline][type]";
    private CachedSession cachedSession;
    private final OfflineCredentialsProvider credentialsProvider;
    private final LocationHandler locationHandler;
    private final OfflineForwardingTraceLogger logger;
    private final OfflineForwardingService offlineForwardingService;
    private final OfflineForwardingTraceManager traceManager;

    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient", f = "DefaultOfflineForwardingApiClient.kt", i = {0, 0}, l = {WinError.ERROR_BUFFER_OVERFLOW, WinError.ERROR_INVALID_TARGET_HANDLE}, m = "forwardOfflinePayment", n = {"this", "request"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingApiClient.this.forwardOfflinePayment(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient", f = "DefaultOfflineForwardingApiClient.kt", i = {0, 0, 0, 0, 0}, l = {68, 98}, m = "forwardOfflineRequest", n = {"this", "offlineEntityType", "offlineReader", "offlineLocation", "offlineApiRequest"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C02991<Rsp extends Message<Rsp, ?>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C02991(Continuation<? super C02991> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingApiClient.this.forwardOfflineRequest(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient", f = "DefaultOfflineForwardingApiClient.kt", i = {0, 0}, l = {WinError.ERROR_INVALID_LEVEL, 127}, m = "forwardOfflineSetupIntent", n = {"this", "request"}, s = {"L$0", "L$1"})
    static final class C03001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03001(Continuation<? super C03001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingApiClient.this.forwardOfflineSetupIntent(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient", f = "DefaultOfflineForwardingApiClient.kt", i = {0, 0, 0}, l = {WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED}, m = "refreshCredentialsIfNeeded", n = {"this", "offlineReader", "offlineConnection"}, s = {"L$0", "L$1", "L$2"})
    static final class C03021 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C03021(Continuation<? super C03021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingApiClient.this.refreshCredentialsIfNeeded(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$retrieveSetupIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient", f = "DefaultOfflineForwardingApiClient.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, l = {WinError.ERROR_JOIN_TO_SUBST, WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_INVALID_EVENT_COUNT}, m = "retrieveSetupIntent", n = {"this", OfflineStorageConstantsKt.ID, "offlineReader", "offlineConnection", "offlineLocation", "this", OfflineStorageConstantsKt.ID, "offlineReader", "offlineConnection", "offlineLocation"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C03031 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C03031(Continuation<? super C03031> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineForwardingApiClient.this.retrieveSetupIntent(null, null, null, null, this);
        }
    }

    public DefaultOfflineForwardingApiClient(OfflineForwardingService offlineForwardingService, LocationHandler locationHandler, OfflineCredentialsProvider credentialsProvider, OfflineForwardingTraceLogger logger, OfflineForwardingTraceManager traceManager) {
        Intrinsics.checkNotNullParameter(offlineForwardingService, "offlineForwardingService");
        Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
        Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        this.offlineForwardingService = offlineForwardingService;
        this.locationHandler = locationHandler;
        this.credentialsProvider = credentialsProvider;
        this.logger = logger;
        this.traceManager = traceManager;
    }

    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "connection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "credentials", "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;", "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/offlinemode/forwarding/OfflineCredentials;)V", "getConnection", "()Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "getCredentials", "()Lcom/stripe/offlinemode/forwarding/OfflineCredentials;", "getReader", "()Lcom/stripe/proto/model/offline_mode/OfflineReader;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class CachedSession {
        private final OfflineConnection connection;
        private final OfflineCredentials credentials;
        private final OfflineReader reader;

        public static /* synthetic */ CachedSession copy$default(CachedSession cachedSession, OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineCredentials offlineCredentials, int i, Object obj) {
            if ((i & 1) != 0) {
                offlineReader = cachedSession.reader;
            }
            if ((i & 2) != 0) {
                offlineConnection = cachedSession.connection;
            }
            if ((i & 4) != 0) {
                offlineCredentials = cachedSession.credentials;
            }
            return cachedSession.copy(offlineReader, offlineConnection, offlineCredentials);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final OfflineReader getReader() {
            return this.reader;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final OfflineConnection getConnection() {
            return this.connection;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final OfflineCredentials getCredentials() {
            return this.credentials;
        }

        public final CachedSession copy(OfflineReader reader, OfflineConnection connection, OfflineCredentials credentials) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(credentials, "credentials");
            return new CachedSession(reader, connection, credentials);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CachedSession)) {
                return false;
            }
            CachedSession cachedSession = (CachedSession) other;
            return Intrinsics.areEqual(this.reader, cachedSession.reader) && Intrinsics.areEqual(this.connection, cachedSession.connection) && Intrinsics.areEqual(this.credentials, cachedSession.credentials);
        }

        public int hashCode() {
            return (((this.reader.hashCode() * 31) + this.connection.hashCode()) * 31) + this.credentials.hashCode();
        }

        public String toString() {
            return "CachedSession(reader=" + this.reader + ", connection=" + this.connection + ", credentials=" + this.credentials + ')';
        }

        public CachedSession(OfflineReader reader, OfflineConnection connection, OfflineCredentials credentials) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(credentials, "credentials");
            this.reader = reader;
            this.connection = connection;
            this.credentials = credentials;
        }

        public final OfflineReader getReader() {
            return this.reader;
        }

        public final OfflineConnection getConnection() {
            return this.connection;
        }

        public final OfflineCredentials getCredentials() {
            return this.credentials;
        }
    }

    private final void setCachedSession(CachedSession cachedSession) {
        OfflineCredentials credentials;
        String stripeSessionToken;
        this.cachedSession = cachedSession;
        if (cachedSession == null || (credentials = cachedSession.getCredentials()) == null || (stripeSessionToken = credentials.getStripeSessionToken()) == null) {
            return;
        }
        this.offlineForwardingService.setAuthToken(stripeSessionToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <Rsp extends com.squareup.wire.Message<Rsp, ?>> java.lang.Object forwardOfflineRequest(com.stripe.offlinemode.models.OfflineForwardingRequest r19, java.lang.Class<Rsp> r20, kotlin.coroutines.Continuation<? super com.stripe.jvmcore.restclient.RestResponse<Rsp, com.stripe.proto.model.rest.ErrorWrapper>> r21) throws com.stripe.offlinemode.models.ForwardingLivemodePaymentInTestmodeException, com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.forwardOfflineRequest(com.stripe.offlinemode.models.OfflineForwardingRequest, java.lang.Class, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object forwardOfflinePayment(com.stripe.offlinemode.models.OfflineForwardingRequest r7, kotlin.coroutines.Continuation<? super com.stripe.proto.model.rest.PaymentIntent> r8) throws com.stripe.offlinemode.models.ForwardingLivemodePaymentInTestmodeException, com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r8
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$1
            com.stripe.offlinemode.models.OfflineForwardingRequest r7 = (com.stripe.offlinemode.models.OfflineForwardingRequest) r7
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L54
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Class<com.stripe.proto.model.rest.PaymentIntent> r8 = com.stripe.proto.model.rest.PaymentIntent.class
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.forwardOfflineRequest(r7, r8, r0)
            if (r8 != r1) goto L53
            goto L6a
        L53:
            r2 = r6
        L54:
            com.stripe.jvmcore.restclient.RestResponse r8 = (com.stripe.jvmcore.restclient.RestResponse) r8
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$2 r4 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$2
            r5 = 0
            r4.<init>(r7, r5)
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = com.stripe.offlinemode.forwarding.RestResponseHandlerKt.decodeResponseAndHandleAuthFailure(r8, r4, r0)
            if (r7 != r1) goto L6b
        L6a:
            return r1
        L6b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.forwardOfflinePayment(com.stripe.offlinemode.models.OfflineForwardingRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/rest/PaymentIntent;", "it", "Lcom/stripe/proto/model/rest/ErrorResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflinePayment$2", f = "DefaultOfflineForwardingApiClient.kt", i = {}, l = {WinError.ERROR_INVALID_CATEGORY}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<ErrorResponse, Continuation<? super PaymentIntent>, Object> {
        final /* synthetic */ OfflineForwardingRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$request = offlineForwardingRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineForwardingApiClient.this.new AnonymousClass2(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ErrorResponse errorResponse, Continuation<? super PaymentIntent> continuation) {
            return ((AnonymousClass2) create(errorResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ForwardingLivemodePaymentInTestmodeException, TerminalException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            DefaultOfflineForwardingApiClient.this.clearStoredCredentials();
            this.label = 1;
            Object objForwardOfflinePayment = DefaultOfflineForwardingApiClient.this.forwardOfflinePayment(this.$request, this);
            return objForwardOfflinePayment == coroutine_suspended ? coroutine_suspended : objForwardOfflinePayment;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object forwardOfflineSetupIntent(com.stripe.offlinemode.models.OfflineForwardingRequest r7, kotlin.coroutines.Continuation<? super com.stripe.proto.model.rest.SetupIntent> r8) throws com.stripe.offlinemode.models.ForwardingLivemodePaymentInTestmodeException, com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.C03001
            if (r0 == 0) goto L14
            r0 = r8
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.C03001) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$1
            com.stripe.offlinemode.models.OfflineForwardingRequest r7 = (com.stripe.offlinemode.models.OfflineForwardingRequest) r7
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L54
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Class<com.stripe.proto.model.rest.SetupIntent> r8 = com.stripe.proto.model.rest.SetupIntent.class
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.forwardOfflineRequest(r7, r8, r0)
            if (r8 != r1) goto L53
            goto L6a
        L53:
            r2 = r6
        L54:
            com.stripe.jvmcore.restclient.RestResponse r8 = (com.stripe.jvmcore.restclient.RestResponse) r8
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2 r4 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2
            r5 = 0
            r4.<init>(r7, r5)
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = com.stripe.offlinemode.forwarding.RestResponseHandlerKt.decodeResponseAndHandleAuthFailure(r8, r4, r0)
            if (r7 != r1) goto L6b
        L6a:
            return r1
        L6b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.forwardOfflineSetupIntent(com.stripe.offlinemode.models.OfflineForwardingRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/rest/SetupIntent;", "it", "Lcom/stripe/proto/model/rest/ErrorResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2", f = "DefaultOfflineForwardingApiClient.kt", i = {}, l = {130}, m = "invokeSuspend", n = {}, s = {})
    static final class C03012 extends SuspendLambda implements Function2<ErrorResponse, Continuation<? super SetupIntent>, Object> {
        final /* synthetic */ OfflineForwardingRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03012(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super C03012> continuation) {
            super(2, continuation);
            this.$request = offlineForwardingRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineForwardingApiClient.this.new C03012(this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ErrorResponse errorResponse, Continuation<? super SetupIntent> continuation) {
            return ((C03012) create(errorResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ForwardingLivemodePaymentInTestmodeException, TerminalException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            DefaultOfflineForwardingApiClient.this.clearStoredCredentials();
            this.label = 1;
            Object objForwardOfflineSetupIntent = DefaultOfflineForwardingApiClient.this.forwardOfflineSetupIntent(this.$request, this);
            return objForwardOfflineSetupIntent == coroutine_suspended ? coroutine_suspended : objForwardOfflineSetupIntent;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object retrieveSetupIntent(java.lang.String r21, com.stripe.proto.model.offline_mode.OfflineReader r22, com.stripe.proto.model.offline_mode.OfflineConnection r23, com.stripe.proto.model.offline_mode.OfflineLocation r24, kotlin.coroutines.Continuation<? super com.stripe.proto.model.rest.SetupIntent> r25) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.retrieveSetupIntent(java.lang.String, com.stripe.proto.model.offline_mode.OfflineReader, com.stripe.proto.model.offline_mode.OfflineConnection, com.stripe.proto.model.offline_mode.OfflineLocation, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$retrieveSetupIntent$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineForwardingApiClient.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/rest/SetupIntent;", "it", "Lcom/stripe/proto/model/rest/ErrorResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$retrieveSetupIntent$2", f = "DefaultOfflineForwardingApiClient.kt", i = {}, l = {WinError.ERROR_INVALID_LIST_FORMAT}, m = "invokeSuspend", n = {}, s = {})
    static final class C03042 extends SuspendLambda implements Function2<ErrorResponse, Continuation<? super SetupIntent>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ OfflineConnection $offlineConnection;
        final /* synthetic */ OfflineLocation $offlineLocation;
        final /* synthetic */ OfflineReader $offlineReader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03042(String str, OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, Continuation<? super C03042> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$offlineReader = offlineReader;
            this.$offlineConnection = offlineConnection;
            this.$offlineLocation = offlineLocation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineForwardingApiClient.this.new C03042(this.$id, this.$offlineReader, this.$offlineConnection, this.$offlineLocation, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ErrorResponse errorResponse, Continuation<? super SetupIntent> continuation) {
            return ((C03042) create(errorResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws TerminalException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            DefaultOfflineForwardingApiClient.this.clearStoredCredentials();
            this.label = 1;
            Object objRetrieveSetupIntent = DefaultOfflineForwardingApiClient.this.retrieveSetupIntent(this.$id, this.$offlineReader, this.$offlineConnection, this.$offlineLocation, this);
            return objRetrieveSetupIntent == coroutine_suspended ? coroutine_suspended : objRetrieveSetupIntent;
        }
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingApiClient
    public void clearStoredCredentials() {
        setCachedSession(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object refreshCredentialsIfNeeded(com.stripe.proto.model.offline_mode.OfflineReader r18, com.stripe.proto.model.offline_mode.OfflineConnection r19, com.stripe.proto.model.offline_mode.OfflineLocation r20, kotlin.coroutines.Continuation<? super kotlin.Unit> r21) throws com.stripe.offlinemode.forwarding.ForwardingApiException, com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r21
            boolean r4 = r3 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.C03021
            if (r4 == 0) goto L1c
            r4 = r3
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1 r4 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.C03021) r4
            int r5 = r4.label
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r5 & r6
            if (r5 == 0) goto L1c
            int r3 = r4.label
            int r3 = r3 - r6
            r4.label = r3
            goto L21
        L1c:
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1 r4 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1
            r4.<init>(r3)
        L21:
            java.lang.Object r3 = r4.result
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r6 = r4.label
            r7 = 0
            r8 = 1
            if (r6 == 0) goto L4c
            if (r6 != r8) goto L44
            java.lang.Object r1 = r4.L$2
            com.stripe.proto.model.offline_mode.OfflineConnection r1 = (com.stripe.proto.model.offline_mode.OfflineConnection) r1
            java.lang.Object r2 = r4.L$1
            com.stripe.proto.model.offline_mode.OfflineReader r2 = (com.stripe.proto.model.offline_mode.OfflineReader) r2
            java.lang.Object r4 = r4.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient r4 = (com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient) r4
            kotlin.ResultKt.throwOnFailure(r3)
            r16 = r2
            r2 = r1
            r1 = r16
            goto L72
        L44:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L4c:
            kotlin.ResultKt.throwOnFailure(r3)
            boolean r3 = r17.isTokenRefreshRequired(r18, r19)
            if (r3 == 0) goto La5
            com.stripe.offlinemode.log.OfflineForwardingTraceLogger r3 = r0.logger
            java.lang.String r6 = "refreshing tokens"
            kotlin.Pair[] r9 = new kotlin.Pair[r7]
            r3.d(r6, r9)
            com.stripe.offlinemode.forwarding.OfflineCredentialsProvider r3 = r0.credentialsProvider
            r4.L$0 = r0
            r4.L$1 = r1
            r4.L$2 = r2
            r4.label = r8
            r6 = r20
            java.lang.Object r3 = r3.fetchOfflineCredentials(r1, r2, r6, r4)
            if (r3 != r5) goto L71
            return r5
        L71:
            r4 = r0
        L72:
            com.stripe.offlinemode.forwarding.OfflineCredentials r3 = (com.stripe.offlinemode.forwarding.OfflineCredentials) r3
            java.lang.String r5 = r3.getAccountId()
            java.lang.String r6 = r1.account_id
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L89
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$CachedSession r5 = new com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient$CachedSession
            r5.<init>(r1, r2, r3)
            r4.setCachedSession(r5)
            goto La5
        L89:
            com.stripe.stripeterminal.external.models.TerminalException r9 = new com.stripe.stripeterminal.external.models.TerminalException
            com.stripe.stripeterminal.external.models.TerminalErrorCode r10 = com.stripe.stripeterminal.external.models.TerminalErrorCode.ACCOUNT_ID_MISMATCH_WHILE_FORWARDING
            com.stripe.offlinemode.forwarding.AccountMismatchException r1 = new com.stripe.offlinemode.forwarding.AccountMismatchException
            r2 = 0
            r1.<init>(r2, r8, r2)
            r12 = r1
            java.lang.Throwable r12 = (java.lang.Throwable) r12
            r14 = 8
            r15 = 0
            java.lang.String r11 = "Invalid response for account"
            r13 = 0
            r9.<init>(r10, r11, r12, r13, r14, r15)
            com.stripe.offlinemode.forwarding.ForwardingApiException r1 = new com.stripe.offlinemode.forwarding.ForwardingApiException
            r1.<init>(r9, r7, r8, r7)
            throw r1
        La5:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient.refreshCredentialsIfNeeded(com.stripe.proto.model.offline_mode.OfflineReader, com.stripe.proto.model.offline_mode.OfflineConnection, com.stripe.proto.model.offline_mode.OfflineLocation, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<NameValuePair> offlineDetails() {
        List listEmptyList;
        List listListOf = CollectionsKt.listOf(new NameValuePair(OFFLINE_PAYMENT_TYPE_KEY, DEFERRED_PAYMENT_TYPE, null, 4, null));
        Location cachedLocation = this.locationHandler.getCachedLocation();
        if (cachedLocation != null) {
            listEmptyList = CollectionsKt.listOf((Object[]) new NameValuePair[]{new NameValuePair(OFFLINE_PAYMENT_LAT_KEY, String.valueOf(cachedLocation.getLatitude()), null, 4, null), new NameValuePair(OFFLINE_PAYMENT_LONG_KEY, String.valueOf(cachedLocation.getLongitude()), 0 == true ? 1 : 0, 4, null)});
        } else {
            listEmptyList = null;
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        return CollectionsKt.plus((Collection) listListOf, (Iterable) listEmptyList);
    }

    private final boolean isTokenRefreshRequired(OfflineReader reader, OfflineConnection connection) {
        CachedSession cachedSession = this.cachedSession;
        if (cachedSession == null) {
            return true;
        }
        OfflineReader reader2 = cachedSession.getReader();
        OfflineConnection connection2 = cachedSession.getConnection();
        return (Intrinsics.areEqual(reader.stripe_id, reader2.stripe_id) && Intrinsics.areEqual(reader.account_id, reader2.account_id) && Intrinsics.areEqual(reader.serial_number, reader2.serial_number) && Intrinsics.areEqual(connection.device_type, connection2.device_type) && Intrinsics.areEqual(connection.location, connection2.location) && Intrinsics.areEqual(connection.pos_device_info, connection2.pos_device_info) && Intrinsics.areEqual(connection.pos_version_info, connection2.pos_version_info) && Intrinsics.areEqual(connection.pos_device_info, connection2.pos_device_info) && Intrinsics.areEqual(connection.reader_device_info, connection2.reader_device_info) && connection.connection_type == connection2.connection_type) ? false : true;
    }
}
