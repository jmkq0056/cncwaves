.class final Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "BbposDiscoveryModule_ProvideBluetoothAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    return-object v0
.end method
