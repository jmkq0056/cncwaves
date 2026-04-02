.class final Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "ReactiveConfigurationListener_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory$InstanceHolder;->INSTANCE:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory$InstanceHolder;->INSTANCE:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;

    return-object v0
.end method
