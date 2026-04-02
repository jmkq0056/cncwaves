.class public final Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;
.super Ljava/lang/Object;
.source "LogPointEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/stripeterminal/storage/LogPointEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogPointEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogPointEntity.kt\ncom/stripe/core/stripeterminal/storage/LogPointEntity$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n*S KotlinDebug\n*F\n+ 1 LogPointEntity.kt\ncom/stripe/core/stripeterminal/storage/LogPointEntity$Companion\n*L\n20#1:43\n20#1:44,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;",
        "",
        "()V",
        "fromModel",
        "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
        "model",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "traceId",
        "",
        "fromTraceModel",
        "",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "stripeterminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromModel(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;)Lcom/stripe/core/stripeterminal/storage/LogPointEntity;
    .locals 11

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    .line 28
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/LogPoint;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/LogPoint;->getException()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/LogPoint;->getLogLevel()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/LogPoint;->getOffsetMs()I

    move-result v5

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-object v6, p2

    .line 27
    invoke-direct/range {v1 .. v10}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final fromTraceModel(Lcom/stripe/jvmcore/logging/terminal/log/Span;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getLogPoints()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Lcom/stripe/loggingmodels/LogPoint;

    .line 21
    sget-object v3, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->Companion:Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTraceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;->fromModel(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;)Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
