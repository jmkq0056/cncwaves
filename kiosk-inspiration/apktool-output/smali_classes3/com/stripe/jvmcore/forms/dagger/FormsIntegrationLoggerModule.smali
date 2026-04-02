.class public final Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;
.super Ljava/lang/Object;
.source "FormsIntegrationLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormsIntegrationLoggerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormsIntegrationLoggerModule.kt\ncom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule\n+ 2 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder\n+ 3 HealthLogger.kt\ncom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder\n*L\n1#1,33:1\n436#2,4:34\n457#3,4:38\n*S KotlinDebug\n*F\n+ 1 FormsIntegrationLoggerModule.kt\ncom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule\n*L\n20#1:34,4\n21#1:38,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J1\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;",
        "",
        "()V",
        "provideFormsIntegrationLogger",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        "stageHealthMetrics",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        "Lcom/stripe/jvmcore/forms/logger/FormStageHealthMetrics;",
        "provideFormsStageHealthMetrics",
        "builder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "provideFormsStageHealthMetrics$forms",
        "forms"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;->INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideFormsIntegrationLogger(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;)",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "stageHealthMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V

    check-cast v0, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    return-object v0
.end method

.method public final provideFormsStageHealthMetrics$forms(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$1;->INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 34
    new-instance v1, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 21
    sget-object p1, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$2;->INSTANCE:Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule$provideFormsStageHealthMetrics$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 38
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-class v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;

    const-class v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 22
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;->build()Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    return-object p1
.end method
