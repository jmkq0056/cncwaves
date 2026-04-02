.class public final Lio/ktor/client/request/forms/FormDslKt;
.super Ljava/lang/Object;
.source "formDsl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nformDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 formDsl.kt\nio/ktor/client/request/forms/FormDslKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,234:1\n190#1,5:240\n13579#2,2:235\n37#3,2:237\n1#4:239\n*S KotlinDebug\n*F\n+ 1 formDsl.kt\nio/ktor/client/request/forms/FormDslKt\n*L\n232#1:240,5\n32#1:235,2\n78#1:237,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a%\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u001a-\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u001a\u0010\u0008\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\"\u0006\u0012\u0002\u0008\u00030\n\u00a2\u0006\u0002\u0010\u000b\u001a[\u0010\u000c\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0019\u0008\u0004\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0004 \u0001\u00a2\u0006\u0002\u0010\u0015\u001a]\u0010\u000c\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0017\u0010\u0013\u001a\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0005 \u0001\u00a2\u0006\u0002\u0010\u0019\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "formData",
        "",
        "Lio/ktor/http/content/PartData;",
        "block",
        "Lkotlin/Function1;",
        "Lio/ktor/client/request/forms/FormBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "values",
        "",
        "Lio/ktor/client/request/forms/FormPart;",
        "([Lio/ktor/client/request/forms/FormPart;)Ljava/util/List;",
        "append",
        "key",
        "",
        "headers",
        "Lio/ktor/http/Headers;",
        "size",
        "",
        "bodyBuilder",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Lio/ktor/http/Headers;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "filename",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/ContentType;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "ktor-client-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final append(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Lio/ktor/http/Headers;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/forms/FormBuilder;",
            "Ljava/lang/String;",
            "Lio/ktor/http/Headers;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bodyBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lio/ktor/client/request/forms/FormPart;

    new-instance v1, Lio/ktor/client/request/forms/InputProvider;

    new-instance v2, Lio/ktor/client/request/forms/FormDslKt$append$2;

    invoke-direct {v2, p4}, Lio/ktor/client/request/forms/FormDslKt$append$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, p3, v2}, Lio/ktor/client/request/forms/InputProvider;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, p1, v1, p2}, Lio/ktor/client/request/forms/FormPart;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/ktor/http/Headers;)V

    invoke-virtual {p0, v0}, Lio/ktor/client/request/forms/FormBuilder;->append(Lio/ktor/client/request/forms/FormPart;)V

    return-void
.end method

.method public static final append(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/ContentType;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/request/forms/FormBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/ktor/http/ContentType;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bodyBuilder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lio/ktor/http/HeadersBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 228
    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filename="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/ktor/http/HeaderValueWithParametersKt;->escapeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 229
    sget-object p2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {p2}, Lio/ktor/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lio/ktor/http/ContentType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-virtual {v0}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object p2

    .line 243
    new-instance p3, Lio/ktor/client/request/forms/FormPart;

    new-instance v0, Lio/ktor/client/request/forms/InputProvider;

    new-instance v1, Lio/ktor/client/request/forms/FormDslKt$append$2;

    invoke-direct {v1, p5}, Lio/ktor/client/request/forms/FormDslKt$append$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, p4, v1}, Lio/ktor/client/request/forms/InputProvider;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p3, p1, v0, p2}, Lio/ktor/client/request/forms/FormPart;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/ktor/http/Headers;)V

    invoke-virtual {p0, p3}, Lio/ktor/client/request/forms/FormBuilder;->append(Lio/ktor/client/request/forms/FormPart;)V

    return-void
.end method

.method public static synthetic append$default(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Lio/ktor/http/Headers;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 186
    sget-object p2, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    invoke-virtual {p2}, Lio/ktor/http/Headers$Companion;->getEmpty()Lio/ktor/http/Headers;

    move-result-object p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 184
    :cond_1
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "key"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "headers"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "bodyBuilder"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance p5, Lio/ktor/client/request/forms/FormPart;

    new-instance p6, Lio/ktor/client/request/forms/InputProvider;

    new-instance v0, Lio/ktor/client/request/forms/FormDslKt$append$2;

    invoke-direct {v0, p4}, Lio/ktor/client/request/forms/FormDslKt$append$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p6, p3, v0}, Lio/ktor/client/request/forms/InputProvider;-><init>(Ljava/lang/Long;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p5, p1, p6, p2}, Lio/ktor/client/request/forms/FormPart;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/ktor/http/Headers;)V

    invoke-virtual {p0, p5}, Lio/ktor/client/request/forms/FormBuilder;->append(Lio/ktor/client/request/forms/FormPart;)V

    return-void
.end method

.method public static synthetic append$default(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/ContentType;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    move-object p4, v0

    .line 216
    :cond_1
    invoke-static/range {p0 .. p5}, Lio/ktor/client/request/forms/FormDslKt;->append(Lio/ktor/client/request/forms/FormBuilder;Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/ContentType;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final formData(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/request/forms/FormBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lio/ktor/http/content/PartData;",
            ">;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lio/ktor/client/request/forms/FormBuilder;

    invoke-direct {v0}, Lio/ktor/client/request/forms/FormBuilder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lio/ktor/client/request/forms/FormBuilder;->build$ktor_client_core()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 238
    new-array v0, v0, [Lio/ktor/client/request/forms/FormPart;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 78
    check-cast p0, [Lio/ktor/client/request/forms/FormPart;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/ktor/client/request/forms/FormPart;

    invoke-static {p0}, Lio/ktor/client/request/forms/FormDslKt;->formData([Lio/ktor/client/request/forms/FormPart;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs formData([Lio/ktor/client/request/forms/FormPart;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/ktor/client/request/forms/FormPart<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/ktor/http/content/PartData;",
            ">;"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 235
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, p0, v3

    .line 32
    invoke-virtual {v4}, Lio/ktor/client/request/forms/FormPart;->component1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lio/ktor/client/request/forms/FormPart;->component2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lio/ktor/client/request/forms/FormPart;->component3()Lio/ktor/http/Headers;

    move-result-object v4

    .line 33
    new-instance v7, Lio/ktor/http/HeadersBuilder;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v2, v9, v8}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    sget-object v8, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v8}, Lio/ktor/http/HttpHeaders;->getContentDisposition()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "form-data; name="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lio/ktor/http/HeaderValueWithParametersKt;->escapeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    check-cast v4, Lio/ktor/util/StringValues;

    invoke-virtual {v7, v4}, Lio/ktor/http/HeadersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 39
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Lio/ktor/http/content/PartData$FormItem;

    check-cast v6, Ljava/lang/String;

    .line 38
    sget-object v5, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$1;->INSTANCE:Lio/ktor/client/request/forms/FormDslKt$formData$1$part$1;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 39
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Lio/ktor/http/content/PartData$FormItem;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto/16 :goto_1

    .line 40
    :cond_0
    instance-of v4, v6, Ljava/lang/Number;

    if-eqz v4, :cond_1

    new-instance v4, Lio/ktor/http/content/PartData$FormItem;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    sget-object v6, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$2;->INSTANCE:Lio/ktor/client/request/forms/FormDslKt$formData$1$part$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 40
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lio/ktor/http/content/PartData$FormItem;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto/16 :goto_1

    .line 41
    :cond_1
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    new-instance v4, Lio/ktor/http/content/PartData$FormItem;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    sget-object v6, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$3;->INSTANCE:Lio/ktor/client/request/forms/FormDslKt$formData$1$part$3;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 41
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lio/ktor/http/content/PartData$FormItem;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto/16 :goto_1

    .line 42
    :cond_2
    instance-of v4, v6, [B

    if-eqz v4, :cond_3

    .line 43
    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    check-cast v5, [B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v4, Lio/ktor/http/content/PartData$BinaryItem;

    .line 38
    new-instance v5, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$4;

    invoke-direct {v5, v6}, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$4;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    sget-object v6, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$5;->INSTANCE:Lio/ktor/client/request/forms/FormDslKt$formData$1$part$5;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 44
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lio/ktor/http/content/PartData$BinaryItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto/16 :goto_1

    .line 46
    :cond_3
    instance-of v4, v6, Lio/ktor/utils/io/core/ByteReadPacket;

    if-eqz v4, :cond_4

    .line 47
    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v5}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v4, Lio/ktor/http/content/PartData$BinaryItem;

    .line 38
    new-instance v5, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$6;

    invoke-direct {v5, v6}, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$6;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$7;

    invoke-direct {v8, v6}, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$7;-><init>(Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 48
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v6

    invoke-direct {v4, v5, v8, v6}, Lio/ktor/http/content/PartData$BinaryItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto :goto_1

    .line 50
    :cond_4
    instance-of v4, v6, Lio/ktor/client/request/forms/InputProvider;

    if-eqz v4, :cond_6

    .line 51
    check-cast v6, Lio/ktor/client/request/forms/InputProvider;

    invoke-virtual {v6}, Lio/ktor/client/request/forms/InputProvider;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 53
    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    new-instance v4, Lio/ktor/http/content/PartData$BinaryItem;

    invoke-virtual {v6}, Lio/ktor/client/request/forms/InputProvider;->getBlock()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 38
    sget-object v6, Lio/ktor/client/request/forms/FormDslKt$formData$1$part$8;->INSTANCE:Lio/ktor/client/request/forms/FormDslKt$formData$1$part$8;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 55
    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lio/ktor/http/content/PartData$BinaryItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    goto :goto_1

    .line 57
    :cond_6
    instance-of v4, v6, Lio/ktor/client/request/forms/ChannelProvider;

    if-eqz v4, :cond_8

    .line 58
    check-cast v6, Lio/ktor/client/request/forms/ChannelProvider;

    invoke-virtual {v6}, Lio/ktor/client/request/forms/ChannelProvider;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 60
    sget-object v5, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v5}, Lio/ktor/http/HttpHeaders;->getContentLength()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_7
    new-instance v4, Lio/ktor/http/content/PartData$BinaryChannelItem;

    invoke-virtual {v6}, Lio/ktor/client/request/forms/ChannelProvider;->getBlock()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-virtual {v7}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lio/ktor/http/content/PartData$BinaryChannelItem;-><init>(Lkotlin/jvm/functions/Function0;Lio/ktor/http/Headers;)V

    check-cast v4, Lio/ktor/http/content/PartData;

    .line 68
    :goto_1
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 64
    :cond_8
    instance-of p0, v6, Lio/ktor/utils/io/core/Input;

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t use [Input] as part of form: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Consider using [InputProvider] instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown form content type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return-object v0
.end method
