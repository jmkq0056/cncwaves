.class public final Lcom/stripe/core/readerupdate/dagger/TmsModule;
.super Ljava/lang/Object;
.source "TmsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007H\u0007J:\u0010\u0008\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\n0\tj\u0002`\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/TmsModule;",
        "",
        "()V",
        "provideTmsIngester",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/TmsIngester;",
        "provideTmsMonitor",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/TmsMonitor;",
        "updateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "embeddedSoftwareVersionProvider",
        "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/TmsModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/TmsModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/TmsModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideTmsIngester()Lcom/stripe/core/updater/Ingester;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/stripe/core/readerupdate/TmsIngesterImpl;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/TmsIngesterImpl;-><init>()V

    check-cast v0, Lcom/stripe/core/updater/Ingester;

    return-object v0
.end method

.method public final provideTmsMonitor(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Lcom/stripe/core/updater/Monitor;
    .locals 1
    .param p3    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;",
            ")",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;"
        }
    .end annotation

    const-string v0, "updateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "embeddedSoftwareVersionProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;-><init>(Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)V

    check-cast v0, Lcom/stripe/core/updater/Monitor;

    return-object v0
.end method
