.class public final Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;
.super Ljava/lang/Object;
.source "ConfigurationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationHandler.kt\ncom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,627:1\n1#2:628\n125#3:629\n152#3,3:630\n*S KotlinDebug\n*F\n+ 1 ConfigurationHandler.kt\ncom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion\n*L\n474#1:629\n474#1:630,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JU\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00100\u0010*\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00102\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017H\u0001\u00a2\u0006\u0002\u0008\u0018J\u000c\u0010\u0019\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010\u000c\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0016\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u000c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;",
        "",
        "()V",
        "AID_DISABLED",
        "",
        "DEFAULT_BACKGROUND_COLOR",
        "DEFAULT_FOREGROUND_COLOR",
        "GET_CLIENT_CONFIG_DATA_TIMEOUT",
        "Lkotlin/time/Duration;",
        "getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc$annotations",
        "getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc",
        "()J",
        "J",
        "TIMEOUT_DELAY",
        "TIMEOUT_DELAY_LONG",
        "toAidData",
        "",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "aidMapping",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "toAidData$hardware_reactive_release",
        "toLimit",
        "hardware-reactive_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc$annotations()V
    .locals 0

    return-void
.end method

.method private final toLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 465
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "999999999999"

    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc()J
    .locals 2

    .line 463
    invoke-static {}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->access$getGET_CLIENT_CONFIG_DATA_TIMEOUT$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toAidData$hardware_reactive_release(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/util/Map;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "aidMapping"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "logger"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 630
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "aid"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v7, 0x2

    .line 477
    new-array v7, v7, [Lkotlin/Pair;

    const-string v8, "appIndex"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v6

    .line 479
    const-string v6, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v7, v6

    .line 475
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 481
    new-instance v6, Lkotlin/Pair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 629
    check-cast v2, Ljava/lang/Iterable;

    .line 482
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 485
    iget-object v3, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->parameters:Ljava/util/List;

    if-nez v3, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v7, "defaultDDOL"

    const-string v8, "appVersion"

    const-string v9, "defaultTDOL"

    const-string v10, "9F49"

    const-string v11, "9F09"

    const-string v12, "97"

    const/16 v15, 0x71e

    const/16 v16, 0x0

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;

    .line 486
    iget-object v6, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->aid:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_a

    .line 488
    iget-object v13, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->aid:Ljava/lang/String;

    invoke-interface {v6, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v13, "contactTACDefault"

    iget-object v14, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->tac_default:Ljava/lang/String;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v13, "contactTACDenial"

    iget-object v14, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->tac_denial:Ljava/lang/String;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v13, "contactTACOnline"

    iget-object v14, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->tac_online:Ljava/lang/String;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v13, "terminalFloorLimit"

    const-string v14, "00000000"

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v13, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->tlvs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/proto/model/config/Tlv;

    move-object/from16 v17, v3

    .line 497
    iget-object v3, v14, Lcom/stripe/proto/model/config/Tlv;->tag:Ljava/lang/String;

    move-object/from16 v16, v13

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v15, :cond_7

    const v15, 0x1af5f6

    if-eq v13, v15, :cond_5

    const v15, 0x1af672

    if-eq v13, v15, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 502
    :cond_4
    iget-object v3, v14, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v13, v16

    move-object/from16 v3, v17

    const/16 v15, 0x71e

    goto :goto_2

    .line 497
    :cond_5
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 499
    :cond_6
    iget-object v3, v14, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 497
    :cond_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 501
    :cond_8
    iget-object v3, v14, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    invoke-interface {v6, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    move-object/from16 v17, v3

    .line 486
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_a
    move-object/from16 v17, v3

    :goto_4
    if-nez v16, :cond_b

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Index not found for CT AID "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/stripe/proto/model/config/ContactApplicationParameters;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v4, [Lkotlin/Pair;

    invoke-interface {v1, v3, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_b
    move-object/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 512
    :cond_c
    iget-object v0, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->combinations:Ljava/util/List;

    if-nez v0, :cond_e

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/ContactlessCombination;

    .line 513
    iget-object v4, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_1d

    .line 515
    iget-object v6, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v6, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 517
    iget-object v13, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 518
    iget-object v14, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 519
    iget-object v15, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    move-object/from16 p1, v0

    .line 520
    iget-object v0, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    move-object/from16 v17, v2

    .line 521
    iget-object v2, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    move-object/from16 v18, v5

    .line 523
    const-string v5, "contactlessTACOnline"

    const-string v1, "contactlessTACDenial"

    move-object/from16 v19, v9

    const-string v9, "contactlessTACDefault"

    move-object/from16 v20, v12

    const-string v12, "contactlessFloorLimit"

    move-object/from16 v21, v8

    const-string v8, "contactlessCVMRequiredLimit"

    if-eqz v6, :cond_10

    .line 526
    iget-boolean v0, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    const-string v2, "0000000000"

    if-eqz v0, :cond_f

    .line 528
    const-string v0, "F45084800C"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 533
    :cond_f
    const-string v0, "F45080800C"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :goto_6
    iget-object v0, v6, Lcom/stripe/proto/model/config/PayPassParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, v6, Lcom/stripe/proto/model/config/PayPassParameters;->contactless_floor_limit:Ljava/lang/String;

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 543
    :cond_10
    const-string v6, "contactlessTransactionLimit"

    if-eqz v13, :cond_11

    .line 546
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v1, v13, Lcom/stripe/proto/model/config/PayWaveParameters;->contactless_transaction_limit:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v1, v13, Lcom/stripe/proto/model/config/PayWaveParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v1, v13, Lcom/stripe/proto/model/config/PayWaveParameters;->contactless_floor_limit:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_11
    if-eqz v14, :cond_12

    .line 556
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->contactless_transaction_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->contactless_floor_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->tac_default:Ljava/lang/String;

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->tac_denial:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, v14, Lcom/stripe/proto/model/config/ExpressPayParameters;->tac_online:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_12
    if-eqz v15, :cond_13

    .line 569
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v15, Lcom/stripe/proto/model/config/JcbParameters;->contactless_transaction_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v15, Lcom/stripe/proto/model/config/JcbParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v15, Lcom/stripe/proto/model/config/JcbParameters;->contactless_floor_limit:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, v15, Lcom/stripe/proto/model/config/JcbParameters;->tac_default:Ljava/lang/String;

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, v15, Lcom/stripe/proto/model/config/JcbParameters;->tac_denial:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, v15, Lcom/stripe/proto/model/config/JcbParameters;->tac_online:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    if-eqz v0, :cond_14

    .line 582
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v0, Lcom/stripe/proto/model/config/DiscoverParameters;->contactless_transaction_limit:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v2, v0, Lcom/stripe/proto/model/config/DiscoverParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v0, v0, Lcom/stripe/proto/model/config/DiscoverParameters;->contactless_floor_limit:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_14
    if-eqz v2, :cond_1c

    .line 592
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v12, v2, Lcom/stripe/proto/model/config/InteracParameters;->contactless_transaction_limit:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;->Companion:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;

    iget-object v6, v2, Lcom/stripe/proto/model/config/InteracParameters;->contactless_cvm_required_limit:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;->toLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object v0, v2, Lcom/stripe/proto/model/config/InteracParameters;->tac_default:Ljava/lang/String;

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v0, v2, Lcom/stripe/proto/model/config/InteracParameters;->tac_denial:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, v2, Lcom/stripe/proto/model/config/InteracParameters;->tac_online:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :goto_7
    iget-object v0, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/config/Tlv;

    .line 608
    iget-object v2, v1, Lcom/stripe/proto/model/config/Tlv;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x71e

    if-eq v5, v6, :cond_19

    const v15, 0x1af5f6

    const v8, 0x1af672

    if-eq v5, v15, :cond_17

    if-eq v5, v8, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_8

    .line 613
    :cond_16
    iget-object v1, v1, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 608
    :cond_17
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_8

    .line 610
    :cond_18
    iget-object v1, v1, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    move-object/from16 v5, v21

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_19
    move-object/from16 v9, v20

    move-object/from16 v5, v21

    const v8, 0x1af672

    const v15, 0x1af5f6

    .line 608
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_9

    .line 612
    :cond_1a
    iget-object v1, v1, Lcom/stripe/proto/model/config/Tlv;->value_:Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move-object/from16 v21, v5

    move-object/from16 v20, v9

    goto :goto_8

    :cond_1b
    move-object/from16 v2, v19

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    const/16 v6, 0x71e

    const v8, 0x1af672

    const v15, 0x1af5f6

    move-object/from16 v4, p3

    goto :goto_a

    :cond_1c
    move-object/from16 v2, v19

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    const/16 v6, 0x71e

    const v8, 0x1af672

    const v15, 0x1af5f6

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No CTLS message for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Lkotlin/Pair;

    move-object/from16 v4, p3

    invoke-interface {v4, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 513
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_b

    :cond_1d
    move-object/from16 p1, v0

    move-object v4, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object v5, v8

    move-object v2, v9

    move-object v9, v12

    const/16 v6, 0x71e

    const v8, 0x1af672

    const v15, 0x1af5f6

    move-object/from16 v0, v16

    :goto_b
    if-nez v0, :cond_1e

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index not found for CTLS AID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Lkotlin/Pair;

    invoke-interface {v4, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_1e
    move-object/from16 v0, p1

    move-object v1, v4

    move-object v8, v5

    move-object v12, v9

    move-object/from16 v5, v18

    move-object v9, v2

    move-object/from16 v2, v17

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v17, v2

    return-object v17
.end method
