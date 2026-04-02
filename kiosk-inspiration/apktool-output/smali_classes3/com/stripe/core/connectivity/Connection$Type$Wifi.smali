.class public final Lcom/stripe/core/connectivity/Connection$Type$Wifi;
.super Ljava/lang/Object;
.source "ConnectivityDataClasses.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/Connection$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/Connection$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wifi"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000bH\u00c6\u0003J\t\u0010 \u001a\u00020\rH\u00c6\u0003JO\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010\"\u001a\u00020\r2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010%\u001a\u00020\u0005H\u00d6\u0001J\t\u0010&\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        "ssid",
        "Lcom/stripe/core/connectivity/WifiSSID;",
        "frequency",
        "",
        "signalLevel",
        "numSignalLevels",
        "wifiSecurity",
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        "capabilities",
        "",
        "isRemoteConfiguredWifi",
        "",
        "(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)V",
        "getCapabilities",
        "()Ljava/lang/String;",
        "getFrequency",
        "()I",
        "()Z",
        "getNumSignalLevels",
        "getSignalLevel",
        "getSsid",
        "()Lcom/stripe/core/connectivity/WifiSSID;",
        "getWifiSecurity",
        "()Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "connectivity_release"
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
.field private final capabilities:Ljava/lang/String;

.field private final frequency:I

.field private final isRemoteConfiguredWifi:Z

.field private final numSignalLevels:I

.field private final signalLevel:I

.field private final ssid:Lcom/stripe/core/connectivity/WifiSSID;

.field private final wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;


# direct methods
.method public constructor <init>(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiSecurity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    .line 85
    iput p2, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    .line 90
    iput p3, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    .line 95
    iput p4, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    .line 100
    iput-object p5, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    .line 106
    iput-object p6, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    .line 108
    iput-boolean p7, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 80
    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/connectivity/Connection$Type$Wifi;-><init>(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/connectivity/Connection$Type$Wifi;Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;ZILjava/lang/Object;)Lcom/stripe/core/connectivity/Connection$Type$Wifi;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget p3, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget p4, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-boolean p7, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    :cond_6
    move-object p8, p6

    move p9, p7

    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->copy(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/connectivity/WifiSSID;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    return v0
.end method

.method public final component5()Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    return v0
.end method

.method public final copy(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)Lcom/stripe/core/connectivity/Connection$Type$Wifi;
    .locals 9

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiSecurity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/connectivity/Connection$Type$Wifi;-><init>(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    iget-object v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    iget v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    iget v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    iget v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    iget-object v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    iget-boolean p1, p1, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCapabilities()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrequency()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    return v0
.end method

.method public final getNumSignalLevels()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    return v0
.end method

.method public final getSignalLevel()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    return v0
.end method

.method public final getSsid()Lcom/stripe/core/connectivity/WifiSSID;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    return-object v0
.end method

.method public final getWifiSecurity()Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    invoke-virtual {v0}, Lcom/stripe/core/connectivity/WifiSSID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    invoke-virtual {v1}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRemoteConfiguredWifi()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wifi(ssid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->ssid:Lcom/stripe/core/connectivity/WifiSSID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->signalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSignalLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->numSignalLevels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->wifiSecurity:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRemoteConfiguredWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;->isRemoteConfiguredWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
