.class public final Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Charge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Charge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/Charge;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Charge.kt\ncom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1095:1\n463#2,7:1096\n1#3:1103\n*S KotlinDebug\n*F\n+ 1 Charge.kt\ncom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1\n*L\n991#1:1096,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/model/rest/Charge$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/Charge;",
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
            "Lcom/stripe/proto/model/rest/Charge;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 860
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 854
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.Charge"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    sget-object p1, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

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

    .line 862
    iget-object v0, p0, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 863
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/Charge;
    .locals 33

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 1096
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

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

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    .line 1098
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    move-object/from16 v32, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 1021
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 1020
    :pswitch_1
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v30, v4

    goto/16 :goto_1

    .line 1019
    :pswitch_2
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v4

    goto/16 :goto_1

    .line 1018
    :pswitch_3
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    goto/16 :goto_1

    .line 1017
    :pswitch_4
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    goto/16 :goto_1

    .line 1016
    :pswitch_5
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    goto/16 :goto_1

    .line 1015
    :pswitch_6
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    goto/16 :goto_1

    .line 1014
    :pswitch_7
    sget-object v4, Lcom/stripe/proto/model/rest/Refunds;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    goto/16 :goto_1

    .line 1013
    :pswitch_8
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    goto/16 :goto_1

    .line 1012
    :pswitch_9
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    goto/16 :goto_1

    .line 1011
    :pswitch_a
    sget-object v4, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    goto/16 :goto_1

    .line 1010
    :pswitch_b
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    goto/16 :goto_1

    .line 1009
    :pswitch_c
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    goto/16 :goto_1

    .line 1008
    :pswitch_d
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    goto/16 :goto_1

    .line 1007
    :pswitch_e
    sget-object v4, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    goto/16 :goto_1

    .line 1006
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1005
    :pswitch_10
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    goto/16 :goto_1

    .line 1004
    :pswitch_11
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    goto/16 :goto_1

    .line 1003
    :pswitch_12
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    goto :goto_1

    .line 1002
    :pswitch_13
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto :goto_1

    .line 1001
    :pswitch_14
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    goto :goto_1

    .line 1000
    :pswitch_15
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    goto :goto_1

    .line 999
    :pswitch_16
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    goto :goto_1

    .line 998
    :pswitch_17
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    goto :goto_1

    .line 997
    :pswitch_18
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    goto :goto_1

    .line 996
    :pswitch_19
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    .line 995
    :pswitch_1a
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    .line 994
    :pswitch_1b
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_0

    .line 993
    :pswitch_1c
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v31, v4

    :goto_1
    move-object/from16 v5, v32

    goto/16 :goto_0

    .line 1102
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 1024
    new-instance v2, Lcom/stripe/proto/model/rest/Charge;

    .line 1025
    move-object/from16 v3, v31

    check-cast v3, Ljava/lang/String;

    .line 1026
    move-object/from16 v4, v32

    check-cast v4, Ljava/lang/Long;

    .line 1027
    move-object v5, v6

    check-cast v5, Ljava/lang/Long;

    .line 1028
    move-object v6, v7

    check-cast v6, Ljava/lang/Boolean;

    .line 1029
    move-object v7, v8

    check-cast v7, Ljava/lang/Boolean;

    .line 1030
    move-object v8, v9

    check-cast v8, Ljava/lang/Long;

    .line 1031
    move-object v9, v10

    check-cast v9, Ljava/lang/String;

    .line 1032
    move-object v10, v11

    check-cast v10, Ljava/lang/String;

    .line 1033
    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    .line 1034
    move-object v12, v13

    check-cast v12, Ljava/lang/String;

    .line 1035
    move-object v13, v14

    check-cast v13, Ljava/lang/String;

    .line 1036
    move-object v14, v15

    check-cast v14, Ljava/lang/String;

    .line 1037
    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/Boolean;

    .line 1039
    check-cast v17, Lcom/stripe/proto/model/rest/Source;

    .line 1040
    check-cast v18, Ljava/lang/String;

    .line 1041
    check-cast v19, Ljava/lang/String;

    .line 1042
    check-cast v20, Ljava/lang/String;

    .line 1043
    check-cast v21, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    .line 1044
    check-cast v22, Ljava/lang/Boolean;

    .line 1045
    check-cast v23, Ljava/lang/String;

    .line 1046
    check-cast v24, Lcom/stripe/proto/model/rest/Refunds;

    .line 1047
    check-cast v25, Ljava/lang/Long;

    .line 1048
    check-cast v26, Ljava/lang/String;

    .line 1049
    check-cast v27, Ljava/lang/String;

    .line 1050
    check-cast v28, Ljava/lang/String;

    .line 1051
    check-cast v29, Ljava/lang/String;

    .line 1052
    check-cast v30, Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v16, v1

    .line 1024
    invoke-direct/range {v2 .. v31}, Lcom/stripe/proto/model/rest/Charge;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

    .line 854
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/Charge;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/Charge;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 900
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 901
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 902
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 903
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 904
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 905
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 906
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 907
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 908
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 909
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 910
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 911
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 912
    :cond_c
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 913
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 914
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 915
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 916
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 917
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 918
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 919
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 920
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/proto/model/rest/Refunds;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 921
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 922
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 923
    :cond_16
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 924
    :cond_17
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 925
    :cond_18
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 926
    :cond_19
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1d

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 927
    :cond_1a
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p2, Lcom/stripe/proto/model/rest/Charge;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/Charge;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/Charge;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 932
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1d

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 933
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 934
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 935
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 936
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 937
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 938
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/rest/Refunds;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 939
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 940
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 941
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 942
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 943
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 944
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 945
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 946
    :cond_d
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 947
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 948
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 949
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 950
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 951
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 952
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 953
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 954
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 955
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 956
    :cond_16
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 957
    :cond_17
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 958
    :cond_18
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 959
    :cond_19
    iget-object v0, p2, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 854
    check-cast p2, Lcom/stripe/proto/model/rest/Charge;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/Charge;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/Charge;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/Charge;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 867
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 870
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 872
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 877
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    :cond_c
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 882
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 884
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 885
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 886
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_12
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 888
    :cond_13
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/stripe/proto/model/rest/Refunds;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_14
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 890
    :cond_15
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_16
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1a

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 892
    :cond_17
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1b

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_18
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1c

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 894
    :cond_19
    iget-object v1, p1, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1d

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 854
    check-cast p1, Lcom/stripe/proto/model/rest/Charge;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/Charge;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/Charge;)Lcom/stripe/proto/model/rest/Charge;
    .locals 34

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    iget-object v0, v1, Lcom/stripe/proto/model/rest/Charge;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1059
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/model/rest/Charge;->amount:Ljava/lang/Long;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1060
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/model/rest/Charge;->amount_refunded:Ljava/lang/Long;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1061
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/model/rest/Charge;->captured:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 1062
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/model/rest/Charge;->refunded:Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 1063
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/model/rest/Charge;->created:Ljava/lang/Long;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 1064
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/model/rest/Charge;->currency:Ljava/lang/String;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 1065
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/model/rest/Charge;->description:Ljava/lang/String;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    .line 1066
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor:Ljava/lang/String;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 1067
    :goto_8
    iget-object v11, v1, Lcom/stripe/proto/model/rest/Charge;->receipt_email:Ljava/lang/String;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    .line 1068
    :goto_9
    iget-object v12, v1, Lcom/stripe/proto/model/rest/Charge;->failure_code:Ljava/lang/String;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    .line 1069
    :goto_a
    iget-object v13, v1, Lcom/stripe/proto/model/rest/Charge;->failure_message:Ljava/lang/String;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    .line 1070
    :goto_b
    iget-object v14, v1, Lcom/stripe/proto/model/rest/Charge;->livemode:Ljava/lang/Boolean;

    if-eqz v14, :cond_c

    sget-object v15, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v15, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    .line 1071
    :goto_c
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v15, :cond_d

    sget-object v2, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/Source;

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    .line 1072
    :goto_d
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->payment_intent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v15, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    .line 1073
    :goto_e
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->status:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v15, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    .line 1074
    :goto_f
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->payment_method:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v15, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    .line 1075
    :goto_10
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-object/from16 v20, v0

    if-eqz v15, :cond_11

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    .line 1076
    :goto_11
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->paid:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    if-eqz v15, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    .line 1077
    :goto_12
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->receipt_url:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v15, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    .line 1078
    :goto_13
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->refunds:Lcom/stripe/proto/model/rest/Refunds;

    move-object/from16 v23, v0

    if-eqz v15, :cond_14

    sget-object v0, Lcom/stripe/proto/model/rest/Refunds;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Refunds;

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    .line 1079
    :goto_14
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->application_fee_amount:Ljava/lang/Long;

    move-object/from16 v24, v0

    if-eqz v15, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    .line 1080
    :goto_15
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->balance_transaction:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v15, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    .line 1081
    :goto_16
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->receipt_number:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v15, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    .line 1082
    :goto_17
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->statement_descriptor_suffix:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v15, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    .line 1083
    :goto_18
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->calculated_statement_descriptor:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v15, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    .line 1084
    :goto_19
    iget-object v15, v1, Lcom/stripe/proto/model/rest/Charge;->authorization_code:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v15, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1a

    :cond_1a
    const/16 v16, 0x0

    .line 1085
    :goto_1a
    sget-object v30, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v31, 0x2000

    const/16 v32, 0x0

    const/4 v15, 0x0

    move-object/from16 v33, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v33

    .line 1057
    invoke-static/range {v1 .. v32}, Lcom/stripe/proto/model/rest/Charge;->copy$default(Lcom/stripe/proto/model/rest/Charge;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refunds;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/Charge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 854
    check-cast p1, Lcom/stripe/proto/model/rest/Charge;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/Charge$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/Charge;)Lcom/stripe/proto/model/rest/Charge;

    move-result-object p1

    return-object p1
.end method
