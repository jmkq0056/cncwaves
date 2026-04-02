.class final Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultFormsIntegrationLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;->startEndToEndTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
        "t",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;->INSTANCE:Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;

    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger$startEndToEndTimer$1;->invoke(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)V
    .locals 1

    const-string v0, "$this$startTimer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p2, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;->end_to_end_result_by_integration:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-void
.end method
