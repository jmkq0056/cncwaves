.class public final Lcom/stripe/core/device/ClientDeviceType$Unknown;
.super Ljava/lang/Object;
.source "ClientDeviceType.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceType$BbposDevice;
.implements Lcom/stripe/core/device/ClientDeviceType$MorphDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/ClientDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000f\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/core/device/ClientDeviceType$Unknown;",
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer$Other;",
        "(Lcom/stripe/core/device/HardwareManufacturer$Other;)V",
        "isDevKit",
        "",
        "()Z",
        "getManufacturer",
        "()Lcom/stripe/core/device/HardwareManufacturer$Other;",
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

.field private final manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

.field private final metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/HardwareManufacturer$Other;)V
    .locals 1

    const-string v0, "manufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    .line 48
    sget-object p1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->UnknownDevice:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    iput-object p1, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/device/ClientDeviceType$Unknown;Lcom/stripe/core/device/HardwareManufacturer$Other;ILjava/lang/Object;)Lcom/stripe/core/device/ClientDeviceType$Unknown;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/device/ClientDeviceType$Unknown;->copy(Lcom/stripe/core/device/HardwareManufacturer$Other;)Lcom/stripe/core/device/ClientDeviceType$Unknown;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/device/HardwareManufacturer$Other;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    return-object v0
.end method

.method public final copy(Lcom/stripe/core/device/HardwareManufacturer$Other;)Lcom/stripe/core/device/ClientDeviceType$Unknown;
    .locals 1

    const-string v0, "manufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    invoke-direct {v0, p1}, Lcom/stripe/core/device/ClientDeviceType$Unknown;-><init>(Lcom/stripe/core/device/HardwareManufacturer$Other;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    iget-object v1, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    iget-object p1, p1, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Other;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    return-object v0
.end method

.method public bridge synthetic getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/stripe/core/device/ClientDeviceType$Unknown;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer$Other;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    return-object v0
.end method

.method public getMetadata()Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->metadata:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    invoke-virtual {v0}, Lcom/stripe/core/device/HardwareManufacturer$Other;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDevKit()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->isDevKit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown(manufacturer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/device/ClientDeviceType$Unknown;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer$Other;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
