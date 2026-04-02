.class public final Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/net/rpc/base/RpcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRpcResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpcResponse.kt\ncom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,284:1\n463#2,7:285\n*S KotlinDebug\n*F\n+ 1 RpcResponse.kt\ncom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1\n*L\n245#1:285,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
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
            "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 209
    const-string v6, "uppsala/src/main/proto/com/stripe/proto/net/rpc/rpc.proto"

    .line 203
    const-string v3, "type.googleapis.com/com.stripe.proto.net.rpc.proto.RpcResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/net/rpc/base/RpcResponse;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 242
    sget-object v2, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 244
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 285
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, ""

    move-wide v15, v6

    move-object v7, v8

    move-wide v8, v15

    move-object v6, v3

    move-object v3, v2

    :goto_0
    move-object v2, v0

    .line 287
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    const/4 v0, 0x1

    if-eq v10, v0, :cond_4

    const/4 v0, 0x2

    if-eq v10, v0, :cond_3

    const/4 v0, 0x3

    if-eq v10, v0, :cond_2

    const/4 v0, 0x4

    if-eq v10, v0, :cond_1

    const/4 v0, 0x5

    if-eq v10, v0, :cond_0

    .line 260
    invoke-virtual {v1, v10}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 259
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 258
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 254
    :cond_2
    :try_start_0
    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 256
    sget-object v11, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v10, v11, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 249
    :cond_3
    :try_start_1
    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 251
    sget-object v11, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v10, v11, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {v1, v4, v5}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v14

    move-object v1, v7

    .line 263
    new-instance v7, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    .line 265
    move-object v10, v2

    check-cast v10, Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 266
    move-object v11, v3

    check-cast v11, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 267
    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 268
    move-object v13, v6

    check-cast v13, Lokio/ByteString;

    .line 263
    invoke-direct/range {v7 .. v14}, Lcom/stripe/proto/net/rpc/base/RpcResponse;-><init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 224
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 225
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 226
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 227
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 232
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 233
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 234
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 235
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 236
    :cond_3
    iget-wide v0, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p2, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/net/rpc/base/RpcResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/net/rpc/base/RpcResponse;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 213
    iget-wide v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v2, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v2, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 203
    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/net/rpc/base/RpcResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/net/rpc/base/RpcResponse;)Lcom/stripe/proto/net/rpc/base/RpcResponse;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 273
    invoke-static/range {v1 .. v10}, Lcom/stripe/proto/net/rpc/base/RpcResponse;->copy$default(Lcom/stripe/proto/net/rpc/base/RpcResponse;JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 203
    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/net/rpc/base/RpcResponse;)Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-result-object p1

    return-object p1
.end method
