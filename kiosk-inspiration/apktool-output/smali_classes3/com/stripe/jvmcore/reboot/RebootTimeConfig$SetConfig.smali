.class public abstract Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;
.super Ljava/lang/Object;
.source "RebootTimeConfig.kt"

# interfaces
.implements Lcom/stripe/jvmcore/reboot/RebootTimeConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/reboot/RebootTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SetConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;,
        Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig;",
        "timeWindow",
        "Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "(Lcom/stripe/jvmcore/reboot/TimeWindow;)V",
        "getTimeWindow",
        "()Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "ConfigByClient",
        "ConfigByServer",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;",
        "reboot"
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
.field private final timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;


# direct methods
.method private constructor <init>(Lcom/stripe/jvmcore/reboot/TimeWindow;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/reboot/TimeWindow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;-><init>(Lcom/stripe/jvmcore/reboot/TimeWindow;)V

    return-void
.end method


# virtual methods
.method public getTimeWindow()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method
