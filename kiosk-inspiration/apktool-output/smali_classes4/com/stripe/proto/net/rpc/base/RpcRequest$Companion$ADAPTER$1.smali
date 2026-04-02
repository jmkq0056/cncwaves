.class public final Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RpcRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/net/rpc/base/RpcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRpcRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpcRequest.kt\ncom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,529:1\n463#2,7:530\n1#3:537\n*S KotlinDebug\n*F\n+ 1 RpcRequest.kt\ncom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1\n*L\n481#1:530,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
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
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 417
    const-string v6, "uppsala/src/main/proto/com/stripe/proto/net/rpc/rpc.proto"

    .line 411
    const-string v3, "type.googleapis.com/com.stripe.proto.net.rpc.proto.RpcRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/net/rpc/base/RpcRequest;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 530
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object/from16 v16, v1

    move-wide v10, v4

    move-wide/from16 v18, v10

    move-object v8, v6

    move-object v9, v8

    move-object v12, v9

    move-object v13, v7

    move-object v14, v13

    move-object v15, v14

    move-wide/from16 v5, v18

    move-object v4, v12

    move-object v7, v4

    .line 532
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v1

    move-object/from16 v17, v4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 495
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 494
    :pswitch_1
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    goto/16 :goto_1

    .line 493
    :pswitch_2
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    goto/16 :goto_1

    .line 492
    :pswitch_3
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    goto :goto_1

    .line 491
    :pswitch_4
    sget-object v1, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    goto :goto_1

    .line 490
    :pswitch_5
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    .line 489
    :pswitch_6
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    .line 488
    :pswitch_7
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    .line 487
    :pswitch_8
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    goto :goto_1

    .line 486
    :pswitch_9
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_1

    .line 485
    :pswitch_a
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    .line 484
    :pswitch_b
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 483
    :pswitch_c
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide v5, v4

    :goto_1
    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 536
    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v20

    .line 498
    new-instance v4, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    .line 500
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 501
    check-cast v7, Ljava/lang/String;

    .line 502
    check-cast v16, Lokio/ByteString;

    .line 504
    check-cast v8, Ljava/lang/String;

    .line 505
    check-cast v9, Ljava/lang/String;

    .line 506
    check-cast v12, Ljava/lang/String;

    .line 507
    check-cast v13, Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 508
    check-cast v14, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 509
    move-object/from16 v17, v15

    check-cast v17, Lcom/stripe/proto/model/common/DeviceInfo;

    move-object v15, v13

    move-object v13, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v14

    move-object v14, v12

    move-object v12, v8

    move-object v8, v7

    move-object v7, v0

    .line 498
    invoke-direct/range {v4 .. v20}, Lcom/stripe/proto/net/rpc/base/RpcRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/net/rpc/base/RpcRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 438
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x2

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 439
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 440
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x4

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 441
    :cond_3
    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 442
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x6

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 443
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x7

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 444
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 445
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 446
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 447
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 448
    :cond_a
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 449
    :cond_b
    invoke-virtual {p2}, Lcom/stripe/proto/net/rpc/base/RpcRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Lcom/stripe/proto/net/rpc/base/RpcRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 454
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 455
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 456
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 457
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 458
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v4, 0x9

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 459
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x7

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 460
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x6

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 461
    :cond_6
    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, p1, v5, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 462
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x4

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 463
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 464
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v4, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 465
    :cond_a
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p2, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/net/rpc/base/RpcRequest;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/stripe/proto/net/rpc/base/RpcRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 421
    iget-wide v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x3

    iget-object v6, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x4

    iget-object v6, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->content:Lokio/ByteString;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_3
    iget-wide v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->deadline:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x6

    iget-object v6, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_trace_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v5, 0x7

    iget-object v6, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->local_ip_address:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->session_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v5, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_a
    iget-wide v1, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->parent_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_b
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 411
    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/net/rpc/base/RpcRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/proto/net/rpc/base/RpcRequest;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    iget-object v0, v1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/model/trace/RequestInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/trace/RequestInfoPb;

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object v12, v2

    .line 517
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object v13, v2

    .line 518
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/net/rpc/base/RpcRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/DeviceInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_2
    move-object v14, v2

    .line 519
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v18, 0x8ff

    const/16 v19, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v15, 0x0

    .line 515
    invoke-static/range {v1 .. v19}, Lcom/stripe/proto/net/rpc/base/RpcRequest;->copy$default(Lcom/stripe/proto/net/rpc/base/RpcRequest;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/net/rpc/base/RpcRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 411
    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/proto/net/rpc/base/RpcRequest;

    move-result-object p1

    return-object p1
.end method
