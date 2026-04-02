.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ImageRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRef.kt\ncom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,320:1\n463#2,7:321\n*S KotlinDebug\n*F\n+ 1 ImageRef.kt\ncom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1\n*L\n253#1:321,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 217
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/image.proto"

    .line 211
    const-string v3, "type.googleapis.com/com.stripe.terminal.terminal.pub.message.common.ImageRef"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 321
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    move-object v4, v0

    .line 323
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_5

    const/4 v0, 0x1

    if-eq v9, v0, :cond_4

    const/4 v0, 0x2

    if-eq v9, v0, :cond_3

    const/4 v0, 0x3

    if-eq v9, v0, :cond_2

    const/4 v0, 0x4

    if-eq v9, v0, :cond_1

    const/4 v0, 0x5

    if-eq v9, v0, :cond_0

    .line 264
    invoke-virtual {v1, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 260
    :cond_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 258
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 257
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 256
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 255
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v15

    .line 267
    new-instance v9, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 268
    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 269
    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    .line 270
    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    .line 271
    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    .line 272
    move-object v14, v4

    check-cast v14, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    .line 267
    invoke-direct/range {v9 .. v15}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;Lokio/ByteString;)V

    return-object v9
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 231
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 232
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 233
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 234
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 235
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 240
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 241
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 242
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 243
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 244
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 221
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 222
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_color:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->file_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->IMAGE_FORMAT_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->image_format:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 211
    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 277
    invoke-static/range {v1 .. v9}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object p1

    return-object p1
.end method
