.class public final Lcom/stripe/proto/model/attestation/AttestationErrorExt;
.super Ljava/lang/Object;
.source "AttestationErrorExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/AttestationErrorExt;",
        "",
        "()V",
        "addAttestationError",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/model/attestation/AttestationError;",
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
.field public static final INSTANCE:Lcom/stripe/proto/model/attestation/AttestationErrorExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/model/attestation/AttestationErrorExt;

    invoke-direct {v0}, Lcom/stripe/proto/model/attestation/AttestationErrorExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/model/attestation/AttestationErrorExt;->INSTANCE:Lcom/stripe/proto/model/attestation/AttestationErrorExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAttestationError(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/attestation/AttestationError;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p2, p2, Lcom/stripe/proto/model/attestation/AttestationError;->error:Lcom/stripe/proto/model/attestation/InnerError;

    if-eqz p2, :cond_0

    .line 20
    sget-object v0, Lcom/stripe/proto/model/attestation/InnerErrorExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InnerErrorExt;

    const-string v1, "error"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/InnerErrorExt;->addInnerError(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/attestation/InnerError;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addAttestationError(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/attestation/AttestationError;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p2, p2, Lcom/stripe/proto/model/attestation/AttestationError;->error:Lcom/stripe/proto/model/attestation/InnerError;

    if-eqz p2, :cond_0

    .line 13
    sget-object v0, Lcom/stripe/proto/model/attestation/InnerErrorExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InnerErrorExt;

    const-string v1, "error"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/InnerErrorExt;->addInnerError(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/attestation/InnerError;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addAttestationError(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/attestation/AttestationError;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p2, p2, Lcom/stripe/proto/model/attestation/AttestationError;->error:Lcom/stripe/proto/model/attestation/InnerError;

    if-eqz p2, :cond_0

    .line 27
    sget-object v0, Lcom/stripe/proto/model/attestation/InnerErrorExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InnerErrorExt;

    const-string v1, "error"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/InnerErrorExt;->addInnerError(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/attestation/InnerError;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method
