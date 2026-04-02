.class public final Lcom/stripe/core/readerupdate/TmsMonitorImpl;
.super Ljava/lang/Object;
.source "TmsMonitor.kt"

# interfaces
.implements Lcom/stripe/core/updater/Monitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/updater/Monitor<",
        "Lkotlinx/coroutines/flow/Flow<",
        "+",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTmsMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TmsMonitor.kt\ncom/stripe/core/readerupdate/TmsMonitorImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u0002`\u0004B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@\u00a2\u0006\u0002\u0010\u000fJ\u000c\u0010\u0010\u001a\u00020\u0003*\u00020\u0003H\u0002J\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0003H\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/TmsMonitorImpl;",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/TmsMonitor;",
        "updateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
        "(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)V",
        "start",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "filterNeedsUpdate",
        "needsUpdate",
        "",
        "readerupdate_release"
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
.field private final embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

.field private final updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)V
    .locals 1

    const-string v0, "updateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    .line 17
    iput-object p2, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    .line 18
    iput-object p3, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 19
    iput-object p4, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    return-void
.end method

.method public static final synthetic access$filterNeedsUpdate(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lcom/stripe/core/hardware/updates/ReaderVersion;)Lcom/stripe/core/hardware/updates/ReaderVersion;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->filterNeedsUpdate(Lcom/stripe/core/hardware/updates/ReaderVersion;)Lcom/stripe/core/hardware/updates/ReaderVersion;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScheduler$p(Lcom/stripe/core/readerupdate/TmsMonitorImpl;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getUpdateController$p(Lcom/stripe/core/readerupdate/TmsMonitorImpl;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->updateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    return-object p0
.end method

.method public static final synthetic access$getUpdateListener$p(Lcom/stripe/core/readerupdate/TmsMonitorImpl;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$needsUpdate(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lcom/stripe/core/hardware/updates/ReaderVersion;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->needsUpdate(Lcom/stripe/core/hardware/updates/ReaderVersion;)Z

    move-result p0

    return p0
.end method

.method private final filterNeedsUpdate(Lcom/stripe/core/hardware/updates/ReaderVersion;)Lcom/stripe/core/hardware/updates/ReaderVersion;
    .locals 4

    .line 45
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v1}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->embeddedSoftwareVersionProvider:Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    invoke-interface {v3}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileId()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v3, Lcom/stripe/core/hardware/updates/ReaderVersion;

    invoke-direct {v3, v0, v2, v1, p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final needsUpdate(Lcom/stripe/core/hardware/updates/ReaderVersion;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    new-instance p1, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;-><init>(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
