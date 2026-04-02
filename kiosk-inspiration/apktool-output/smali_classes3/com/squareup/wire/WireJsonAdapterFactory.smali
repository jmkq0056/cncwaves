.class public final Lcom/squareup/wire/WireJsonAdapterFactory;
.super Ljava/lang/Object;
.source "WireJsonAdapterFactory.kt"

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B+\u0008\u0007\u0012\u0018\u0008\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J,\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00002\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0010\u0010\u0014\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0015R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/squareup/wire/WireJsonAdapterFactory;",
        "Lcom/squareup/moshi/JsonAdapter$Factory;",
        "typeUrlToAdapter",
        "",
        "",
        "Lcom/squareup/wire/ProtoAdapter;",
        "writeIdentityValues",
        "",
        "(Ljava/util/Map;Z)V",
        "create",
        "Lcom/squareup/moshi/JsonAdapter;",
        "type",
        "Ljava/lang/reflect/Type;",
        "annotations",
        "",
        "",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "plus",
        "adapter",
        "adapters",
        "",
        "wire-moshi-adapter"
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
.field private final typeUrlToAdapter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final writeIdentityValues:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "typeUrlToAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;>;Z)V"
        }
    .end annotation

    const-string v0, "typeUrlToAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->typeUrlToAdapter:Ljava/util/Map;

    .line 46
    iput-boolean p2, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->writeIdentityValues:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 45
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 81
    :cond_0
    const-class p2, Lcom/squareup/wire/AnyMessage;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lcom/squareup/wire/AnyMessageJsonAdapter;

    iget-object p2, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->typeUrlToAdapter:Ljava/util/Map;

    invoke-direct {p1, p3, p2}, Lcom/squareup/wire/AnyMessageJsonAdapter;-><init>(Lcom/squareup/moshi/Moshi;Ljava/util/Map;)V

    check-cast p1, Lcom/squareup/moshi/JsonAdapter;

    return-object p1

    :cond_1
    const-class p2, Lcom/squareup/wire/Message;

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    check-cast p1, Ljava/lang/Class;

    .line 85
    iget-boolean p2, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->writeIdentityValues:Z

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 83
    invoke-static {p1, p2, v0}, Lcom/squareup/wire/internal/ReflectionKt;->createRuntimeMessageAdapter(Ljava/lang/Class;ZLjava/lang/ClassLoader;)Lcom/squareup/wire/internal/RuntimeMessageAdapter;

    move-result-object p1

    .line 88
    sget-object p2, Lcom/squareup/wire/MoshiJsonIntegration;->INSTANCE:Lcom/squareup/wire/MoshiJsonIntegration;

    invoke-virtual {p2, p1, p3}, Lcom/squareup/wire/MoshiJsonIntegration;->jsonAdapters(Lcom/squareup/wire/internal/RuntimeMessageAdapter;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 89
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    .line 90
    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/moshi/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 89
    invoke-virtual {p3, v0}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p3

    .line 92
    new-instance v0, Lcom/squareup/wire/MessageJsonAdapter;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/wire/MessageJsonAdapter;-><init>(Lcom/squareup/wire/internal/RuntimeMessageAdapter;Ljava/util/List;Lcom/squareup/moshi/JsonAdapter;)V

    invoke-virtual {v0}, Lcom/squareup/wire/MessageJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    return-object p1

    :cond_2
    const-class p2, Lcom/squareup/wire/WireEnum;

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 95
    sget-object p2, Lcom/squareup/wire/RuntimeEnumAdapter;->Companion:Lcom/squareup/wire/RuntimeEnumAdapter$Companion;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/squareup/wire/RuntimeEnumAdapter$Companion;->create(Ljava/lang/Class;)Lcom/squareup/wire/RuntimeEnumAdapter;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/squareup/wire/internal/EnumJsonFormatter;

    check-cast p1, Lcom/squareup/wire/EnumAdapter;

    invoke-direct {p2, p1}, Lcom/squareup/wire/internal/EnumJsonFormatter;-><init>(Lcom/squareup/wire/EnumAdapter;)V

    .line 97
    new-instance p1, Lcom/squareup/wire/EnumJsonAdapter;

    invoke-direct {p1, p2}, Lcom/squareup/wire/EnumJsonAdapter;-><init>(Lcom/squareup/wire/internal/EnumJsonFormatter;)V

    invoke-virtual {p1}, Lcom/squareup/wire/EnumJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public final plus(Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/WireJsonAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;)",
            "Lcom/squareup/wire/WireJsonAdapterFactory;"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireJsonAdapterFactory;->plus(Ljava/util/List;)Lcom/squareup/wire/WireJsonAdapterFactory;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Ljava/util/List;)Lcom/squareup/wire/WireJsonAdapterFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;>;)",
            "Lcom/squareup/wire/WireJsonAdapterFactory;"
        }
    .end annotation

    const-string v0, "adapters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->typeUrlToAdapter:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 55
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "recompile "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to use it with WireJsonAdapterFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Lcom/squareup/wire/WireJsonAdapterFactory;

    iget-boolean v1, p0, Lcom/squareup/wire/WireJsonAdapterFactory;->writeIdentityValues:Z

    invoke-direct {p1, v0, v1}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;Z)V

    return-object p1
.end method
