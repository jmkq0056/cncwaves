.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "old",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "new",
        "invoke",
        "(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Ljava/lang/Boolean;"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "old"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/hardware/status/ReaderInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/hardware/status/ReaderInfo;->isUsbConnected()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2}, Lcom/stripe/hardware/status/ReaderInfo;->isUsbConnected()Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lcom/stripe/hardware/status/ReaderInfo;

    check-cast p2, Lcom/stripe/hardware/status/ReaderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$5;->invoke(Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
