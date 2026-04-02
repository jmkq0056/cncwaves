.class public final Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;
.super Ljava/lang/Object;
.source "ReactiveConfigurationListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;
    .locals 1

    .line 31
    invoke-static {}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory$InstanceHolder;->access$000()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;
    .locals 1

    .line 35
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;
    .locals 1

    .line 27
    invoke-static {}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;->newInstance()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;->get()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    move-result-object v0

    return-object v0
.end method
