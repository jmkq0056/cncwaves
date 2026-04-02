.class public final Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SetReaderDisplayRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetReaderDisplayRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetReaderDisplayRequest.kt\ncom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,323:1\n463#2,7:324\n1#3:331\n*S KotlinDebug\n*F\n+ 1 SetReaderDisplayRequest.kt\ncom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1\n*L\n259#1:324,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 219
    const-string v6, "uppsala/src/main/proto/com/stripe/iot_relay/pub/api/server_driven_api_service.proto"

    .line 213
    const-string v3, "type.googleapis.com/com.stripe.iot_relay.pub.api.SetReaderDisplayRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->DISPLAY_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    .line 324
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v5

    move-object v4, v0

    move-object v5, v8

    .line 326
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    packed-switch v10, :pswitch_data_0

    .line 271
    invoke-virtual {v1, v10}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 270
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 269
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 268
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/sdk/Cart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 264
    :pswitch_3
    :try_start_0
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    sget-object v11, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v10, v11, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 261
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v17

    .line 274
    new-instance v10, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    .line 275
    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 276
    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    .line 277
    move-object v13, v4

    check-cast v13, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    .line 278
    move-object v14, v9

    check-cast v14, Lcom/stripe/proto/model/sdk/Cart;

    .line 279
    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .line 280
    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    .line 274
    invoke-direct/range {v10 .. v17}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;Lcom/stripe/proto/model/sdk/Cart;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 213
    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 235
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    sget-object v2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->DISPLAY_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 236
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 237
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 238
    :cond_4
    sget-object v0, Lcom/stripe/proto/model/sdk/Cart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->cart:Lcom/stripe/proto/model/sdk/Cart;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 239
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 244
    sget-object v0, Lcom/stripe/proto/model/sdk/Cart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->cart:Lcom/stripe/proto/model/sdk/Cart;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 245
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 247
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    sget-object v2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->DISPLAY_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 248
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 249
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 223
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    sget-object v3, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->DISPLAY_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_2
    sget-object v1, Lcom/stripe/proto/model/sdk/Cart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->cart:Lcom/stripe/proto/model/sdk/Cart;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 213
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->cart:Lcom/stripe/proto/model/sdk/Cart;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/model/sdk/Cart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/Cart;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 287
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v9, 0x37

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 285
    invoke-static/range {v1 .. v10}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;->copy$default(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;Lcom/stripe/proto/model/sdk/Cart;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    move-result-object p1

    return-object p1
.end method
