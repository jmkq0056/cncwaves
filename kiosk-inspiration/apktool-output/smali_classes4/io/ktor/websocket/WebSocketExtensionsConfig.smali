.class public final Lio/ktor/websocket/WebSocketExtensionsConfig;
.super Ljava/lang/Object;
.source "WebSocketExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketExtension.kt\nio/ktor/websocket/WebSocketExtensionsConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1549#2:134\n1620#2,3:135\n1#3:138\n*S KotlinDebug\n*F\n+ 1 WebSocketExtension.kt\nio/ktor/websocket/WebSocketExtensionsConfig\n*L\n123#1:134\n123#1:135,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\rJ\u0018\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0011H\u0002J=\u0010\u0012\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u0013*\u00020\u00012\u0010\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u0002H\u0013\u0012\u0002\u0008\u00030\u00112\u0019\u0008\u0002\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u000f0\u0016\u00a2\u0006\u0002\u0008\u0017R\"\u0010\u0003\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0005j\u0002`\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/websocket/WebSocketExtensionsConfig;",
        "",
        "()V",
        "installers",
        "",
        "Lkotlin/Function0;",
        "Lio/ktor/websocket/WebSocketExtension;",
        "Lio/ktor/websocket/ExtensionInstaller;",
        "rcv",
        "",
        "",
        "[Ljava/lang/Boolean;",
        "build",
        "",
        "checkConflicts",
        "",
        "extensionFactory",
        "Lio/ktor/websocket/WebSocketExtensionFactory;",
        "install",
        "ConfigType",
        "extension",
        "config",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "ktor-websockets"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final installers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final rcv:[Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->installers:Ljava/util/List;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->rcv:[Ljava/lang/Boolean;

    return-void
.end method

.method private final checkConflicts(Lio/ktor/websocket/WebSocketExtensionFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/websocket/WebSocketExtensionFactory<",
            "**>;)V"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lio/ktor/websocket/WebSocketExtensionFactory;->getRsv1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->rcv:[Ljava/lang/Boolean;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p1}, Lio/ktor/websocket/WebSocketExtensionFactory;->getRsv2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->rcv:[Ljava/lang/Boolean;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {p1}, Lio/ktor/websocket/WebSocketExtensionFactory;->getRsv3()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->rcv:[Ljava/lang/Boolean;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 130
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to install extension. Please check configured extensions for conflicts."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic install$default(Lio/ktor/websocket/WebSocketExtensionsConfig;Lio/ktor/websocket/WebSocketExtensionFactory;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 114
    sget-object p2, Lio/ktor/websocket/WebSocketExtensionsConfig$install$1;->INSTANCE:Lio/ktor/websocket/WebSocketExtensionsConfig$install$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/websocket/WebSocketExtensionsConfig;->install(Lio/ktor/websocket/WebSocketExtensionFactory;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final build()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/websocket/WebSocketExtension<",
            "*>;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->installers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 123
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/websocket/WebSocketExtension;

    .line 136
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final install(Lio/ktor/websocket/WebSocketExtensionFactory;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ConfigType:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/websocket/WebSocketExtensionFactory<",
            "TConfigType;*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TConfigType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lio/ktor/websocket/WebSocketExtensionsConfig;->checkConflicts(Lio/ktor/websocket/WebSocketExtensionFactory;)V

    .line 117
    iget-object v0, p0, Lio/ktor/websocket/WebSocketExtensionsConfig;->installers:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lio/ktor/websocket/WebSocketExtensionsConfig$install$2;

    invoke-direct {v1, p1, p2}, Lio/ktor/websocket/WebSocketExtensionsConfig$install$2;-><init>(Lio/ktor/websocket/WebSocketExtensionFactory;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
