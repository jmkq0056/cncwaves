.class public final Lcom/stripe/core/device/ClientDeviceType$S710;
.super Ljava/lang/Object;
.source "ClientDeviceType.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceType$BbposDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/ClientDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S710"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/core/device/ClientDeviceType$S710;",
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "isDevKit",
        "",
        "(Z)V",
        "()Z",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer$Bbpos;",
        "getManufacturer",
        "()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;",
        "metadata",
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "getMetadata",
        "()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "device_release"
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
.field private final isDevKit:Z

.field private final manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

.field private final metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    .line 77
    sget-object p1, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    iput-object p1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    .line 78
    invoke-virtual {p0}, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    sget-object p1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 78
    :goto_0
    iput-object p1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/device/ClientDeviceType$S710;ZILjava/lang/Object;)Lcom/stripe/core/device/ClientDeviceType$S710;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/device/ClientDeviceType$S710;->copy(Z)Lcom/stripe/core/device/ClientDeviceType$S710;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    return v0
.end method

.method public final copy(Z)Lcom/stripe/core/device/ClientDeviceType$S710;
    .locals 1

    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$S710;

    invoke-direct {v0, p1}, Lcom/stripe/core/device/ClientDeviceType$S710;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/device/ClientDeviceType$S710;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/device/ClientDeviceType$S710;

    iget-boolean v1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    iget-boolean p1, p1, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    return-object v0
.end method

.method public bridge synthetic getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/stripe/core/device/ClientDeviceType$S710;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    return-object v0
.end method

.method public getMetadata()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public isDevKit()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S710(isDevKit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/core/device/ClientDeviceType$S710;->isDevKit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
