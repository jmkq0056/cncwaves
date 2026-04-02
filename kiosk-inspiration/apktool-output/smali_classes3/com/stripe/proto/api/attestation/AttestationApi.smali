.class public final Lcom/stripe/proto/api/attestation/AttestationApi;
.super Ljava/lang/Object;
.source "AttestationApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J:\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J:\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/AttestationApi;",
        "",
        "lazyClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/restclient/RestClient;",
        "(Ldagger/Lazy;)V",
        "client",
        "getClient",
        "()Lcom/stripe/jvmcore/restclient/RestClient;",
        "attest",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/api/attestation/AttestationResponse;",
        "Lcom/stripe/proto/model/attestation/AttestationError;",
        "message",
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "headers",
        "",
        "",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "bind",
        "rotateKey",
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
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationApi;->lazyClient:Ldagger/Lazy;

    return-void
.end method

.method public static synthetic attest$default(Lcom/stripe/proto/api/attestation/AttestationApi;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 54
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 55
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/AttestationApi;->attest(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic bind$default(Lcom/stripe/proto/api/attestation/AttestationApi;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/AttestationApi;->bind(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rotateKey$default(Lcom/stripe/proto/api/attestation/AttestationApi;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 81
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 82
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 79
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/AttestationApi;->rotateKey(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final attest(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/attestation/AttestationRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/attestation/AttestationResponse;",
            "Lcom/stripe/proto/model/attestation/AttestationError;",
            ">;"
        }
    .end annotation

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/terminal/attestation/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/attest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/attestation/AttestationRequest;->copy$default(Lcom/stripe/proto/api/attestation/AttestationRequest;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/attestation/AttestationRequest;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestationRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v3, v4}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->addAttestationRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 62
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 68
    check-cast v0, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/attestation/AttestationResponse;

    .line 70
    new-instance v1, Lcom/stripe/proto/model/attestation/AttestationError;

    const/4 v3, 0x3

    invoke-direct {v1, v4, v4, v3, v4}, Lcom/stripe/proto/model/attestation/AttestationError;-><init>(Lcom/stripe/proto/model/attestation/InnerError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v1

    check-cast v10, Lcom/squareup/wire/Message;

    .line 62
    const-string v3, "AttestationService"

    const-string v4, "attest"

    move-object v7, p2

    move-object v11, p3

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bind(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/attestation/AttestationRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/attestation/AttestationResponse;",
            "Lcom/stripe/proto/model/attestation/AttestationError;",
            ">;"
        }
    .end annotation

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestationRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, p1, v3}, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->addAttestationRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 41
    move-object v8, p1

    check-cast v8, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/attestation/AttestationResponse;

    .line 43
    new-instance v0, Lcom/stripe/proto/model/attestation/AttestationError;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v4, v1, v4}, Lcom/stripe/proto/model/attestation/AttestationError;-><init>(Lcom/stripe/proto/model/attestation/InnerError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v0

    check-cast v10, Lcom/squareup/wire/Message;

    .line 35
    const-string v3, "AttestationService"

    const-string v4, "bind"

    const-string v6, "v1/terminal/attestation/bind"

    move-object v7, p2

    move-object v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getClient()Lcom/stripe/jvmcore/restclient/RestClient;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/stripe/proto/api/attestation/AttestationApi;->lazyClient:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestClient;

    return-object v0
.end method

.method public final rotateKey(Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/attestation/AttestationRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/api/attestation/AttestationResponse;",
            "Lcom/stripe/proto/model/attestation/AttestationError;",
            ">;"
        }
    .end annotation

    const-string v1, "message"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v1, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v1/terminal/attestation/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rotate_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 86
    invoke-static/range {v0 .. v6}, Lcom/stripe/proto/api/attestation/AttestationRequest;->copy$default(Lcom/stripe/proto/api/attestation/AttestationRequest;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/attestation/AttestationRequest;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestationRequestExt;

    new-instance v2, Lokhttp3/FormBody$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v3, v4}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->addAttestationRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationApi;->getClient()Lcom/stripe/jvmcore/restclient/RestClient;

    move-result-object v2

    .line 95
    check-cast v0, Lcom/squareup/wire/Message;

    const-class v9, Lcom/stripe/proto/api/attestation/AttestationResponse;

    .line 97
    new-instance v1, Lcom/stripe/proto/model/attestation/AttestationError;

    const/4 v3, 0x3

    invoke-direct {v1, v4, v4, v3, v4}, Lcom/stripe/proto/model/attestation/AttestationError;-><init>(Lcom/stripe/proto/model/attestation/InnerError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v1

    check-cast v10, Lcom/squareup/wire/Message;

    .line 89
    const-string v3, "AttestationService"

    const-string v4, "rotateKey"

    move-object v7, p2

    move-object v11, p3

    move-object v6, v8

    move-object v8, v0

    invoke-virtual/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/RestClient;->blockingPost(Ljava/lang/String;Ljava/lang/String;Lokhttp3/FormBody$Builder;Ljava/lang/String;Ljava/util/Map;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    return-object v0
.end method
