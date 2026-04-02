.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;
.super Ljava/lang/Object;
.source "UpdateSdiActionRequestExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateSdiActionRequestExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateSdiActionRequestExt.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequestExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,522:1\n1864#2,3:523\n1864#2,3:526\n1864#2,3:529\n1864#2,3:532\n1864#2,3:535\n1864#2,3:538\n1864#2,3:541\n1864#2,3:544\n1864#2,3:547\n*S KotlinDebug\n*F\n+ 1 UpdateSdiActionRequestExt.kt\ncom/stripe/proto/api/rest/UpdateSdiActionRequestExt\n*L\n46#1:523,3\n67#1:526,3\n102#1:529,3\n212#1:532,3\n233#1:535,3\n268#1:538,3\n378#1:541,3\n399#1:544,3\n434#1:547,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0019\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0019\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0019\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001d\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001d\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001d\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u001f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010!\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010!\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010!\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010#\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010#\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010#\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010%\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010%\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010%\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;",
        "",
        "()V",
        "addChoice",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "addCustomText",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;",
        "addEmail",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
        "addInput",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "addInputType",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;",
        "addNumeric",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;",
        "addPhone",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
        "addSelection",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
        "addSignature",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;",
        "addStyle",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;",
        "addSurcharge",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;",
        "addText",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;",
        "addToggle",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
        "addUpdateSdiActionRequest",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "addValue",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addChoice(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->style:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;

    if-eqz v0, :cond_0

    .line 276
    const-string v1, "style"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 278
    :cond_0
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->value_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    return-object p1
.end method

.method public final addChoice(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->style:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;

    if-eqz v0, :cond_0

    .line 110
    const-string v1, "style"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 112
    :cond_0
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->value_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    return-object p1
.end method

.method public final addChoice(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->style:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;

    if-eqz v0, :cond_0

    .line 442
    const-string v1, "style"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 444
    :cond_0
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;->value_:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    return-object p1
.end method

.method public final addCustomText(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    const-string v0, "title"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 314
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 315
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 317
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->submit_button:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 318
    const-string v1, "submit_button"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 320
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->skip_button:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 321
    const-string v0, "skip_button"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addCustomText(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const-string v0, "title"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 148
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 151
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->submit_button:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    const-string v1, "submit_button"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 154
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->skip_button:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 155
    const-string v0, "skip_button"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addCustomText(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    const-string v0, "title"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 480
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 481
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 483
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->submit_button:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 484
    const-string v1, "submit_button"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 486
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;->skip_button:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 487
    const-string v0, "skip_button"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addEmail(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 286
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addEmail(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 120
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addEmail(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 452
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addInput(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eqz v0, :cond_0

    .line 226
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 228
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v0, :cond_1

    .line 229
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "custom_text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addCustomText(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 231
    :cond_1
    const-string v0, "required"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 232
    const-string v0, "skipped"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 233
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 536
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;

    .line 234
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggles"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addToggle(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move v1, v3

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v0, :cond_4

    .line 237
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "selection"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSelection(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 239
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v0, :cond_5

    .line 240
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "signature"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSignature(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 242
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v0, :cond_6

    .line 243
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "email"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addEmail(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 245
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v0, :cond_7

    .line 246
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addText(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 248
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v0, :cond_8

    .line 249
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "numeric"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addNumeric(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 251
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz p2, :cond_9

    .line 252
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "phone"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addPhone(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_9
    return-object p1
.end method

.method public final addInput(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eqz v0, :cond_0

    .line 60
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 62
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v0, :cond_1

    .line 63
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "custom_text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addCustomText(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 65
    :cond_1
    const-string v0, "required"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 66
    const-string v0, "skipped"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 67
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 527
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;

    .line 68
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggles"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addToggle(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move v1, v3

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v0, :cond_4

    .line 71
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "selection"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSelection(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 73
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v0, :cond_5

    .line 74
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "signature"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSignature(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 76
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v0, :cond_6

    .line 77
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "email"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addEmail(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 79
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v0, :cond_7

    .line 80
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addText(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 82
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v0, :cond_8

    .line 83
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "numeric"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addNumeric(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 85
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz p2, :cond_9

    .line 86
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "phone"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addPhone(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_9
    return-object p1
.end method

.method public final addInput(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    if-eqz v0, :cond_0

    .line 392
    const-string v1, "type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 394
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    if-eqz v0, :cond_1

    .line 395
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "custom_text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addCustomText(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 397
    :cond_1
    const-string v0, "required"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->required:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 398
    const-string v0, "skipped"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->skipped:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 399
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->toggles:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 545
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;

    .line 400
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggles"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addToggle(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move v1, v3

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    if-eqz v0, :cond_4

    .line 403
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "selection"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSelection(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 405
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    if-eqz v0, :cond_5

    .line 406
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "signature"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSignature(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 408
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    if-eqz v0, :cond_6

    .line 409
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "email"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addEmail(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 411
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    if-eqz v0, :cond_7

    .line 412
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "text"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addText(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 414
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    if-eqz v0, :cond_8

    .line 415
    sget-object v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v2, "numeric"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addNumeric(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 417
    :cond_8
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    if-eqz p2, :cond_9

    .line 418
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "phone"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addPhone(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_9
    return-object p1
.end method

.method public final addInputType(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addInputType(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addInputType(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addNumeric(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 300
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addNumeric(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 134
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addNumeric(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 466
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addPhone(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 307
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addPhone(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 141
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addPhone(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 473
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addSelection(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    const-string v1, "value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 268
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 539
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;

    .line 269
    sget-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "choices"

    invoke-static {v5, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v1, v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addChoice(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move v0, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addSelection(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    const-string v1, "value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 102
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 530
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;

    .line 103
    sget-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "choices"

    invoke-static {v5, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v1, v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addChoice(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move v0, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addSelection(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->value_:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    const-string v1, "value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 434
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;->choices:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 548
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;

    .line 435
    sget-object v3, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "choices"

    invoke-static {v5, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v1, v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addChoice(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move v0, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final addSignature(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 259
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addSignature(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 93
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addSignature(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 425
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addStyle(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addStyle(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addStyle(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 348
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 350
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 351
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 182
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 184
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 185
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_1
    return-object p1
.end method

.method public final addSurcharge(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->maximum_amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 514
    const-string v2, "maximum_amount"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 516
    :cond_0
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;->status:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 517
    const-string v0, "status"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_1
    return-object p1
.end method

.method public final addText(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 293
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addText(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 127
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    return-object p1
.end method

.method public final addText(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;->value_:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 459
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_0
    return-object p1
.end method

.method public final addToggle(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    const-string v1, "title"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 332
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 333
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 335
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz v0, :cond_2

    .line 336
    const-string v1, "default_value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 338
    :cond_2
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz p2, :cond_3

    .line 339
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_3
    return-object p1
.end method

.method public final addToggle(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    const-string v1, "title"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 166
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 169
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz v0, :cond_2

    .line 170
    const-string v1, "default_value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 172
    :cond_2
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz p2, :cond_3

    .line 173
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_3
    return-object p1
.end method

.method public final addToggle(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 496
    const-string v1, "title"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 498
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 499
    const-string v1, "description"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 501
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->default_value:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz v0, :cond_2

    .line 502
    const-string v1, "default_value"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 504
    :cond_2
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;->value_:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;

    if-eqz p2, :cond_3

    .line 505
    const-string v0, "value"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_3
    return-object p1
.end method

.method public final addUpdateSdiActionRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 194
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 195
    const-string v1, "status"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 197
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 198
    const-string v1, "failure_code"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 200
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 201
    const-string v1, "failure_message"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 203
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 204
    const-string v1, "generated_card"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 206
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 207
    const-string v1, "refund_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 209
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 210
    const-string v1, "payment_method_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 212
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 533
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    .line 213
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputs"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addInput(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move v1, v3

    goto :goto_0

    .line 215
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 216
    const-string v1, "routing_info"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 218
    :cond_9
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    if-eqz p2, :cond_a

    .line 219
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "surcharge"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSurcharge(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_a
    return-object p1
.end method

.method public final addUpdateSdiActionRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 28
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    const-string v1, "status"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 31
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    const-string v1, "failure_code"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 34
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 35
    const-string v1, "failure_message"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 37
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 38
    const-string v1, "generated_card"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 40
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 41
    const-string v1, "refund_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 43
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 44
    const-string v1, "payment_method_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 46
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 524
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    .line 47
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputs"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addInput(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move v1, v3

    goto :goto_0

    .line 49
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 50
    const-string v1, "routing_info"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 52
    :cond_9
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    if-eqz p2, :cond_a

    .line 53
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "surcharge"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSurcharge(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_a
    return-object p1
.end method

.method public final addUpdateSdiActionRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    const-string v1, "id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 360
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->status:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 361
    const-string v1, "status"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 363
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 364
    const-string v1, "failure_code"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 366
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->failure_message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 367
    const-string v1, "failure_message"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 369
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->generated_card:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 370
    const-string v1, "generated_card"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 372
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->refund_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 373
    const-string v1, "refund_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 375
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->payment_method_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 376
    const-string v1, "payment_method_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 378
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->inputs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 542
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    check-cast v2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    .line 379
    sget-object v4, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inputs"

    invoke-static {v6, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v2, v1}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addInput(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move v1, v3

    goto :goto_0

    .line 381
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->routing_info:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 382
    const-string v1, "routing_info"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 384
    :cond_9
    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    if-eqz p2, :cond_a

    .line 385
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;

    const-string v1, "surcharge"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;->addSurcharge(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_a
    return-object p1
.end method

.method public final addValue(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addValue(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final addValue(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
