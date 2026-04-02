.class public final Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
.super Ljava/lang/Object;
.source "ReaderBatteryInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ0\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0006\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "",
        "batteryStatus",
        "Lcom/stripe/stripeterminal/external/models/BatteryStatus;",
        "batteryLevel",
        "",
        "isCharging",
        "",
        "(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V",
        "getBatteryLevel",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getBatteryStatus",
        "()Lcom/stripe/stripeterminal/external/models/BatteryStatus;",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "public_release"
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;


# instance fields
.field private final batteryLevel:Ljava/lang/Float;

.field private final batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

.field private final isCharging:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->Companion:Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    .line 7
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    .line 8
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->copy(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/BatteryStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    return-object v0
.end method

.method public final component2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;-><init>(Lcom/stripe/stripeterminal/external/models/BatteryStatus;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBatteryLevel()Ljava/lang/Float;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public final getBatteryStatus()Lcom/stripe/stripeterminal/external/models/BatteryStatus;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/BatteryStatus;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isCharging()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReaderBatteryInfo(batteryStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryStatus:Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->batteryLevel:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
