.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposBluetoothAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;->transformDiscoveredReaders(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,630:1\n1603#2,9:631\n1855#2:640\n1856#2:642\n1612#2:643\n1603#2,9:645\n1855#2:654\n1856#2:656\n1612#2:657\n1#3:641\n1#3:644\n1#3:655\n*S KotlinDebug\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3\n*L\n593#1:631,9\n593#1:640\n593#1:642\n593#1:643\n599#1:645,9\n599#1:654\n599#1:656\n599#1:657\n593#1:641\n599#1:655\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "bluetoothDevices",
        "Landroid/bluetooth/BluetoothDevice;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3"
    f = "BbposBluetoothAdapter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-direct {v0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 587
    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->label:I

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 588
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 592
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 631
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 640
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 639
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 593
    sget-object v5, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v5, v4}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 639
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 594
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 595
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getLocationsForDiscovery(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_5

    .line 596
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 645
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 654
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 653
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 600
    sget-object v6, Lcom/stripe/core/hardware/Reader$BluetoothReader;->Companion:Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;

    invoke-virtual {v6, v5}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Companion;->nameFromDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 602
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Lcom/stripe/stripeterminal/external/models/Location;

    if-nez v21, :cond_7

    .line 605
    sget-object v7, Lcom/stripe/stripeterminal/external/models/LocationStatus;->NOT_SET:Lcom/stripe/stripeterminal/external/models/LocationStatus;

    goto :goto_4

    :cond_7
    sget-object v7, Lcom/stripe/stripeterminal/external/models/LocationStatus;->SET:Lcom/stripe/stripeterminal/external/models/LocationStatus;

    :goto_4
    move-object v9, v7

    .line 608
    new-instance v7, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 609
    sget-object v8, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;

    invoke-virtual {v8, v6}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;->fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v6

    const/16 v44, 0xf

    const/16 v45, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, -0x5006

    move-object/from16 v19, v7

    move-object v7, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v5

    .line 608
    invoke-direct/range {v6 .. v45}, Lcom/stripe/stripeterminal/external/models/Reader;-><init>(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;Lcom/stripe/stripeterminal/external/models/LocationStatus;Ljava/lang/String;ZLcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/bluetooth/BluetoothDevice;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/external/models/Location;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v6

    goto :goto_5

    :cond_8
    move-object v7, v4

    :goto_5
    if-eqz v7, :cond_6

    .line 653
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 657
    :cond_9
    check-cast v3, Ljava/util/List;

    return-object v3

    .line 587
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
