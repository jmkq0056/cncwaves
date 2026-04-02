.class public final Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;
.super Ljava/lang/Object;
.source "BluetoothBondStateReceiverManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;
    .locals 1

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->newInstance(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->get()Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    move-result-object v0

    return-object v0
.end method
