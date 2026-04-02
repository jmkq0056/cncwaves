.class public final Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;
.super Ljava/lang/Object;
.source "DefaultFormsIntegrationLogger.kt"

# interfaces
.implements Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B+\u0008\u0007\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        "stageHealthMetrics",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        "Lcom/stripe/jvmcore/forms/logger/FormStageHealthMetrics;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "endToEndResultTimer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "finishEndToEndTimer",
        "",
        "result",
        "",
        "startEndToEndTimer",
        "Companion",
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
.field public static final Companion:Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$Companion;

.field private static final OPERATION_RESULT_TAG:Ljava/lang/String; = "OperationResult"


# instance fields
.field private endToEndResultTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

.field private final stageHealthMetrics:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->Companion:Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stageHealthMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->stageHealthMetrics:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method


# virtual methods
.method public finishEndToEndTimer(Ljava/lang/String;)V
    .locals 8

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->endToEndResultTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v2, :cond_0

    .line 20
    iget-object v1, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->stageHealthMetrics:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 23
    const-string v0, "OperationResult"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->endToEndResultTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method

.method public startEndToEndTimer()V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->stageHealthMetrics:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v1, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;->INSTANCE:Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->endToEndResultTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method
