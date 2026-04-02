.class public final Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;
.super Ljava/lang/Object;
.source "UsbPermissionReceiverManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final buildValuesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final usbManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->usbManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;
    .locals 1

    .line 54
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->usbManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->newInstance(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->get()Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    move-result-object v0

    return-object v0
.end method
