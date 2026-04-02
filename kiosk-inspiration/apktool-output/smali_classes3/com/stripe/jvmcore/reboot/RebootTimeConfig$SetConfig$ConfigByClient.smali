.class public final Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;
.super Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;
.source "RebootTimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigByClient"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;",
        "timeWindow",
        "Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "(Lcom/stripe/jvmcore/reboot/TimeWindow;)V",
        "approach",
        "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "getApproach",
        "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "getTimeWindow",
        "()Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.method public constructor <init>(Lcom/stripe/jvmcore/reboot/TimeWindow;)V
    .locals 1

    const-string v0, "timeWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;-><init>(Lcom/stripe/jvmcore/reboot/TimeWindow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    .line 27
    sget-object p1, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->REBOOT_TIME_BY_DEVICE:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;Lcom/stripe/jvmcore/reboot/TimeWindow;ILjava/lang/Object;)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->copy(Lcom/stripe/jvmcore/reboot/TimeWindow;)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method

.method public final copy(Lcom/stripe/jvmcore/reboot/TimeWindow;)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;
    .locals 1

    const-string v0, "timeWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;-><init>(Lcom/stripe/jvmcore/reboot/TimeWindow;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;

    iget-object v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    iget-object p1, p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getApproach()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-object v0
.end method

.method public getTimeWindow()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/reboot/TimeWindow;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigByClient(timeWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByClient;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
