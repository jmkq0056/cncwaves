.class public final Lcom/stripe/proto/api/attestation/AttestationRequestExt;
.super Ljava/lang/Object;
.source "AttestationRequestExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/AttestationRequestExt;",
        "",
        "()V",
        "addAttestationRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/proto/api/attestation/AttestationRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/attestation/AttestationRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/attestation/AttestationRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/attestation/AttestationRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestationRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAttestationRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    if-eqz v0, :cond_0

    .line 24
    sget-object v1, Lcom/stripe/proto/api/attestation/SignedRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/SignedRequestExt;

    const-string v2, "signed_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/SignedRequestExt;->addSignedRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 26
    :cond_0
    const-string v0, "signature"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 27
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 28
    const-string v0, "id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addAttestationRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    if-eqz v0, :cond_0

    .line 13
    sget-object v1, Lcom/stripe/proto/api/attestation/SignedRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/SignedRequestExt;

    const-string v2, "signed_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/SignedRequestExt;->addSignedRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 15
    :cond_0
    const-string v0, "signature"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 16
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 17
    const-string v0, "id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addAttestationRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/AttestationRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    if-eqz v0, :cond_0

    .line 35
    sget-object v1, Lcom/stripe/proto/api/attestation/SignedRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/SignedRequestExt;

    const-string v2, "signed_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/SignedRequestExt;->addSignedRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 37
    :cond_0
    const-string v0, "signature"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 38
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 39
    const-string v0, "id"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method
