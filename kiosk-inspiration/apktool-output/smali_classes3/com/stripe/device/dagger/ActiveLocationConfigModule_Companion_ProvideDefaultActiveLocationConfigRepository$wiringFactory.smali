.class public final Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;
.super Ljava/lang/Object;
.source "ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/device/DefaultActiveLocationConfigRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory$InstanceHolder;->access$000()Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultActiveLocationConfigRepository$wiring()Lcom/stripe/device/DefaultActiveLocationConfigRepository;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/device/dagger/ActiveLocationConfigModule;->Companion:Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;

    invoke-virtual {v0}, Lcom/stripe/device/dagger/ActiveLocationConfigModule$Companion;->provideDefaultActiveLocationConfigRepository$wiring()Lcom/stripe/device/DefaultActiveLocationConfigRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/device/DefaultActiveLocationConfigRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/device/DefaultActiveLocationConfigRepository;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;->provideDefaultActiveLocationConfigRepository$wiring()Lcom/stripe/device/DefaultActiveLocationConfigRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;->get()Lcom/stripe/device/DefaultActiveLocationConfigRepository;

    move-result-object v0

    return-object v0
.end method
