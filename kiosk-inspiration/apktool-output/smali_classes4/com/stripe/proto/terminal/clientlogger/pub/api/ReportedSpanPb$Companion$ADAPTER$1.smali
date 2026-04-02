.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportedSpanPb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportedSpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1684:1\n463#2,7:1685\n1#3:1692\n*S KotlinDebug\n*F\n+ 1 ReportedSpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1\n*L\n846#1:1685,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R-\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00040\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "tagsAdapter",
        "",
        "",
        "getTagsAdapter",
        "()Lcom/squareup/wire/ProtoAdapter;",
        "tagsAdapter$delegate",
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
.field private final tagsAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 735
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/api/client_logger_service.proto"

    .line 729
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.api.ReportedSpanPb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    sget-object p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1$tagsAdapter$2;->INSTANCE:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1$tagsAdapter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;
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

    .line 737
    iget-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->tagsAdapter$delegate:Lkotlin/Lazy;

    .line 738
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 37

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    .line 836
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 838
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 842
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 844
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 845
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 1685
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    move-object/from16 v32, v0

    move-wide v14, v9

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    move-object/from16 v16, v11

    move-object/from16 v21, v16

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v12

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object v9, v3

    move-wide/from16 v10, v19

    move-wide v12, v10

    move-object v3, v2

    .line 1687
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 875
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_2

    .line 872
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_0

    .line 853
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_0

    .line 852
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_0

    .line 851
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    .line 850
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    goto :goto_0

    .line 849
    :pswitch_6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    goto :goto_0

    .line 848
    :pswitch_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    goto :goto_0

    .line 871
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    goto/16 :goto_2

    .line 869
    :pswitch_9
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_0

    .line 856
    :pswitch_a
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/Livemode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v32, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v33, v3

    .line 858
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v33, v3

    move-wide/from16 v35, v10

    .line 867
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 865
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 870
    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 874
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 868
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 866
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 864
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 863
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 862
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 861
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide/from16 v19, v2

    goto :goto_1

    :pswitch_15
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 860
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide/from16 v17, v2

    :goto_1
    move-object/from16 v3, v33

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 873
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_17
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 854
    sget-object v0, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    goto/16 :goto_0

    :goto_2
    move-object/from16 v3, v33

    move-object/from16 v9, v34

    move-wide/from16 v10, v35

    goto/16 :goto_0

    :cond_0
    move-object/from16 v33, v3

    move-object/from16 v34, v9

    move-wide/from16 v35, v10

    .line 1691
    invoke-virtual {v1, v7, v8}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    move-object/from16 v1, v32

    move-object/from16 v32, v5

    .line 878
    new-instance v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    .line 882
    check-cast v16, Ljava/lang/String;

    .line 883
    check-cast v21, Ljava/lang/String;

    .line 884
    check-cast v22, Ljava/lang/String;

    .line 885
    check-cast v29, Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 886
    check-cast v1, Lcom/stripe/proto/model/common/Livemode;

    .line 889
    check-cast v23, Ljava/lang/String;

    .line 890
    check-cast v24, Ljava/lang/String;

    .line 891
    check-cast v25, Ljava/lang/String;

    .line 892
    move-object/from16 v3, v33

    check-cast v3, Lokio/ByteString;

    .line 893
    check-cast v26, Ljava/lang/String;

    .line 894
    move-object/from16 v9, v34

    check-cast v9, Lokio/ByteString;

    .line 895
    check-cast v27, Ljava/lang/String;

    .line 896
    check-cast v28, Ljava/lang/String;

    .line 897
    check-cast v30, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 899
    check-cast v31, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    move-object/from16 v7, v26

    move-object/from16 v26, v9

    move-wide v8, v12

    move-object/from16 v13, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v7

    move-object/from16 v34, v0

    move-object/from16 v33, v6

    move-wide v10, v14

    move-object/from16 v12, v16

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    move-object/from16 v15, v29

    move-object/from16 v29, v30

    move-wide/from16 v6, v35

    move-object/from16 v16, v1

    move-object/from16 v24, v3

    move-object/from16 v30, v4

    .line 878
    invoke-direct/range {v5 .. v34}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x3
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
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    .line 729
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x1a

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 770
    :cond_0
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x1b

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 771
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x1c

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 772
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v4, 0x1d

    iget-object v5, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 773
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v4, 0x1e

    iget-object v5, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 774
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v4, 0x1f

    iget-object v5, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 775
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 776
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    sget-object v4, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    if-eq v0, v4, :cond_7

    sget-object v0, Lcom/stripe/proto/model/common/Livemode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v4, 0x11

    iget-object v5, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 777
    :cond_7
    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 778
    :cond_8
    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 779
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 780
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 781
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 782
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 783
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 784
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 785
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 786
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 787
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 788
    :cond_12
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 789
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x20

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 790
    :cond_13
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 791
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 792
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 729
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 797
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 798
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 799
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x20

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 800
    :cond_0
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 801
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 802
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 803
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 804
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 805
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 806
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 807
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 808
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 809
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 810
    :cond_9
    iget-wide v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 811
    :cond_a
    iget-wide v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 812
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    sget-object v2, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    if-eq v0, v2, :cond_c

    sget-object v0, Lcom/stripe/proto/model/common/Livemode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 813
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 814
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1f

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 815
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1e

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 816
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1d

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 817
    :cond_10
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 818
    :cond_11
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 819
    :cond_12
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 v1, 0x1a

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 729
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 742
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x1a

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 743
    :cond_0
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x1b

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 744
    :cond_1
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x1c

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v5, 0x1d

    iget-object v6, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v5, 0x1e

    iget-object v6, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v5, 0x1f

    iget-object v6, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 748
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x3

    iget-object v6, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 749
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    sget-object v5, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    if-eq v1, v5, :cond_7

    sget-object v1, Lcom/stripe/proto/model/common/Livemode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v5, 0x11

    iget-object v6, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_7
    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_8
    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 753
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 757
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_12
    invoke-direct {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->getTagsAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x20

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_13
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xc

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 729
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 33

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/trace/RequestInfoPb;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v2

    .line 908
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 v25, v0

    goto :goto_1

    :cond_1
    move-object/from16 v25, v2

    .line 909
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    :cond_2
    move-object/from16 v27, v2

    .line 910
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v28

    .line 911
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v29

    .line 912
    sget-object v30, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v31, 0xbffbf

    const/16 v32, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    .line 906
    invoke-static/range {v1 .. v32}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 729
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object p1

    return-object p1
.end method
