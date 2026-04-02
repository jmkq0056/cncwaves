.class public final Lcom/stripe/core/device/dagger/VerifoneModule;
.super Ljava/lang/Object;
.source "VerifoneModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/device/dagger/VerifoneModule;",
        "",
        "()V",
        "providerVerifoneClientDeviceTypeParser",
        "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "device_release"
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
.field public static final INSTANCE:Lcom/stripe/core/device/dagger/VerifoneModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/device/dagger/VerifoneModule;

    invoke-direct {v0}, Lcom/stripe/core/device/dagger/VerifoneModule;-><init>()V

    sput-object v0, Lcom/stripe/core/device/dagger/VerifoneModule;->INSTANCE:Lcom/stripe/core/device/dagger/VerifoneModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providerVerifoneClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "buildValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    invoke-direct {v0, p1}, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;-><init>(Lcom/stripe/core/device/BuildValues;)V

    return-object v0
.end method
