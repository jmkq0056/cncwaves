.class final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConfigurationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->installConfig(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5
    }
    l = {
        0x278,
        0x73,
        0x82,
        0xa5,
        0xac,
        0xb1
    }
    m = "installConfig"
    n = {
        "this",
        "config",
        "image",
        "updater",
        "$this$withLock_u24default$iv",
        "this",
        "config",
        "image",
        "updater",
        "$this$withLock_u24default$iv",
        "this",
        "config",
        "image",
        "updater",
        "$this$withLock_u24default$iv",
        "downloadedSettings",
        "useConfigHash",
        "this",
        "config",
        "updater",
        "$this$withLock_u24default$iv",
        "currentSettings",
        "downloadedSettings",
        "this",
        "config",
        "updater",
        "$this$withLock_u24default$iv",
        "currentSettings",
        "downloadedSettings",
        "updater",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

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
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->label:I

    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$installConfig$1;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->installConfig(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
