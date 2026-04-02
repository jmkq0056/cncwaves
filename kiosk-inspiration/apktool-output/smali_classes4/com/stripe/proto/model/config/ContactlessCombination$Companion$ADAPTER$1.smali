.class public final Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ContactlessCombination.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ContactlessCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactlessCombination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactlessCombination.kt\ncom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,563:1\n463#2,7:564\n1#3:571\n*S KotlinDebug\n*F\n+ 1 ContactlessCombination.kt\ncom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1\n*L\n509#1:564,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        "aid_paramsAdapter",
        "",
        "",
        "getAid_paramsAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "aid_paramsAdapter$delegate",
        "Lkotlin/Lazy;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final aid_paramsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/config/ContactlessCombination;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 442
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/vector_config.proto"

    .line 436
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.ContactlessCombination"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget-object p1, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1$aid_paramsAdapter$2;->INSTANCE:Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1$aid_paramsAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->aid_paramsAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAid_paramsAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->aid_paramsAdapter$delegate:Lkotlin/Lazy;

    .line 445
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ContactlessCombination;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 508
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v14, v1

    check-cast v14, Ljava/util/Map;

    .line 564
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 566
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    move-object/from16 v16, v3

    const/4 v3, -0x1

    if-eq v15, v3, :cond_0

    packed-switch v15, :pswitch_data_0

    .line 523
    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 522
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->getAid_paramsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v14, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 521
    :pswitch_1
    sget-object v3, Lcom/stripe/proto/model/config/EftposParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 513
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v5, v3

    goto :goto_1

    .line 520
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/model/config/EpalParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 519
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/model/config/InteracParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 518
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/model/config/DiscoverParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 517
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/model/config/JcbParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 516
    :pswitch_7
    sget-object v3, Lcom/stripe/proto/model/config/ExpressPayParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 515
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/model/config/PayWaveParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 514
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/model/config/PayPassParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 512
    :pswitch_a
    sget-object v3, Lcom/stripe/proto/model/config/Tlv;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :goto_1
    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 570
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 526
    new-instance v2, Lcom/stripe/proto/model/config/ContactlessCombination;

    .line 527
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 530
    check-cast v6, Lcom/stripe/proto/model/config/PayPassParameters;

    .line 531
    check-cast v7, Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 532
    check-cast v8, Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 533
    check-cast v9, Lcom/stripe/proto/model/config/JcbParameters;

    .line 534
    check-cast v10, Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 535
    check-cast v11, Lcom/stripe/proto/model/config/InteracParameters;

    .line 536
    check-cast v12, Lcom/stripe/proto/model/config/EpalParameters;

    .line 537
    check-cast v13, Lcom/stripe/proto/model/config/EftposParameters;

    .line 526
    invoke-direct/range {v2 .. v15}, Lcom/stripe/proto/model/config/ContactlessCombination;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ContactlessCombination;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ContactlessCombination;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v0, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 466
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/config/Tlv;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 467
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 468
    :cond_1
    invoke-direct {p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->getAid_paramsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 469
    sget-object v0, Lcom/stripe/proto/model/config/PayPassParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/stripe/proto/model/config/PayWaveParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/stripe/proto/model/config/ExpressPayParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 472
    sget-object v0, Lcom/stripe/proto/model/config/JcbParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 473
    sget-object v0, Lcom/stripe/proto/model/config/DiscoverParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/stripe/proto/model/config/InteracParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/stripe/proto/model/config/EpalParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/stripe/proto/model/config/EftposParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 477
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 436
    check-cast p2, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ContactlessCombination;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ContactlessCombination;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 482
    sget-object v0, Lcom/stripe/proto/model/config/EftposParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/stripe/proto/model/config/EpalParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/stripe/proto/model/config/InteracParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/stripe/proto/model/config/DiscoverParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/stripe/proto/model/config/JcbParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/stripe/proto/model/config/ExpressPayParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/stripe/proto/model/config/PayWaveParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/stripe/proto/model/config/PayPassParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 490
    invoke-direct {p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->getAid_paramsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 491
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 492
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/config/Tlv;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 493
    iget-object v0, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 436
    check-cast p2, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ContactlessCombination;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/ContactlessCombination;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 449
    iget-object v1, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_0
    sget-object v1, Lcom/stripe/proto/model/config/Tlv;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 451
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/config/PayPassParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    sget-object v1, Lcom/stripe/proto/model/config/PayWaveParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    sget-object v1, Lcom/stripe/proto/model/config/ExpressPayParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    sget-object v1, Lcom/stripe/proto/model/config/JcbParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    sget-object v1, Lcom/stripe/proto/model/config/DiscoverParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    sget-object v1, Lcom/stripe/proto/model/config/InteracParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    sget-object v1, Lcom/stripe/proto/model/config/EpalParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    sget-object v1, Lcom/stripe/proto/model/config/EftposParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    invoke-direct {p0}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->getAid_paramsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xc

    iget-object p1, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 436
    check-cast p1, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/ContactlessCombination;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/ContactlessCombination;)Lcom/stripe/proto/model/config/ContactlessCombination;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/model/config/Tlv;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v3

    .line 545
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/stripe/proto/model/config/PayPassParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/PayPassParameters;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 546
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    if-eqz v0, :cond_1

    sget-object v4, Lcom/stripe/proto/model/config/PayWaveParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/PayWaveParameters;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 547
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/stripe/proto/model/config/ExpressPayParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ExpressPayParameters;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v2

    .line 548
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    if-eqz v0, :cond_3

    sget-object v4, Lcom/stripe/proto/model/config/JcbParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/JcbParameters;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v2

    .line 549
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    if-eqz v0, :cond_4

    sget-object v4, Lcom/stripe/proto/model/config/DiscoverParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/DiscoverParameters;

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object v9, v2

    .line 550
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    if-eqz v0, :cond_5

    sget-object v4, Lcom/stripe/proto/model/config/InteracParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/InteracParameters;

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object v10, v2

    .line 551
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    if-eqz v0, :cond_6

    sget-object v4, Lcom/stripe/proto/model/config/EpalParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/EpalParameters;

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object v11, v2

    .line 552
    :goto_6
    iget-object v0, v1, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/stripe/proto/model/config/EftposParameters;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/model/config/EftposParameters;

    :cond_7
    move-object v12, v2

    .line 553
    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v15, 0x805

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 543
    invoke-static/range {v1 .. v16}, Lcom/stripe/proto/model/config/ContactlessCombination;->copy$default(Lcom/stripe/proto/model/config/ContactlessCombination;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ContactlessCombination;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 436
    check-cast p1, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/ContactlessCombination;)Lcom/stripe/proto/model/config/ContactlessCombination;

    move-result-object p1

    return-object p1
.end method
