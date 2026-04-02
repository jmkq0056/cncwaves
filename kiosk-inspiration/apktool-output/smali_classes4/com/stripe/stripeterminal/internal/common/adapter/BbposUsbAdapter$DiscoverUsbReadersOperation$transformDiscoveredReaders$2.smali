.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposUsbAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->transformDiscoveredReaders(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Landroid/hardware/usb/UsbDevice;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Landroid/hardware/usb/UsbDevice;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposUsbAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,622:1\n1603#2,9:623\n1855#2:632\n1856#2:634\n1612#2:635\n1603#2,9:636\n1855#2:645\n1856#2:647\n1612#2:648\n1#3:633\n1#3:646\n*S KotlinDebug\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2\n*L\n425#1:623,9\n425#1:632\n425#1:634\n425#1:635\n426#1:636,9\n426#1:645\n426#1:647\n426#1:648\n425#1:633\n426#1:646\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "old",
        "",
        "Landroid/hardware/usb/UsbDevice;",
        "new",
        "invoke",
        "(Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "old"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 632
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 631
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 425
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 631
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 635
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 623
    check-cast v1, Ljava/lang/Iterable;

    .line 425
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 426
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 645
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 644
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 426
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 644
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 636
    check-cast v2, Ljava/lang/Iterable;

    .line 426
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    const/4 v3, 0x2

    .line 429
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "newDiscoveredReaders"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 430
    const-string v4, "previouslyDiscoveredReaders"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 427
    const-string v4, "transformDiscoveredReaders"

    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_4

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 423
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;->invoke(Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
