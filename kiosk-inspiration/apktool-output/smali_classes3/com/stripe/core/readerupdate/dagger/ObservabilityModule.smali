.class public final Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;
.super Ljava/lang/Object;
.source "ObservabilityModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservabilityModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservabilityModule.kt\ncom/stripe/core/readerupdate/dagger/ObservabilityModule\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,33:1\n436#2,4:34\n436#2,4:42\n457#3,4:38\n457#3,4:46\n*S KotlinDebug\n*F\n+ 1 ObservabilityModule.kt\ncom/stripe/core/readerupdate/dagger/ObservabilityModule\n*L\n17#1:34,4\n26#1:42,4\n20#1:38,4\n29#1:46,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;",
        "",
        "()V",
        "provideEndToEndHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "provideSingleUpdateHealthLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "readerupdate_release"
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideEndToEndHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideEndToEndHealthLogger$1;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideEndToEndHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 34
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 20
    sget-object p1, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideEndToEndHealthLogger$2;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideEndToEndHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 38
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 21
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final provideSingleUpdateHealthLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideSingleUpdateHealthLogger$1;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideSingleUpdateHealthLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 42
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 29
    sget-object p1, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideSingleUpdateHealthLogger$2;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ObservabilityModule$provideSingleUpdateHealthLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 46
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 30
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method
