.class public final Lcom/stripe/proto/api/rest/FilesApi;
.super Ljava/lang/Object;
.source "FilesApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/FilesApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/restclient/RestClient;",
        "uploadFile",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/api/rest/UploadFileResponse;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "message",
        "Lcom/stripe/proto/api/rest/UploadFileRequest;",
        "headers",
        "",
        "",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "codegen-terminalsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final lazyClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazyClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/proto/api/rest/FilesApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method

.method public static synthetic uploadFile$default(Lcom/stripe/proto/api/rest/FilesApi;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 28
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 29
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/rest/FilesApi;->uploadFile(Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClient()Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/stripe/proto/api/rest/FilesApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient;

    return-object v0
.end method

.method public final uploadFile(Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UploadFileRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/rest/UploadFileResponse;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/stripe/proto/api/rest/UploadFileRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UploadFileRequestExt;

    new-instance v2, Lokhttp3/MultipartBody$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/rest/UploadFileRequestExt;->addUploadFileRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/proto/api/rest/FilesApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 41
    move-object v8, v0

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/rest/UploadFileResponse;

    .line 43
    new-instance v12, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    check-cast v10, Lcom/squareup/wire/Message;

    .line 35
    const-string v3, "FilesApiService"

    const-string v4, "uploadFile"

    const-string v6, "v1/files"

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingMultipartPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method
