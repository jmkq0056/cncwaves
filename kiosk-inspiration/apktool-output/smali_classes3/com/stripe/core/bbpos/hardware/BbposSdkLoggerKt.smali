.class public final Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt;
.super Ljava/lang/Object;
.source "BbposSdkLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposSdkLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposSdkLogger.kt\ncom/stripe/core/bbpos/hardware/BbposSdkLoggerKt\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,21:1\n436#2,4:22\n457#3,4:26\n*S KotlinDebug\n*F\n+ 1 BbposSdkLogger.kt\ncom/stripe/core/bbpos/hardware/BbposSdkLoggerKt\n*L\n14#1:22,4\n17#1:26,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a,\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000*<\u0008\u0000\u0010\t\"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001\u00a8\u0006\n"
    }
    d2 = {
        "buildsBbposSdkEventLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
        "Lcom/stripe/core/bbpos/hardware/BbposSdkEventLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "BbposSdkEventLogger",
        "hardware_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buildsBbposSdkEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt$buildsBbposSdkEventLogger$1;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt$buildsBbposSdkEventLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 22
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 17
    sget-object p0, Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt$buildsBbposSdkEventLogger$2;->INSTANCE:Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt$buildsBbposSdkEventLogger$2;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 26
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposSdkScope$Builder;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 20
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p0

    return-object p0
.end method
