.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ActivateTerminalRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivateTerminalRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivateTerminalRequest.kt\ncom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,484:1\n463#2,7:485\n1#3:492\n*S KotlinDebug\n*F\n+ 1 ActivateTerminalRequest.kt\ncom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1\n*L\n438#1:485,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
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
            "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 382
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 376
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.ActivateTerminalRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v3

    move-object v7, v6

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move/from16 v17, v5

    move-object v4, v7

    move-object v5, v4

    .line 487
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 450
    invoke-virtual {v0, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 445
    :pswitch_0
    sget-object v10, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 444
    :pswitch_1
    sget-object v12, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move/from16 v17, v12

    goto :goto_0

    .line 449
    :pswitch_2
    sget-object v11, Lcom/stripe/proto/api/sdk/Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 448
    :pswitch_3
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 441
    :pswitch_4
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 443
    :pswitch_5
    sget-object v9, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 442
    :pswitch_6
    sget-object v8, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 447
    :pswitch_7
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 446
    :pswitch_8
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 440
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v23

    .line 453
    new-instance v12, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    .line 454
    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 455
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 456
    move-object v15, v8

    check-cast v15, Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    .line 457
    move-object/from16 v16, v9

    check-cast v16, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    .line 459
    move-object/from16 v18, v10

    check-cast v18, Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 460
    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    .line 461
    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/String;

    .line 462
    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/String;

    .line 463
    move-object/from16 v22, v11

    check-cast v22, Lcom/stripe/proto/api/sdk/Address;

    .line 453
    invoke-direct/range {v12 .. v23}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;)V

    return-object v12

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 376
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 401
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 402
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 403
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 404
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 405
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 406
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 407
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 408
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 409
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/api/sdk/Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 410
    :cond_9
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 415
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 416
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 417
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 418
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 419
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 420
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 421
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 422
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 423
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 424
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p2, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 386
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_activation_token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_device_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_3
    iget-boolean v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->fail_if_in_use:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->terminal_ip:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/api/sdk/Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 376
    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 14

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_hardware_info:Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/sdk/PosHardwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/sdk/PosHardwareInfo;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 471
    :goto_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_software_info:Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    if-eqz v1, :cond_1

    sget-object v4, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/sdk/PosSoftwareInfo;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 472
    :goto_1
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_2

    sget-object v5, Lcom/stripe/proto/model/common/VersionInfoPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 473
    :goto_2
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->store_address:Lcom/stripe/proto/api/sdk/Address;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/stripe/proto/api/sdk/Address;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/proto/api/sdk/Address;

    :cond_3
    move-object v10, v2

    .line 474
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0x1d2

    const/4 v13, 0x0

    .line 468
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;->copy$default(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PosHardwareInfo;Lcom/stripe/proto/model/sdk/PosSoftwareInfo;ZLcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/Address;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 376
    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object p1

    return-object p1
.end method
