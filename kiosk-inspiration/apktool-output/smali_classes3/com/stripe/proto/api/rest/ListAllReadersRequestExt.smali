.class public final Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;
.super Ljava/lang/Object;
.source "ListAllReadersRequestExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListAllReadersRequestExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAllReadersRequestExt.kt\ncom/stripe/proto/api/rest/ListAllReadersRequestExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1855#2,2:95\n1855#2,2:97\n1855#2,2:99\n*S KotlinDebug\n*F\n+ 1 ListAllReadersRequestExt.kt\ncom/stripe/proto/api/rest/ListAllReadersRequestExt\n*L\n17#1:95,2\n45#1:97,2\n73#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;",
        "",
        "()V",
        "addListAllReadersRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListAllReadersRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 42
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 97
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->starting_after:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    const-string v1, "starting_after"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 51
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->serial_number:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 52
    const-string v1, "serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 54
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 55
    const-string v1, "compatible_sdk_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 57
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_version:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 58
    const-string v1, "compatible_sdk_version"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 60
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->limit:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 61
    const-string v0, "limit"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_7
    return-object p1
.end method

.method public final addListAllReadersRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 14
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 15
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 17
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 95
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->starting_after:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21
    const-string v1, "starting_after"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 23
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->serial_number:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 24
    const-string v1, "serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 26
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 27
    const-string v1, "compatible_sdk_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 29
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_version:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 30
    const-string v1, "compatible_sdk_version"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 32
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->limit:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 33
    const-string v0, "limit"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_7
    return-object p1
.end method

.method public final addListAllReadersRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 70
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 73
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->starting_after:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 77
    const-string v1, "starting_after"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 79
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->serial_number:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 80
    const-string v1, "serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 82
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_type:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 83
    const-string v1, "compatible_sdk_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 85
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->compatible_sdk_version:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 86
    const-string v1, "compatible_sdk_version"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 88
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ListAllReadersRequest;->limit:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 89
    const-string v0, "limit"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_7
    return-object p1
.end method
