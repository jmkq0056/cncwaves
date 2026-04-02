.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->batteryEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "Lkotlin/Pair;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "invoke",
        "(Lkotlin/Pair;)Ljava/lang/Long;"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$3;->invoke(Lkotlin/Pair;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
