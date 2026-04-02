.class public final Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;
.super Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;
.source "RebootTimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigByServer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;",
        "Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;",
        "timeWindow",
        "Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "isConfigEnforced",
        "",
        "(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)V",
        "approach",
        "Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "getApproach",
        "()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;",
        "()Z",
        "getTimeWindow",
        "()Lcom/stripe/jvmcore/reboot/TimeWindow;",
        "component1",
        "component2",
        "copy",
        "equals",
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

.field private final isConfigEnforced:Z

.field private final timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)V
    .locals 1

    const-string v0, "timeWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig;-><init>(Lcom/stripe/jvmcore/reboot/TimeWindow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    .line 19
    iput-boolean p2, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    .line 21
    sget-object p1, Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;->REBOOT_TIME_BY_SERVER_DEFAULT:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    iput-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;Lcom/stripe/jvmcore/reboot/TimeWindow;ZILjava/lang/Object;)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->copy(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    return v0
.end method

.method public final copy(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;
    .locals 1

    const-string v0, "timeWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;-><init>(Lcom/stripe/jvmcore/reboot/TimeWindow;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;

    iget-object v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    iget-object v3, p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    iget-boolean p1, p1, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getApproach()Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->approach:Lcom/stripe/jvmcore/reboot/RebootTimeSettingApproach;

    return-object v0
.end method

.method public getTimeWindow()Lcom/stripe/jvmcore/reboot/TimeWindow;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/reboot/TimeWindow;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isConfigEnforced()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigByServer(timeWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->timeWindow:Lcom/stripe/jvmcore/reboot/TimeWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConfigEnforced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/jvmcore/reboot/RebootTimeConfig$SetConfig$ConfigByServer;->isConfigEnforced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
