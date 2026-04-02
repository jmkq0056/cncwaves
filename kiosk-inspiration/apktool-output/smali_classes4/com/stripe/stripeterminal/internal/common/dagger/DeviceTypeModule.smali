.class public final Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;
.super Ljava/lang/Object;
.source "DeviceTypeModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/device/dagger/BbposModule;,
        Lcom/stripe/core/device/dagger/EmulatorModule;,
        Lcom/stripe/core/device/dagger/VerifoneModule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceTypeModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceTypeModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,52:1\n148#2:53\n*S KotlinDebug\n*F\n+ 1 DeviceTypeModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule\n*L\n41#1:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;",
        "",
        "()V",
        "provideClientDeviceType",
        "Lcom/stripe/core/device/ClientDeviceType;",
        "clientDeviceTypeProvider",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        "provideClientDeviceTypeParser",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "emulatorClientDeviceTypeParser",
        "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
        "bbposClientDeviceTypeParser",
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
        "verifoneClientDeviceTypeParser",
        "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
        "common_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideClientDeviceType(Lcom/stripe/core/device/ClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceType;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "clientDeviceTypeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lcom/stripe/core/device/ClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType;

    move-result-object p1

    return-object p1
.end method

.method public final provideClientDeviceTypeParser(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceTypeProvider;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "buildValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emulatorClientDeviceTypeParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposClientDeviceTypeParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifoneClientDeviceTypeParser"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;

    .line 41
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 53
    const-class v2, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;

    invoke-virtual {v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;-><init>(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v1, Lcom/stripe/core/device/ClientDeviceTypeProvider;

    return-object v1
.end method
