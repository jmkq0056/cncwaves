.class public final Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CreateSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateSetupIntentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateSetupIntentRequest.kt\ncom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,703:1\n463#2,7:704\n1#3:711\n*S KotlinDebug\n*F\n+ 1 CreateSetupIntentRequest.kt\ncom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1\n*L\n494#1:704,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "metadataAdapter",
        "",
        "",
        "getMetadataAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "metadataAdapter$delegate",
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
        "internal_release"
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
.field private final metadataAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 427
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 421
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.CreateSetupIntentRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    sget-object p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;
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

    .line 429
    iget-object v0, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 430
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    .line 704
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    .line 706
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    move-object/from16 v16, v3

    const/4 v3, -0x1

    if-eq v15, v3, :cond_0

    packed-switch v15, :pswitch_data_0

    .line 508
    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 507
    :pswitch_0
    sget-object v3, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto :goto_1

    .line 506
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 505
    :pswitch_2
    sget-object v3, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 504
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 503
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/api/rest/Mandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 502
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 501
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 500
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 499
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 498
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 497
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    :goto_1
    move-object/from16 v3, v16

    goto :goto_0

    .line 496
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 511
    new-instance v2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    .line 512
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/Boolean;

    .line 513
    check-cast v4, Ljava/lang/String;

    .line 514
    check-cast v5, Ljava/lang/String;

    .line 516
    check-cast v7, Ljava/lang/String;

    .line 518
    check-cast v9, Ljava/lang/String;

    .line 519
    check-cast v10, Lcom/stripe/proto/api/rest/Mandate;

    .line 520
    check-cast v11, Ljava/lang/String;

    .line 521
    check-cast v12, Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 522
    check-cast v13, Ljava/lang/String;

    .line 523
    check-cast v14, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    .line 511
    invoke-direct/range {v2 .. v15}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;)V

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

    .line 421
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 451
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 452
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 453
    :cond_2
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 454
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 455
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 456
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 457
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/api/rest/Mandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 458
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 459
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 460
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 461
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 462
    :cond_9
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 421
    check-cast p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 467
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 468
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 469
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 470
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 471
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/rest/Mandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 472
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 473
    :cond_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 474
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 475
    :cond_6
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 476
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 477
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 478
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 421
    check-cast p2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 434
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_3
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/api/rest/Mandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object p1, p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 421
    check-cast p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object v0, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->confirm:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 530
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->customer:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 531
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->description:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 532
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object v6, v2

    .line 533
    :goto_3
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->usage:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v8, v5

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 534
    :goto_4
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->mandate_data:Lcom/stripe/proto/api/rest/Mandate;

    if-eqz v5, :cond_5

    sget-object v7, Lcom/stripe/proto/api/rest/Mandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/api/rest/Mandate;

    move-object v9, v5

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 535
    :goto_5
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->on_behalf_of:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v10, v5

    goto :goto_6

    :cond_6
    move-object v10, v2

    .line 536
    :goto_6
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v5, :cond_7

    sget-object v7, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    move-object v11, v5

    goto :goto_7

    :cond_7
    move-object v11, v2

    .line 537
    :goto_7
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->return_url:Ljava/lang/String;

    if-eqz v5, :cond_8

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v12, v5

    goto :goto_8

    :cond_8
    move-object v12, v2

    .line 538
    :goto_8
    iget-object v5, v1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->single_use:Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    if-eqz v5, :cond_9

    sget-object v2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    :cond_9
    move-object v13, v2

    .line 539
    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v15, 0x28

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    .line 528
    invoke-static/range {v1 .. v16}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/Mandate;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p1, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method
