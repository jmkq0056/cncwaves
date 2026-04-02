.class public abstract Lcom/stripe/core/hardware/Reader$UsbReader;
.super Lcom/stripe/core/hardware/Reader;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UsbReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;,
        Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;,
        Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;,
        Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;,
        Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;,
        Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\u0014\u0015\u0016\u0017\u0018\u0019BE\u0008\u0004\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0006\u001a\u001b\u001c\u001d\u001e\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "Lcom/stripe/core/hardware/Reader;",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "firmwareCanHandleSelection",
        "",
        "checkForCardBehavior",
        "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "needsOtaUpdate",
        "needsReconnectAfterConfigUpdate",
        "needsSplashScreenUpdate",
        "quickEmvAutoResponse",
        "(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V",
        "getDevice",
        "()Landroid/hardware/usb/UsbDevice;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "Chipper2xReader",
        "StripeM2Reader",
        "UnspecifiedUsbReader",
        "WisecubeReader",
        "Wisepad3Reader",
        "Wisepad3SReader",
        "Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;",
        "hardware_release"
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
.field private final device:Landroid/hardware/usb/UsbDevice;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 180
    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/hardware/Reader;-><init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    iput-object p1, v0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move v7, p1

    goto :goto_0

    :cond_1
    move/from16 v7, p7

    :goto_0
    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 172
    invoke-direct/range {v0 .. v8}, Lcom/stripe/core/hardware/Reader$UsbReader;-><init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/stripe/core/hardware/Reader$UsbReader;-><init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    return v3

    .line 266
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.stripe.core.hardware.Reader.UsbReader"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    .line 268
    iget-object v1, p0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iget-object v4, p1, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    iget-object v4, p1, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v2

    :goto_4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 270
    :cond_8
    iget-object v1, p0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_9
    move-object v1, v2

    :goto_5
    iget-object p1, p1, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/stripe/core/hardware/Reader$UsbReader;->device:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
