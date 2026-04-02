.class public final Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;
.super Ljava/lang/Object;
.source "MainlandIdempotencyGenerator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->randomProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;
    .locals 1

    .line 56
    new-instance v0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;-><init>(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/time/Clock;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/device/DeviceInfoRepository;

    iget-object v2, p0, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->randomProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/random/Random;

    invoke-static {v0, v1, v2}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->newInstance(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->get()Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;

    move-result-object v0

    return-object v0
.end method
