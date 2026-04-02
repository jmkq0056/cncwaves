.class public final Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;
.super Ljava/lang/Object;
.source "ReaderPlatformDeviceInfo_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;",
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

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
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
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;
    .locals 1

    .line 51
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->get()Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;

    move-result-object v0

    return-object v0
.end method
