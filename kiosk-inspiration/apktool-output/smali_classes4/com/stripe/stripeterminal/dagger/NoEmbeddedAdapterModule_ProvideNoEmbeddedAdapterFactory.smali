.class public final Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory;
.super Ljava/lang/Object;
.source "NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory;
    .locals 1

    .line 32
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideNoEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    .line 36
    sget-object v0, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;->provideNoEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    .line 28
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory;->provideNoEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule_ProvideNoEmbeddedAdapterFactory;->get()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method
