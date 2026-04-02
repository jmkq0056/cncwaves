package com.stripe.proto.api.attestation;

import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestConfig;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.proto.model.attestation.AttestationError;
import dagger.Lazy;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;

/* JADX INFO: compiled from: AttestationApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/restclient/RestClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/restclient/RestClient;", "attest", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/api/attestation/AttestationResponse;", "Lcom/stripe/proto/model/attestation/AttestationError;", "message", "Lcom/stripe/proto/api/attestation/AttestationRequest;", "headers", "", "", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "bind", "rotateKey", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationApi {
    private final Lazy<? extends RestClient> lazyClient;

    public AttestationApi(Lazy<? extends RestClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final RestClient getClient() {
        RestClient restClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(restClient, "get(...)");
        return restClient;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse bind$default(AttestationApi attestationApi, AttestationRequest attestationRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return attestationApi.bind(attestationRequest, map, restConfig);
    }

    public final RestResponse<AttestationResponse, AttestationError> bind(AttestationRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingPost("AttestationService", "bind", AttestationRequestExt.INSTANCE.addAttestationRequest(new FormBody.Builder(null, 1, null), message, ""), "v1/terminal/attestation/bind", headers, message, AttestationResponse.class, new AttestationError(null, null, 3, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse attest$default(AttestationApi attestationApi, AttestationRequest attestationRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return attestationApi.attest(attestationRequest, map, restConfig);
    }

    public final RestResponse<AttestationResponse, AttestationError> attest(AttestationRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/terminal/attestation/" + message.id + "/attest";
        AttestationRequest attestationRequestCopy$default = AttestationRequest.copy$default(message, null, null, null, null, 11, null);
        return getClient().blockingPost("AttestationService", "attest", AttestationRequestExt.INSTANCE.addAttestationRequest(new FormBody.Builder(null, 1, null), attestationRequestCopy$default, ""), str, headers, attestationRequestCopy$default, AttestationResponse.class, new AttestationError(null, null, 3, null), restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse rotateKey$default(AttestationApi attestationApi, AttestationRequest attestationRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return attestationApi.rotateKey(attestationRequest, map, restConfig);
    }

    public final RestResponse<AttestationResponse, AttestationError> rotateKey(AttestationRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        String str = "v1/terminal/attestation/" + message.id + "/rotate_key";
        AttestationRequest attestationRequestCopy$default = AttestationRequest.copy$default(message, null, null, null, null, 11, null);
        return getClient().blockingPost("AttestationService", "rotateKey", AttestationRequestExt.INSTANCE.addAttestationRequest(new FormBody.Builder(null, 1, null), attestationRequestCopy$default, ""), str, headers, attestationRequestCopy$default, AttestationResponse.class, new AttestationError(null, null, 3, null), restConfig);
    }
}
