.class public final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModuleKt;
.super Ljava/lang/Object;
.source "EventLoggerModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "DEFAULT_DISPATCH_INTERVAL_MILLIS",
        "",
        "DEFAULT_EVENTS_FILE",
        "",
        "DEFAULT_LEGACY_EVENTS_FILE",
        "logging"
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

.field private static final DEFAULT_EVENTS_FILE:Ljava/lang/String; = "events_json_wire"

.field private static final DEFAULT_LEGACY_EVENTS_FILE:Ljava/lang/String; = "events_wire"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModuleKt;->DEFAULT_DISPATCH_INTERVAL_MILLIS:J

    return-void
.end method
