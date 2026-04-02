package com.stripe.proto.api.rest;

import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestConfig;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import dagger.Lazy;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: FilesApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\b\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/rest/FilesApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/restclient/RestClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/restclient/RestClient;", "uploadFile", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/api/rest/UploadFileResponse;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "message", "Lcom/stripe/proto/api/rest/UploadFileRequest;", "headers", "", "", "restConfig", "Lcom/stripe/jvmcore/restclient/RestConfig;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesApi {
    private final Lazy<? extends RestClient> lazyClient;

    public FilesApi(Lazy<? extends RestClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final RestClient getClient() {
        RestClient restClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(restClient, "get(...)");
        return restClient;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RestResponse uploadFile$default(FilesApi filesApi, UploadFileRequest uploadFileRequest, Map map, RestConfig restConfig, int i, Object obj) {
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            restConfig = RestConfig.INSTANCE;
        }
        return filesApi.uploadFile(uploadFileRequest, map, restConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RestResponse<UploadFileResponse, ErrorWrapper> uploadFile(UploadFileRequest message, Map<String, String> headers, RestConfig restConfig) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(restConfig, "restConfig");
        return getClient().blockingMultipartPost("FilesApiService", "uploadFile", UploadFileRequestExt.INSTANCE.addUploadFileRequest(new MultipartBody.Builder(null, 1, 0 == true ? 1 : 0), message, "").setType(MultipartBody.FORM), "v1/files", headers, message, UploadFileResponse.class, new ErrorWrapper(null, null, null, 7, null), restConfig);
    }
}
