.class public final Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PaymentIntentExpandedMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentIntentExpandedMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentIntentExpandedMethod.kt\ncom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1093:1\n463#2,7:1094\n1#3:1101\n*S KotlinDebug\n*F\n+ 1 PaymentIntentExpandedMethod.kt\ncom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1\n*L\n983#1:1094,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
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
            "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 852
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 846
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.PaymentIntentExpandedMethod"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    sget-object p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1$metadataAdapter$2;->INSTANCE:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1$metadataAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

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

    .line 854
    iget-object v0, p0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->metadataAdapter$delegate:Lkotlin/Lazy;

    .line 855
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .locals 36

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v0

    check-cast v13, Ljava/util/Map;

    .line 973
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    .line 975
    sget-object v2, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    .line 1094
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v32, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

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

    move-object v5, v2

    .line 1096
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1021
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 1020
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_0

    .line 1019
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_0

    .line 1018
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_0

    .line 1017
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_0

    .line 1016
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_0

    .line 1015
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_0

    .line 1014
    :pswitch_6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_0

    .line 1010
    :pswitch_7
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v33, v5

    .line 1012
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1008
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_0

    :pswitch_9
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1004
    :try_start_1
    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v32, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 1006
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1002
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1001
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1000
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 999
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 998
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 997
    sget-object v0, Lcom/stripe/proto/model/rest/Charges;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v13, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 995
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 994
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 993
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 992
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 991
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 990
    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 989
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 988
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 987
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    .line 986
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v33, v5

    move-object/from16 v35, v7

    .line 985
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v5, v33

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    goto/16 :goto_0

    :cond_0
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    .line 1100
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 1024
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 1025
    move-object/from16 v2, v34

    check-cast v2, Ljava/lang/String;

    .line 1026
    move-object/from16 v3, v35

    check-cast v3, Ljava/lang/Long;

    .line 1027
    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    .line 1028
    move-object v5, v9

    check-cast v5, Ljava/lang/Long;

    .line 1029
    move-object v6, v10

    check-cast v6, Ljava/lang/String;

    .line 1030
    move-object v7, v11

    check-cast v7, Lcom/stripe/proto/model/rest/Source;

    .line 1031
    move-object v8, v12

    check-cast v8, Ljava/lang/String;

    .line 1032
    move-object v9, v14

    check-cast v9, Ljava/lang/String;

    .line 1033
    move-object v10, v15

    check-cast v10, Ljava/lang/String;

    .line 1034
    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/Boolean;

    .line 1035
    move-object/from16 v12, v17

    check-cast v12, Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 1037
    move-object/from16 v14, v18

    check-cast v14, Lcom/stripe/proto/model/rest/Charges;

    .line 1038
    move-object/from16 v15, v19

    check-cast v15, Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 1039
    move-object/from16 v16, v20

    check-cast v16, Ljava/lang/Long;

    .line 1040
    move-object/from16 v17, v21

    check-cast v17, Ljava/lang/Long;

    .line 1041
    move-object/from16 v18, v22

    check-cast v18, Ljava/lang/Long;

    .line 1042
    move-object/from16 v19, v23

    check-cast v19, Ljava/lang/Long;

    .line 1043
    move-object/from16 v20, v32

    check-cast v20, Lcom/stripe/proto/model/rest/Method;

    .line 1044
    move-object/from16 v21, v24

    check-cast v21, Ljava/lang/String;

    .line 1045
    move-object/from16 v22, v33

    check-cast v22, Lcom/stripe/proto/model/rest/Method;

    .line 1046
    move-object/from16 v23, v25

    check-cast v23, Ljava/lang/String;

    .line 1047
    move-object/from16 v24, v26

    check-cast v24, Ljava/lang/String;

    .line 1048
    move-object/from16 v25, v27

    check-cast v25, Ljava/lang/Long;

    .line 1049
    move-object/from16 v26, v28

    check-cast v26, Ljava/lang/String;

    .line 1050
    move-object/from16 v27, v29

    check-cast v27, Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    .line 1051
    move-object/from16 v28, v30

    check-cast v28, Ljava/lang/Long;

    .line 1052
    move-object/from16 v29, v31

    check-cast v29, Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1024
    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 846
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 892
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 893
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 894
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 895
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 896
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 897
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 898
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 899
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 900
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 901
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/rest/ErrorResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 902
    :cond_a
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 903
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/proto/model/rest/Charges;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 904
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 905
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 906
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 907
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 908
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 909
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v0, v1, :cond_11

    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 910
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 911
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 912
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 913
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 914
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 915
    :cond_16
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 916
    :cond_17
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 917
    :cond_18
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 918
    :cond_19
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 919
    :cond_1a
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 846
    check-cast p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 924
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 925
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 926
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 927
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 928
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 929
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 930
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 931
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 932
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 933
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v0, v1, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 934
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 935
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 936
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 937
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 938
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 939
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/proto/model/rest/Charges;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 940
    :cond_f
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 941
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/stripe/proto/model/rest/ErrorResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 942
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 943
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 944
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 945
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 946
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 947
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 948
    :cond_16
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 949
    :cond_17
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 950
    :cond_18
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 951
    :cond_19
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 846
    check-cast p2, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 859
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 861
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 864
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 865
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->receipt_email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/model/rest/ErrorResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 870
    :cond_a
    invoke-direct {p0}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->getMetadataAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/stripe/proto/model/rest/Charges;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 872
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 877
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v2, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v1, v2, :cond_11

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->capture_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->client_secret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_12
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v2, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    if-eq v1, v2, :cond_13

    sget-object v1, Lcom/stripe/proto/model/rest/Method;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->confirmation_method:Lcom/stripe/proto/model/rest/Method;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    :cond_13
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    :cond_14
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 882
    :cond_15
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_16
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 884
    :cond_17
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1a

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 885
    :cond_18
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1b

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 886
    :cond_19
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1c

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 846
    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .locals 33

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    iget-object v0, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1059
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->created:Ljava/lang/Long;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1060
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->status:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 1061
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount:Ljava/lang/Long;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 1062
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->currency:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 1063
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/rest/Source;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 1064
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor:Ljava/lang/String;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 1065
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->description:Ljava/lang/String;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v9, v2

    .line 1067
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    move-object v11, v10

    goto :goto_8

    :cond_8
    move-object v11, v2

    .line 1068
    :goto_8
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v10, :cond_9

    sget-object v12, Lcom/stripe/proto/model/rest/ErrorResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/ErrorResponse;

    move-object v12, v10

    goto :goto_9

    :cond_9
    move-object v12, v2

    .line 1069
    :goto_9
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->charges:Lcom/stripe/proto/model/rest/Charges;

    if-eqz v10, :cond_a

    sget-object v13, Lcom/stripe/proto/model/rest/Charges;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/Charges;

    move-object v14, v10

    goto :goto_a

    :cond_a
    move-object v14, v2

    .line 1070
    :goto_a
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v10, :cond_b

    sget-object v13, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/PaymentMethod;

    move-object v15, v10

    goto :goto_b

    :cond_b
    move-object v15, v2

    .line 1071
    :goto_b
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_capturable:Ljava/lang/Long;

    if-eqz v10, :cond_c

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v16, v10

    goto :goto_c

    :cond_c
    move-object/from16 v16, v2

    .line 1072
    :goto_c
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_received:Ljava/lang/Long;

    if-eqz v10, :cond_d

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v17, v10

    goto :goto_d

    :cond_d
    move-object/from16 v17, v2

    .line 1073
    :goto_d
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->application_fee_amount:Ljava/lang/Long;

    if-eqz v10, :cond_e

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v18, v10

    goto :goto_e

    :cond_e
    move-object/from16 v18, v2

    .line 1074
    :goto_e
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->canceled_at:Ljava/lang/Long;

    if-eqz v10, :cond_f

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v19, v10

    goto :goto_f

    :cond_f
    move-object/from16 v19, v2

    .line 1076
    :goto_f
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->customer:Ljava/lang/String;

    if-eqz v10, :cond_10

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v23, v10

    goto :goto_10

    :cond_10
    move-object/from16 v23, v2

    .line 1077
    :goto_10
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->transfer_group:Ljava/lang/String;

    if-eqz v10, :cond_11

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v24, v10

    goto :goto_11

    :cond_11
    move-object/from16 v24, v2

    .line 1078
    :goto_11
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_tip:Ljava/lang/Long;

    if-eqz v10, :cond_12

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v25, v10

    goto :goto_12

    :cond_12
    move-object/from16 v25, v2

    .line 1079
    :goto_12
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->statement_descriptor_suffix:Ljava/lang/String;

    if-eqz v10, :cond_13

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v26, v10

    goto :goto_13

    :cond_13
    move-object/from16 v26, v2

    .line 1080
    :goto_13
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->payment_method_options:Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    if-eqz v10, :cond_14

    sget-object v13, Lcom/stripe/proto/model/rest/PaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/PaymentMethodOptions;

    move-object/from16 v27, v10

    goto :goto_14

    :cond_14
    move-object/from16 v27, v2

    .line 1081
    :goto_14
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->amount_surcharge:Ljava/lang/Long;

    if-eqz v10, :cond_15

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    move-object/from16 v28, v10

    goto :goto_15

    :cond_15
    move-object/from16 v28, v2

    .line 1082
    :goto_15
    iget-object v10, v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->setup_future_usage:Ljava/lang/String;

    if-eqz v10, :cond_16

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_16
    move-object/from16 v29, v2

    .line 1083
    sget-object v30, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v31, 0x140800

    const/16 v32, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v2, v0

    .line 1057
    invoke-static/range {v1 .. v32}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->copy$default(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 846
    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    move-result-object p1

    return-object p1
.end method
