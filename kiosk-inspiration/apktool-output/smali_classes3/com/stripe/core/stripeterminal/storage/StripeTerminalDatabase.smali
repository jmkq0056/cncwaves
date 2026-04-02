.class public abstract Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;
.super Landroidx/room/RoomDatabase;
.source "StripeTerminalDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "eventDao",
        "Lcom/stripe/core/stripeterminal/storage/EventDao;",
        "logPointDao",
        "Lcom/stripe/core/stripeterminal/storage/LogPointDao;",
        "traceDao",
        "Lcom/stripe/core/stripeterminal/storage/TraceDao;",
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
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract eventDao()Lcom/stripe/core/stripeterminal/storage/EventDao;
.end method

.method public abstract logPointDao()Lcom/stripe/core/stripeterminal/storage/LogPointDao;
.end method

.method public abstract traceDao()Lcom/stripe/core/stripeterminal/storage/TraceDao;
.end method
