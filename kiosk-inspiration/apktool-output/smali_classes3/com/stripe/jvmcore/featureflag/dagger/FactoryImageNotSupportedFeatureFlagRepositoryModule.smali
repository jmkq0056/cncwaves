.class public final Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;
.super Ljava/lang/Object;
.source "FactoryImageNotSupportedFeatureFlagRepositoryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;",
        "",
        "()V",
        "provideFactoryNotSupportedFeatureFlagRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "featureflag"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideFactoryNotSupportedFeatureFlagRepository(Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    new-instance v1, Lcom/stripe/jvmcore/factoryimage/FactoryImageNotSupportedHelper;

    invoke-direct {v1}, Lcom/stripe/jvmcore/factoryimage/FactoryImageNotSupportedHelper;-><init>()V

    check-cast v1, Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

    invoke-direct {v0, p1, v1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;-><init>(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V

    return-object v0
.end method
