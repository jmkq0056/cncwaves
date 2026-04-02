.class public final Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;
.super Lcom/stripe/core/hardware/Reader$UsbReader;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Reader$UsbReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wisepad3SReader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "device",
        "Landroid/hardware/usb/UsbDevice;",
        "(Landroid/hardware/usb/UsbDevice;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;-><init>(Landroid/hardware/usb/UsbDevice;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 10

    .line 244
    sget-object v3, Lcom/stripe/hardware/emv/CheckForCardBehavior;->DO_NOT_POLL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 241
    invoke-direct/range {v0 .. v9}, Lcom/stripe/core/hardware/Reader$UsbReader;-><init>(Landroid/hardware/usb/UsbDevice;ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
