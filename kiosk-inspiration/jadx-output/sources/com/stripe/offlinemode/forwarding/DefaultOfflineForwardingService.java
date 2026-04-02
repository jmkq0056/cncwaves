package com.stripe.offlinemode.forwarding;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.Mainland;
import com.stripe.jvmcore.environment.EnvironmentKt;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.proto.api.rest.RetrieveSetupIntentRequest;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.rest.UserAgent;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.FormBody;
import okhttp3.Headers;

/* JADX INFO: compiled from: DefaultOfflineForwardingService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002Be\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u000ej\u0002`\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J\u008c\u0001\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\"0 \"\u001c\b\u0000\u0010!*\u0016\u0012\u0004\u0012\u0002H!\u0012\u0002\b\u00030#j\b\u0012\u0004\u0012\u0002H!`$2\u0006\u0010%\u001a\u00020&2\u0018\u0010'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0)0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0+2\u0006\u0010,\u001a\u00020-2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002H!0/2\u0006\u00100\u001a\u000201H\u0096@¢\u0006\u0002\u00102J*\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\"0 2\u0006\u00105\u001a\u0002062\u0006\u00100\u001a\u000201H\u0096@¢\u0006\u0002\u00107J\"\u00108\u001a\u0002092\u0018\u0010:\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0)0(H\u0002R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c¨\u0006;"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;", "Lcom/stripe/offlinemode/forwarding/OfflineRestService;", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;", "moshi", "Lcom/squareup/moshi/Moshi;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "baseUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineStageLogger;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "forward", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", BbposAdapter.ENDPOINT_TAG_KEY, "", "body", "", "Lkotlin/Pair;", "headers", "", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "entityType", "Ljava/lang/Class;", "traceContext", "Lcom/stripe/loggingmodels/Trace$Context;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/Class;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "request", "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;", "(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toFormBody", "Lokhttp3/FormBody;", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineForwardingService extends OfflineRestService implements OfflineForwardingService {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultOfflineForwardingService.class, "userAgent", "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;", 0))};

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final UserAgentProvider userAgent;

    /* JADX INFO: compiled from: DefaultOfflineForwardingService.kt */
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public DefaultOfflineForwardingService(Moshi moshi, OkHttpClientProvider okHttpClientProvider, @Mainland RestClient.BaseUrlProvider baseUrlProvider, OfflineConfigHelper offlineConfigHelper, UserAgentProvider userAgentProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> logger, TraceLogger traceLogger, LogWriter logWriter) {
        super(moshi, baseUrlProvider, okHttpClientProvider, offlineConfigHelper, logger, traceLogger, logWriter);
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.userAgent = userAgentProvider;
    }

    private final UserAgent getUserAgent() {
        return this.userAgent.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingService
    public <Rsp extends Message<Rsp, ?>> Object forward(String str, List<Pair<String, String>> list, Map<String, String> map, OfflineApiRequest.ApiRequestType apiRequestType, Class<Rsp> cls, Trace.Context context, Continuation<? super RestResponse<Rsp, ErrorWrapper>> continuation) {
        StageScope.RequestType requestType;
        Headers headersOf = Headers.INSTANCE.of(map);
        FormBody formBody = toFormBody(list);
        ErrorWrapper errorWrapper = new ErrorWrapper(null, null, null, 7, null);
        int i = WhenMappings.$EnumSwitchMapping$0[apiRequestType.ordinal()];
        if (i == 1) {
            requestType = StageScope.RequestType.CREATE_PAYMENT_INTENT;
        } else if (i == 2) {
            requestType = StageScope.RequestType.CREATE_SETUP_INTENT;
        } else if (i == 3) {
            requestType = StageScope.RequestType.CONFIRM_PAYMENT_INTENT;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            requestType = StageScope.RequestType.CONFIRM_SETUP_INTENT;
        }
        return post(headersOf, formBody, str, errorWrapper, cls, null, requestType, context, continuation);
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineForwardingService
    public Object retrieveSetupIntent(RetrieveSetupIntentRequest retrieveSetupIntentRequest, Trace.Context context, Continuation<? super RestResponse<SetupIntent, ErrorWrapper>> continuation) {
        Headers headersOf = Headers.INSTANCE.of(EnvironmentKt.toRequestHeaders(getUserAgent(), true));
        String str = "v1/setup_intents/" + retrieveSetupIntentRequest.id;
        ErrorWrapper errorWrapper = new ErrorWrapper(null, null, null, 7, null);
        List<String> list = retrieveSetupIntentRequest.expand;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(TuplesKt.to("expand[]", (String) it.next()));
        }
        return get(headersOf, arrayList, str, errorWrapper, SetupIntent.class, null, StageScope.RequestType.RETRIEVE_SETUP_INTENT, context, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final FormBody toFormBody(List<Pair<String, String>> entries) {
        FormBody.Builder builder = new FormBody.Builder(null, 1, 0 == true ? 1 : 0);
        Iterator<T> it = entries.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            builder.add((String) pair.component1(), (String) pair.component2());
        }
        return builder.build();
    }
}
