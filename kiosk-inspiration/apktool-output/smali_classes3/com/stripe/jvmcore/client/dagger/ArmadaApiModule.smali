.class public final Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;
.super Ljava/lang/Object;
.source "ArmadaApiModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;",
        "",
        "()V",
        "provideArmadaApi",
        "Lcom/stripe/proto/api/armada/ArmadaApi;",
        "crpcClient",
        "Ldagger/Lazy;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "client"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideArmadaApi(Ldagger/Lazy;)Lcom/stripe/proto/api/armada/ArmadaApi;
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;)",
            "Lcom/stripe/proto/api/armada/ArmadaApi;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "crpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/stripe/proto/api/armada/ArmadaApi;

    invoke-direct {v0, p1}, Lcom/stripe/proto/api/armada/ArmadaApi;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method
