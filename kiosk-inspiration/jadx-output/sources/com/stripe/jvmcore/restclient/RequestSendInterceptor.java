package com.stripe.jvmcore.restclient;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.squareup.moshi.Moshi;
import com.squareup.wire.Message;
import com.stripe.jvmcore.redaction.CustomMessageRedactor;
import com.stripe.jvmcore.redaction.ResourceIdRedactor;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.model.rest.StatusCode;
import java.io.IOException;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* JADX INFO: compiled from: RequestSendInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0088\u0001\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00120\u0010\"\u001c\b\u0000\u0010\u0013*\u0016\u0012\u0004\u0012\u0002H\u0013\u0012\u0002\b\u00030\u0014j\b\u0012\u0004\u0012\u0002H\u0013`\u0015\"\u001c\b\u0001\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\b\u00030\u0014j\b\u0012\u0004\u0012\u0002H\u0011`\u0015\"\u001c\b\u0002\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u0014j\b\u0012\u0004\u0012\u0002H\u0012`\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00120\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/stripe/jvmcore/restclient/RequestSendInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "client", "Lokhttp3/OkHttpClient;", "moshi", "Lcom/squareup/moshi/Moshi;", "customMessageRedactor", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lokhttp3/OkHttpClient;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)V", "name", "", "getName", "()Ljava/lang/String;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestSendInterceptor extends RestInterceptor {
    private final OkHttpClient client;
    private final CustomMessageRedactor customMessageRedactor;
    private final LogWriter logWriter;
    private final Moshi moshi;
    private final String name;

    public RequestSendInterceptor(OkHttpClient client, Moshi moshi, CustomMessageRedactor customMessageRedactor, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.client = client;
        this.moshi = moshi;
        this.customMessageRedactor = customMessageRedactor;
        this.logWriter = logWriter;
        this.name = "requestSendInterceptor";
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        OkHttpClient okHttpClientBuild;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Long timeoutMs = chain.getRestConfig().getTimeoutMs();
        if (timeoutMs == null) {
            okHttpClientBuild = this.client;
        } else {
            okHttpClientBuild = this.client.newBuilder().connectTimeout(timeoutMs.longValue(), TimeUnit.MILLISECONDS).readTimeout(timeoutMs.longValue(), TimeUnit.MILLISECONDS).callTimeout(timeoutMs.longValue(), TimeUnit.MILLISECONDS).build();
        }
        try {
            Response responseExecute = FirebasePerfOkHttpClient.execute(okHttpClientBuild.newCall(chain.getRequest()));
            try {
                RestResponse<Rsp, Err> restResponse = RestResponse.INSTANCE.toRestResponse(responseExecute, this.moshi, chain.responseProtoType(), chain.error(), this.customMessageRedactor, this.logWriter);
                CloseableKt.closeFinally(responseExecute, null);
                return restResponse;
            } finally {
            }
        } catch (IOException e) {
            this.logWriter.e("RequestSendInterceptor", "IOException in REST Call: " + e.getMessage(), e);
            return new RestResponse.ServerError(chain.error(), StatusCode.HTTP_ERROR_UNKNOWN_STATE, new HttpUrl.Builder().scheme(chain.getRequest().url().scheme()).host(chain.getRequest().url().host()).addPathSegments(StringsKt.removePrefix(new ResourceIdRedactor(chain.getRequest().url().encodedPath()).redact(), (CharSequence) RemoteSettings.FORWARD_SLASH_STRING)).build().getUrl(), null, this.moshi, this.customMessageRedactor, new TreeMap());
        }
    }
}
