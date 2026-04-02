.class public final Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;
.super Ljava/lang/Object;
.source "PassthroughHealthLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPassthroughHealthLoggerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PassthroughHealthLoggerModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,30:1\n436#2,4:31\n436#2,4:39\n457#3,4:35\n457#3,4:43\n*S KotlinDebug\n*F\n+ 1 PassthroughHealthLoggerModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule\n*L\n17#1:31,4\n25#1:39,4\n18#1:35,4\n26#1:43,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0004j\u0002`\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J,\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0004j\u0002`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;",
        "",
        "()V",
        "providePassthroughHealthDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "providePassthroughHealthStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providePassthroughHealthDiscreteLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthDiscreteLogger$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthDiscreteLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 31
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 18
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthDiscreteLogger$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthDiscreteLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 35
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 19
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method

.method public final providePassthroughHealthStageLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthStageLogger$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthStageLogger$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 39
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 26
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthStageLogger$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule$providePassthroughHealthStageLogger$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 27
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method
