.class public final Lio/ktor/client/plugins/json/DefaultJvmKt;
.super Ljava/lang/Object;
.source "DefaultJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultJvm.kt\nio/ktor/client/plugins/json/DefaultJvmKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1963#2,14:26\n*S KotlinDebug\n*F\n+ 1 DefaultJvm.kt\nio/ktor/client/plugins/json/DefaultJvmKt\n*L\n23#1:26,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "defaultSerializer",
        "Lio/ktor/client/plugins/json/JsonSerializer;",
        "ktor-client-json"
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
.method public static final defaultSerializer()Lio/ktor/client/plugins/json/JsonSerializer;
    .locals 7

    const-class v0, Lio/ktor/client/plugins/json/JsonSerializer;

    .line 11
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    const-string v1, "load(JsonSerializer::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 30
    :cond_1
    move-object v2, v1

    check-cast v2, Lio/ktor/client/plugins/json/JsonSerializer;

    const-string v2, "javaClass"

    move-object v3, v2

    check-cast v3, Ljava/lang/Comparable;

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 33
    move-object v5, v4

    check-cast v5, Lio/ktor/client/plugins/json/JsonSerializer;

    move-object v5, v2

    check-cast v5, Ljava/lang/Comparable;

    .line 34
    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    move-object v1, v4

    move-object v3, v5

    .line 38
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 39
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/ktor/client/plugins/json/JsonSerializer;

    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "Fail to find serializer. Consider to add one of the following dependencies: \n - ktor-client-gson\n - ktor-client-json\n - ktor-client-serialization"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
