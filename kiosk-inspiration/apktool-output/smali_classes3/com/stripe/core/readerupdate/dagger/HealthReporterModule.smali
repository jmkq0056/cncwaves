.class public final Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;
.super Ljava/lang/Object;
.source "HealthReporterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J,\u0010\u000c\u001a\u00020\r2\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007J2\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007J,\u0010\u0014\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J,\u0010\u0015\u001a\u00020\r2\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;",
        "",
        "()V",
        "provideArmadaUpdateEndToEndHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;",
        "provideArmadaUpdateStepHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "provideProgressStatusInstallHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "provideTMSUpdateEndToEndHealthReporter",
        "provideTMSUpdateStepHealthReporter",
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideArmadaUpdateEndToEndHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/Endpoint;->ARMADA:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-direct {v0, p1, v1}, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V

    return-object v0
.end method

.method public final provideArmadaUpdateStepHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/Endpoint;->ARMADA:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-direct {v0, p1, v1}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V

    return-object v0
.end method

.method public final provideProgressStatusInstallHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;

    invoke-direct {v0, p1}, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V

    check-cast v0, Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;

    return-object v0
.end method

.method public final provideTMSUpdateEndToEndHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/TMS;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/Endpoint;->TMS:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-direct {v0, p1, v1}, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V

    return-object v0
.end method

.method public final provideTMSUpdateStepHealthReporter(Lcom/stripe/jvmcore/logging/HealthLogger;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/TMS;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;)",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/Endpoint;->TMS:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-direct {v0, p1, v1}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V

    return-object v0
.end method
