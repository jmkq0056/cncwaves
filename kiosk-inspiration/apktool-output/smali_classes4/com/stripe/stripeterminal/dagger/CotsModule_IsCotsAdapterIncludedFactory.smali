.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;
.super Ljava/lang/Object;
.source "CotsModule_IsCotsAdapterIncludedFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;)Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;
    .locals 1

    .line 37
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;)V

    return-object v0
.end method

.method public static isCotsAdapterIncluded(Lcom/stripe/stripeterminal/dagger/CotsModule;)Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule;->isCotsAdapterIncluded()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;->isCotsAdapterIncluded(Lcom/stripe/stripeterminal/dagger/CotsModule;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
