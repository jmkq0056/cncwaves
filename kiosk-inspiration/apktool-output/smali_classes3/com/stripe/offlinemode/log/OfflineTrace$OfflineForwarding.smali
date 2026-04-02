.class public final Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;
.super Lcom/stripe/offlinemode/log/OfflineTrace;
.source "OfflineTrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/log/OfflineTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineForwarding"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J5\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;",
        "Lcom/stripe/offlinemode/log/OfflineTrace;",
        "entityId",
        "",
        "offlineId",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "deviceSerial",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V",
        "getDeviceSerial",
        "()Ljava/lang/String;",
        "getEntityId",
        "getOfflineId",
        "getType",
        "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "offlinemode_release"
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
.field private final deviceSerial:Ljava/lang/String;

.field private final entityId:Ljava/lang/String;

.field private final offlineId:Ljava/lang/String;

.field private final type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "forwarding"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/offlinemode/log/OfflineTrace;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 11
    iput-object p4, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerial"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iget-object v3, p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDeviceSerial()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineForwarding(entityId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->offlineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;->deviceSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
