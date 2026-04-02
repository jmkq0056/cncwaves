.class public final Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CardPresent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPresent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPresent.kt\ncom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1282:1\n463#2,7:1283\n1#3:1290\n*S KotlinDebug\n*F\n+ 1 CardPresent.kt\ncom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1\n*L\n843#1:1283,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/CardPresent;",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/model/rest/CardPresent;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 731
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 725
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.CardPresent"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/CardPresent;
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    check-cast v14, Ljava/util/List;

    .line 1283
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    .line 1285
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v28, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 869
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 868
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    goto/16 :goto_1

    .line 867
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    goto/16 :goto_1

    .line 866
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    goto/16 :goto_1

    .line 865
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    goto/16 :goto_1

    .line 864
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/model/rest/Wallet;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    goto/16 :goto_1

    .line 863
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_1

    .line 862
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    goto/16 :goto_1

    .line 861
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_1

    .line 860
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 859
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 858
    :pswitch_b
    sget-object v3, Lcom/stripe/proto/model/rest/CardNetworks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 857
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 856
    :pswitch_d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 852
    :pswitch_e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 855
    :pswitch_f
    sget-object v3, Lcom/stripe/proto/model/rest/Receipt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 854
    :pswitch_10
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 853
    :pswitch_11
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 851
    :pswitch_12
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 850
    :pswitch_13
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 849
    :pswitch_14
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 848
    :pswitch_15
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 847
    :pswitch_16
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 846
    :pswitch_17
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 845
    :pswitch_18
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_1
    move-object/from16 v4, v28

    goto/16 :goto_0

    .line 1289
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 872
    new-instance v2, Lcom/stripe/proto/model/rest/CardPresent;

    .line 873
    move-object/from16 v3, v27

    check-cast v3, Ljava/lang/String;

    .line 874
    move-object/from16 v4, v28

    check-cast v4, Ljava/lang/String;

    .line 875
    check-cast v5, Ljava/lang/String;

    .line 876
    check-cast v6, Ljava/lang/Integer;

    .line 877
    check-cast v7, Ljava/lang/Integer;

    .line 878
    check-cast v8, Ljava/lang/String;

    .line 879
    check-cast v9, Ljava/lang/String;

    .line 880
    check-cast v10, Ljava/lang/String;

    .line 881
    check-cast v11, Ljava/lang/String;

    .line 882
    check-cast v12, Ljava/lang/String;

    .line 883
    check-cast v13, Lcom/stripe/proto/model/rest/Receipt;

    .line 885
    check-cast v15, Ljava/lang/String;

    .line 886
    check-cast v16, Lcom/stripe/proto/model/rest/CardNetworks;

    .line 887
    check-cast v17, Ljava/lang/Boolean;

    .line 888
    check-cast v18, Ljava/lang/String;

    .line 889
    check-cast v19, Ljava/lang/String;

    .line 890
    check-cast v20, Ljava/lang/String;

    .line 891
    check-cast v21, Ljava/lang/String;

    .line 892
    check-cast v22, Lcom/stripe/proto/model/rest/Wallet;

    .line 893
    check-cast v23, Ljava/lang/Long;

    .line 894
    check-cast v24, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    .line 895
    check-cast v25, Ljava/lang/String;

    .line 896
    check-cast v26, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 872
    invoke-direct/range {v2 .. v27}, Lcom/stripe/proto/model/rest/CardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 725
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/CardPresent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/CardPresent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 764
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 765
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 766
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 767
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 768
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 769
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 770
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 771
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 772
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 773
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/rest/Receipt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 774
    :cond_a
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 775
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 776
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/proto/model/rest/CardNetworks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 777
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 778
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 779
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 780
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 781
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 782
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/proto/model/rest/Wallet;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 783
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 784
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 785
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 786
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 787
    :cond_16
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 725
    check-cast p2, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/CardPresent;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/CardPresent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 792
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 793
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 794
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 795
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 796
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/rest/Wallet;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 797
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 798
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 799
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 800
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 801
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 802
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/rest/CardNetworks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 803
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 804
    :cond_b
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 805
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/proto/model/rest/Receipt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 806
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 807
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 808
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 809
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 810
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 811
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 812
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 813
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 814
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 815
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 725
    check-cast p2, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/CardPresent;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/CardPresent;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/CardPresent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 735
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 736
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 737
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 739
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/model/rest/Receipt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_a
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->preferred_locales:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->cardholder_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 748
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/stripe/proto/model/rest/CardNetworks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 749
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 753
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/stripe/proto/model/rest/Wallet;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_12
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_13
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 757
    :cond_14
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_15
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_16
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 725
    check-cast p1, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/CardPresent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/CardPresent;
    .locals 29

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    iget-object v0, v1, Lcom/stripe/proto/model/rest/CardPresent;->brand:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 903
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/model/rest/CardPresent;->country:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 908
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->funding:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object v8, v2

    .line 909
    :goto_2
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->generated_card:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v9, v4

    goto :goto_3

    :cond_3
    move-object v9, v2

    .line 910
    :goto_3
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->last4:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v10, v4

    goto :goto_4

    :cond_4
    move-object v10, v2

    .line 911
    :goto_4
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->read_method:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v11, v4

    goto :goto_5

    :cond_5
    move-object v11, v2

    .line 912
    :goto_5
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->receipt:Lcom/stripe/proto/model/rest/Receipt;

    if-eqz v4, :cond_6

    sget-object v5, Lcom/stripe/proto/model/rest/Receipt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/Receipt;

    move-object v12, v4

    goto :goto_6

    :cond_6
    move-object v12, v2

    .line 914
    :goto_6
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->networks:Lcom/stripe/proto/model/rest/CardNetworks;

    if-eqz v4, :cond_7

    sget-object v5, Lcom/stripe/proto/model/rest/CardNetworks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/CardNetworks;

    move-object v15, v4

    goto :goto_7

    :cond_7
    move-object v15, v2

    .line 915
    :goto_7
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->incremental_authorization_supported:Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v16, v4

    goto :goto_8

    :cond_8
    move-object/from16 v16, v2

    .line 916
    :goto_8
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->iin:Ljava/lang/String;

    if-eqz v4, :cond_9

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v4

    goto :goto_9

    :cond_9
    move-object/from16 v17, v2

    .line 917
    :goto_9
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->issuer:Ljava/lang/String;

    if-eqz v4, :cond_a

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v4

    goto :goto_a

    :cond_a
    move-object/from16 v18, v2

    .line 918
    :goto_a
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->description:Ljava/lang/String;

    if-eqz v4, :cond_b

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v19, v4

    goto :goto_b

    :cond_b
    move-object/from16 v19, v2

    .line 919
    :goto_b
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->network:Ljava/lang/String;

    if-eqz v4, :cond_c

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto :goto_c

    :cond_c
    move-object/from16 v20, v2

    .line 920
    :goto_c
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->wallet:Lcom/stripe/proto/model/rest/Wallet;

    if-eqz v4, :cond_d

    sget-object v5, Lcom/stripe/proto/model/rest/Wallet;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/Wallet;

    move-object/from16 v21, v4

    goto :goto_d

    :cond_d
    move-object/from16 v21, v2

    .line 921
    :goto_d
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->amount_authorized:Ljava/lang/Long;

    if-eqz v4, :cond_e

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v22, v4

    goto :goto_e

    :cond_e
    move-object/from16 v22, v2

    .line 922
    :goto_e
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->dynamic_currency_conversion:Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    if-eqz v4, :cond_f

    sget-object v5, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;

    move-object/from16 v23, v4

    goto :goto_f

    :cond_f
    move-object/from16 v23, v2

    .line 923
    :goto_f
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->location:Ljava/lang/String;

    if-eqz v4, :cond_10

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v24, v4

    goto :goto_10

    :cond_10
    move-object/from16 v24, v2

    .line 924
    :goto_10
    iget-object v4, v1, Lcom/stripe/proto/model/rest/CardPresent;->reader_:Ljava/lang/String;

    if-eqz v4, :cond_11

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_11
    move-object/from16 v25, v2

    .line 925
    sget-object v26, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v27, 0x800

    const/16 v28, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    .line 901
    invoke-static/range {v1 .. v28}, Lcom/stripe/proto/model/rest/CardPresent;->copy$default(Lcom/stripe/proto/model/rest/CardPresent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Receipt;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardNetworks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Wallet;Ljava/lang/Long;Lcom/stripe/proto/model/rest/CardPresent$DynamicCurrencyConversionDetails;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/CardPresent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 725
    check-cast p1, Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPresent$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/CardPresent;)Lcom/stripe/proto/model/rest/CardPresent;

    move-result-object p1

    return-object p1
.end method
