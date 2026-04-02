.class public final Lcom/stripe/jvmcore/batchdispatcher/dagger/DispatcherContantsKt;
.super Ljava/lang/Object;
.source "DispatcherContants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "DEFAULT_DISPATCH_INTERVAL_MILLIS",
        "",
        "getDEFAULT_DISPATCH_INTERVAL_MILLIS",
        "()J",
        "batchdispatcher"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_DISPATCH_INTERVAL_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/jvmcore/batchdispatcher/dagger/DispatcherContantsKt;->DEFAULT_DISPATCH_INTERVAL_MILLIS:J

    return-void
.end method

.method public static final getDEFAULT_DISPATCH_INTERVAL_MILLIS()J
    .locals 2

    .line 5
    sget-wide v0, Lcom/stripe/jvmcore/batchdispatcher/dagger/DispatcherContantsKt;->DEFAULT_DISPATCH_INTERVAL_MILLIS:J

    return-wide v0
.end method
