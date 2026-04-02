.class public final Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvideContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/ContextModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/ContextModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;->module:Lcom/stripe/stripeterminal/dagger/ContextModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/ContextModule;)Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;-><init>(Lcom/stripe/stripeterminal/dagger/ContextModule;)V

    return-object v0
.end method

.method public static provideContext(Lcom/stripe/stripeterminal/dagger/ContextModule;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ContextModule;->provideContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;->module:Lcom/stripe/stripeterminal/dagger/ContextModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;->provideContext(Lcom/stripe/stripeterminal/dagger/ContextModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
