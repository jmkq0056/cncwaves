package com.stripe.offlinemode.forwarding;

import com.squareup.wire.Message;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.Trace;
import com.stripe.proto.api.rest.RetrieveSetupIntentRequest;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OfflineForwardingService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u008c\u0001\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00050\u0003\"\u001c\b\u0000\u0010\u0004*\u0016\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0006j\b\u0012\u0004\u0012\u0002H\u0004`\u00072\u0006\u0010\b\u001a\u00020\t2\u0018\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\f0\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00122\u0006\u0010\u0013\u001a\u00020\u0014H¦@¢\u0006\u0002\u0010\u0015J*\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u0014H¦@¢\u0006\u0002\u0010\u001aø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;", "Lcom/stripe/offlinemode/forwarding/AuthTokenListener;", "forward", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", BbposAdapter.ENDPOINT_TAG_KEY, "", "body", "", "Lkotlin/Pair;", "headers", "", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "entityType", "Ljava/lang/Class;", "traceContext", "Lcom/stripe/loggingmodels/Trace$Context;", "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/Class;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "request", "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;", "(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineForwardingService extends AuthTokenListener {
    <Rsp extends Message<Rsp, ?>> Object forward(String str, List<Pair<String, String>> list, Map<String, String> map, OfflineApiRequest.ApiRequestType apiRequestType, Class<Rsp> cls, Trace.Context context, Continuation<? super RestResponse<Rsp, ErrorWrapper>> continuation) throws TerminalException;

    Object retrieveSetupIntent(RetrieveSetupIntentRequest retrieveSetupIntentRequest, Trace.Context context, Continuation<? super RestResponse<SetupIntent, ErrorWrapper>> continuation) throws TerminalException;
}
