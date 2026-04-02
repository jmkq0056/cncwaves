.class final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;
.super Ljava/lang/Object;
.source "ConfigurationHandler.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;-><init>(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/stripe/hardware/emv/ReaderSettings;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;


# direct methods
.method constructor <init>(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/emv/ReaderSettings;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;->this$0:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->access$getReadTerminalSettingDeferred$p(Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/stripe/hardware/emv/ReaderSettings;

    invoke-virtual {p0, p1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$3;->accept(Lcom/stripe/hardware/emv/ReaderSettings;)V

    return-void
.end method
