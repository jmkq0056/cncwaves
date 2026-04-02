.class public final Lcom/stripe/core/device/dagger/BbposModule;
.super Ljava/lang/Object;
.source "BbposModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposModule.kt\ncom/stripe/core/device/dagger/BbposModule\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,26:1\n148#2:27\n*S KotlinDebug\n*F\n+ 1 BbposModule.kt\ncom/stripe/core/device/dagger/BbposModule\n*L\n23#1:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/device/dagger/BbposModule;",
        "",
        "()V",
        "provideBbposClientDeviceTypeParser",
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
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
.field public static final INSTANCE:Lcom/stripe/core/device/dagger/BbposModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/device/dagger/BbposModule;

    invoke-direct {v0}, Lcom/stripe/core/device/dagger/BbposModule;-><init>()V

    sput-object v0, Lcom/stripe/core/device/dagger/BbposModule;->INSTANCE:Lcom/stripe/core/device/dagger/BbposModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposClientDeviceTypeParser(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/core/device/BbposClientDeviceTypeProvider;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "serialSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    .line 23
    sget-object v1, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 27
    const-class v2, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 20
    invoke-direct {v0, p1, p2, v1}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;-><init>(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method
