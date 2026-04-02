.class public final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideLogRoleFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
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

.method public static create()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;
    .locals 1

    .line 32
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideLogRole()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideLogRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;->provideLogRole()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
