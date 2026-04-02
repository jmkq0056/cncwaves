.class public final Lcom/stripe/proto/api/rest/UploadFileRequestExt;
.super Ljava/lang/Object;
.source "UploadFileRequestExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UploadFileRequestExt;",
        "",
        "()V",
        "addPurpose",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addUploadFileRequest",
        "Lcom/stripe/proto/api/rest/UploadFileRequest;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/UploadFileRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/UploadFileRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/UploadFileRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/UploadFileRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UploadFileRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPurpose(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addPurpose(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addPurpose(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addUploadFileRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->file_:Lcom/stripe/proto/api/rest/MultiPartFormData;

    if-eqz v0, :cond_0

    .line 29
    sget-object v1, Lcom/stripe/proto/api/rest/MultiPartFormDataExt;->INSTANCE:Lcom/stripe/proto/api/rest/MultiPartFormDataExt;

    const-string v2, "file"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/MultiPartFormDataExt;->addMultiPartFormData(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/MultiPartFormData;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 31
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->purpose:Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;

    if-eqz p2, :cond_1

    .line 32
    const-string v0, "purpose"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addUploadFileRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->file_:Lcom/stripe/proto/api/rest/MultiPartFormData;

    if-eqz v0, :cond_0

    .line 17
    sget-object v1, Lcom/stripe/proto/api/rest/MultiPartFormDataExt;->INSTANCE:Lcom/stripe/proto/api/rest/MultiPartFormDataExt;

    const-string v2, "file"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/MultiPartFormDataExt;->addMultiPartFormData(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/MultiPartFormData;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 19
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->purpose:Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;

    if-eqz p2, :cond_1

    .line 20
    const-string v0, "purpose"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addUploadFileRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UploadFileRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->file_:Lcom/stripe/proto/api/rest/MultiPartFormData;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, v0, Lcom/stripe/proto/api/rest/MultiPartFormData;->file_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 42
    iget-object v0, v0, Lcom/stripe/proto/api/rest/MultiPartFormData;->file_data:Lokio/ByteString;

    if-eqz v0, :cond_0

    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-static {v1}, Lcom/stripe/wirecrpc/RestMessageHelperKt;->getMimeTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lokhttp3/RequestBody$Companion;->create(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    const-string v2, "file"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 47
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UploadFileRequest;->purpose:Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;

    if-eqz p2, :cond_1

    .line 48
    const-string v0, "purpose"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method
