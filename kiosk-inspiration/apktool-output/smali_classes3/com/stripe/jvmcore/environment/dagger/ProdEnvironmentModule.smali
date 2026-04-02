.class public final Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;
.super Ljava/lang/Object;
.source "ProdEnvironmentModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;",
        "",
        "()V",
        "provideProdEnvironmentProvider",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        "environment"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;


# direct methods
.method public static synthetic $r8$lambda$yb2bgq6hfHfK9R4amCMSV79R5LI()Lcom/stripe/jvmcore/environment/Environment;
    .locals 1

    invoke-static {}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;->provideProdEnvironmentProvider$lambda$0()Lcom/stripe/jvmcore/environment/Environment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;->INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final provideProdEnvironmentProvider$lambda$0()Lcom/stripe/jvmcore/environment/Environment;
    .locals 1

    .line 14
    sget-object v0, Lcom/stripe/jvmcore/environment/Environment$Prod;->INSTANCE:Lcom/stripe/jvmcore/environment/Environment$Prod;

    check-cast v0, Lcom/stripe/jvmcore/environment/Environment;

    return-object v0
.end method


# virtual methods
.method public final provideProdEnvironmentProvider()Lcom/stripe/jvmcore/environment/EnvironmentProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    new-instance v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
