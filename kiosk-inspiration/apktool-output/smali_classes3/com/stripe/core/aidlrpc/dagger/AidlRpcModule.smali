.class public final Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;
.super Ljava/lang/Object;
.source "AidlRpcModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/device/dagger/DeviceInfoModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;",
        "",
        "()V",
        "provideReaderAidlServer",
        "Lcom/stripe/core/aidlrpc/AidlServers$Reader;",
        "readerPackageName",
        "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;",
        "provideReaderAidlServer$aidlrpc_release",
        "provideReaderAppPackageName",
        "hardwareManufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "provideReaderAppPackageName$aidlrpc_release",
        "aidlrpc_release"
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
.field public static final INSTANCE:Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;

    invoke-direct {v0}, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;-><init>()V

    sput-object v0, Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;->INSTANCE:Lcom/stripe/core/aidlrpc/dagger/AidlRpcModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReaderAidlServer$aidlrpc_release(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)Lcom/stripe/core/aidlrpc/AidlServers$Reader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "readerPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlServers$Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/aidlrpc/AidlServers$Reader;-><init>(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)V

    return-object v0
.end method

.method public final provideReaderAppPackageName$aidlrpc_release(Lcom/stripe/core/device/HardwareManufacturer;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "hardwareManufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;-><init>(Lcom/stripe/core/device/HardwareManufacturer;)V

    return-object v0
.end method
