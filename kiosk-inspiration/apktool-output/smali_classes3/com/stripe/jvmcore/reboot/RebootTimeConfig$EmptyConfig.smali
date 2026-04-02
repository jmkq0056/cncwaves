.class public abstract Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;
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
    name = "EmptyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByClient;,
        Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByServer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0002\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig;",
        "approach",
        "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)V",
        "getApproach",
        "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "timeWindow",
        "Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "getTimeWindow",
        "()Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "ConfigByClient",
        "ConfigByServer",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByClient;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig$ConfigByServer;",
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
.field private final approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

.field private final timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;


# direct methods
.method private constructor <init>(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;-><init>(Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;)V

    return-void
.end method


# virtual methods
.method public getApproach()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-object v0
.end method

.method public getTimeWindow()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$EmptyConfig;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method
