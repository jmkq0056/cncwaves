.class final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConfigurationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSetting(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler"
    f = "ConfigurationHandler.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x278,
        0x151
    }
    m = "readTerminalSetting"
    n = {
        "this",
        "$this$withLock_u24default$iv",
        "merchantName",
        "buzzerSoundEnabled",
        "countryCode",
        "domesticDebitAidList",
        "configHash",
        "this",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "Z$0",
        "Z$1",
        "Z$2",
        "Z$3",
        "Z$4",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field Z$2:Z

.field Z$3:Z

.field Z$4:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;


# direct methods
.method constructor <init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->label:I

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$readTerminalSetting$1;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->readTerminalSetting(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
