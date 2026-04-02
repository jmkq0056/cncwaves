.class public final Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;
.super Ljava/lang/Object;
.source "ApplicationInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationInfoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationInfoModule.kt\ncom/stripe/stripeterminal/dagger/ApplicationInfoModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,46:1\n16#2:47\n*S KotlinDebug\n*F\n+ 1 ApplicationInfoModule.kt\ncom/stripe/stripeterminal/dagger/ApplicationInfoModule\n*L\n35#1:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0001\u00a2\u0006\u0002\u0008\u0008J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
        "",
        "()V",
        "provideApplicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "lazySdkApplicationInformationFactory",
        "Ldagger/Lazy;",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
        "provideApplicationInformationProvider$sdkmanager_publish",
        "providePosInfoFactory",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "applicationInformationProvider",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideUserAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "sdkmanager_publish"
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideApplicationInformationProvider$sdkmanager_publish(Ldagger/Lazy;)Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;)",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "lazySdkApplicationInformationFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;-><init>(Ldagger/Lazy;)V

    check-cast v0, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-object v0
.end method

.method public final providePosInfoFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;

    .line 47
    const-class v1, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 33
    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/api/DefaultPosInfoFactory;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    return-object v0
.end method

.method public final provideUserAgentProvider(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)Lcom/stripe/jvmcore/environment/UserAgentProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/DefaultUserAgentProvider;-><init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;)V

    check-cast v0, Lcom/stripe/jvmcore/environment/UserAgentProvider;

    return-object v0
.end method
