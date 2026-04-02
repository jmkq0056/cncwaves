.class public final Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;
.super Ljava/lang/Object;
.source "TimeModule_ProvideClockFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/time/Clock;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/time/dagger/TimeModule;


# direct methods
.method public constructor <init>(Lcom/stripe/time/dagger/TimeModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;->module:Lcom/stripe/time/dagger/TimeModule;

    return-void
.end method

.method public static create(Lcom/stripe/time/dagger/TimeModule;)Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;

    invoke-direct {v0, p0}, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;-><init>(Lcom/stripe/time/dagger/TimeModule;)V

    return-object v0
.end method

.method public static provideClock(Lcom/stripe/time/dagger/TimeModule;)Lcom/stripe/time/Clock;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/time/dagger/TimeModule;->provideClock()Lcom/stripe/time/Clock;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/time/Clock;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/time/Clock;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;->module:Lcom/stripe/time/dagger/TimeModule;

    invoke-static {v0}, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;->provideClock(Lcom/stripe/time/dagger/TimeModule;)Lcom/stripe/time/Clock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;->get()Lcom/stripe/time/Clock;

    move-result-object v0

    return-object v0
.end method
