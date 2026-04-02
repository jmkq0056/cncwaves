.class public final Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;
.super Ljava/lang/Object;
.source "OfflineDatabaseProvider.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001Bh\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c\u0012%\u0008\u0002\u0010\r\u001a\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016R\u001b\u0010\u0013\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;",
        "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
        "context",
        "Landroid/content/Context;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "ext",
        "Lkotlin/Function1;",
        "Landroidx/room/RoomDatabase$Builder;",
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V",
        "database",
        "getDatabase",
        "()Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "database$delegate",
        "Lkotlin/Lazy;",
        "get",
        "offlinemode_release"
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
.field private final database$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;+",
            "Landroidx/room/RoomDatabase$Builder<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$database$2;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;->database$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 19
    sget-object p4, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$1;->INSTANCE:Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;->database$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineDatabase;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;->getDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v0

    return-object v0
.end method
