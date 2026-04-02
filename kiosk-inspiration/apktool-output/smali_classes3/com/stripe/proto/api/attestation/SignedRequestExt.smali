.class public final Lcom/stripe/proto/api/attestation/SignedRequestExt;
.super Ljava/lang/Object;
.source "SignedRequestExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/SignedRequestExt;",
        "",
        "()V",
        "addSignedRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/attestation/SignedRequest;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/attestation/SignedRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/attestation/SignedRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/attestation/SignedRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/attestation/SignedRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/SignedRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addSignedRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    if-eqz v0, :cond_0

    .line 29
    sget-object v1, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;

    const-string v2, "bind_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->addBindDeviceRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 31
    :cond_0
    const-string v0, "nonce"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->nonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 32
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

    if-eqz v0, :cond_1

    .line 33
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;

    const-string v2, "attest_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->addAttestDeviceRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/AttestDeviceRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 35
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;

    if-eqz p2, :cond_2

    .line 36
    sget-object v0, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;

    const-string v1, "rotate_key_request"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->addRotateKeyRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/RotateKeyRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addSignedRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    if-eqz v0, :cond_0

    .line 15
    sget-object v1, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;

    const-string v2, "bind_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->addBindDeviceRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 17
    :cond_0
    const-string v0, "nonce"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->nonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 18
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

    if-eqz v0, :cond_1

    .line 19
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;

    const-string v2, "attest_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->addAttestDeviceRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/AttestDeviceRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 21
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;

    if-eqz p2, :cond_2

    .line 22
    sget-object v0, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;

    const-string v1, "rotate_key_request"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->addRotateKeyRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/RotateKeyRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addSignedRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->bind_device_request:Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;

    const-string v2, "bind_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->addBindDeviceRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 45
    :cond_0
    const-string v0, "nonce"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->nonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 46
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->attest_device_request:Lcom/stripe/proto/api/attestation/AttestDeviceRequest;

    if-eqz v0, :cond_1

    .line 47
    sget-object v1, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;

    const-string v2, "attest_device_request"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/attestation/AttestDeviceRequestExt;->addAttestDeviceRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/AttestDeviceRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 49
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/SignedRequest;->rotate_key_request:Lcom/stripe/proto/api/attestation/RotateKeyRequest;

    if-eqz p2, :cond_2

    .line 50
    sget-object v0, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;

    const-string v1, "rotate_key_request"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;->addRotateKeyRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/RotateKeyRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method
