.class final Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultBluetoothDiscoveryController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "reader",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "deviceName",
        "",
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


# instance fields
.field final synthetic $readerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;",
            "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;->$readerClasses:Ljava/util/List;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/stripe/core/hardware/Reader$BluetoothReader;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;->invoke(Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;->$readerClasses:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    invoke-static {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;->access$onReaderDiscovered(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/core/hardware/Reader$BluetoothReader;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
