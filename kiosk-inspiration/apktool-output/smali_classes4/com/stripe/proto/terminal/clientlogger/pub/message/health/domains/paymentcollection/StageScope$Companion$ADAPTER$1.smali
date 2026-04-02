.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "StageScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStageScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StageScope.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1298:1\n463#2,7:1299\n1#3:1306\n*S KotlinDebug\n*F\n+ 1 StageScope.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1\n*L\n1232#1:1299,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
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
        "common_release"
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1156
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/health/domains/paymentcollection/paymentcollection_health.proto"

    .line 1150
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
    .locals 36

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
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

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    .line 1301
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v19, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 1249
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 1248
    :pswitch_0
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 1247
    :pswitch_1
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 1246
    :pswitch_2
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 1245
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 1244
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 1243
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1242
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 1241
    :pswitch_7
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 1240
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 1239
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 1238
    :pswitch_a
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 1237
    :pswitch_b
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 1236
    :pswitch_c
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 1235
    :pswitch_d
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 1234
    :pswitch_e
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_1
    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 1305
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v35

    move-object/from16 v3, v19

    .line 1252
    new-instance v19, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    .line 1253
    move-object/from16 v20, v18

    check-cast v20, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1254
    move-object/from16 v21, v3

    check-cast v21, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1255
    move-object/from16 v22, v5

    check-cast v22, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1256
    move-object/from16 v23, v6

    check-cast v23, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1257
    move-object/from16 v24, v7

    check-cast v24, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1258
    move-object/from16 v25, v8

    check-cast v25, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1259
    move-object/from16 v26, v9

    check-cast v26, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1260
    move-object/from16 v27, v10

    check-cast v27, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1261
    move-object/from16 v28, v11

    check-cast v28, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1262
    move-object/from16 v29, v12

    check-cast v29, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1263
    move-object/from16 v30, v13

    check-cast v30, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1264
    move-object/from16 v31, v14

    check-cast v31, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1265
    move-object/from16 v32, v15

    check-cast v32, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1266
    move-object/from16 v33, v16

    check-cast v33, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1267
    move-object/from16 v34, v17

    check-cast v34, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1252
    invoke-direct/range {v19 .. v35}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v19

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1150
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1180
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1181
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1182
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1183
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1184
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1185
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1186
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1187
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1188
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1189
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1190
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1191
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1192
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1193
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1194
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1150
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 1199
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1200
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1201
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1202
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1203
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1204
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1205
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1206
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1207
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1208
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1209
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1210
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1211
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1212
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1213
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1150
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 1160
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1161
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1162
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1163
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1164
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1165
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1167
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1168
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1169
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1172
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1173
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1174
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1150
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1274
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1275
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1276
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 1277
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 1278
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 1279
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 1280
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    .line 1281
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 1282
    :goto_8
    iget-object v11, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    .line 1283
    :goto_9
    iget-object v12, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    .line 1284
    :goto_a
    iget-object v13, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    .line 1285
    :goto_b
    iget-object v14, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v14, :cond_c

    sget-object v15, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v15, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    .line 1286
    :goto_c
    iget-object v15, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v15, :cond_d

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object v15, v2

    goto :goto_d

    :cond_d
    const/4 v15, 0x0

    .line 1287
    :goto_d
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v2, :cond_e

    move-object/from16 v17, v0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    goto :goto_e

    :cond_e
    move-object v2, v0

    const/16 v16, 0x0

    .line 1288
    :goto_e
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 1272
    invoke-virtual/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1150
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-result-object p1

    return-object p1
.end method
