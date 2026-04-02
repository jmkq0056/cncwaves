.class public final Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ResourceIdPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ResourceIdPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceIdPb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceIdPb.kt\ncom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1958:1\n463#2,7:1959\n*S KotlinDebug\n*F\n+ 1 ResourceIdPb.kt\ncom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1\n*L\n336#1:1959,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
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
            "Lcom/stripe/proto/model/common/ResourceIdPb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 288
    const-string v6, "uppsala/src/main/proto/com/stripe/proto/model/common/common_model.proto"

    .line 282
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.ResourceIdPb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/ResourceIdPb;
    .locals 22

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 329
    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 331
    sget-object v3, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1959
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v4

    const-string v6, ""

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v6, v3

    move-object v3, v2

    :goto_0
    move-object v2, v0

    .line 1961
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 358
    invoke-virtual {v1, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 348
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 357
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    .line 356
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    .line 355
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 354
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 350
    :pswitch_5
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 352
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :pswitch_6
    :try_start_1
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 346
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 339
    :pswitch_7
    :try_start_2
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 341
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 1965
    :cond_0
    invoke-virtual {v1, v4, v5}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v21

    .line 361
    new-instance v12, Lcom/stripe/proto/model/common/ResourceIdPb;

    .line 362
    move-object v13, v2

    check-cast v13, Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 363
    move-object v14, v3

    check-cast v14, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 364
    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .line 365
    move-object/from16 v16, v6

    check-cast v16, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 366
    move-object/from16 v17, v8

    check-cast v17, Ljava/lang/String;

    .line 367
    move-object/from16 v18, v9

    check-cast v18, Ljava/lang/String;

    .line 368
    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/String;

    .line 369
    move-object/from16 v20, v11

    check-cast v20, Ljava/lang/String;

    .line 361
    invoke-direct/range {v12 .. v21}, Lcom/stripe/proto/model/common/ResourceIdPb;-><init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 282
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/ResourceIdPb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/ResourceIdPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 305
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 306
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 307
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 308
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 309
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 310
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 311
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 312
    :cond_7
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p2, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/ResourceIdPb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/ResourceIdPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 317
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 318
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 319
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 320
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 321
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    if-eq v0, v2, :cond_4

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 322
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 323
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 324
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p2, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/ResourceIdPb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/ResourceIdPb;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 292
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v3, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    if-eq v1, v3, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object p1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_7
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 282
    check-cast p1, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/ResourceIdPb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/ResourceIdPb;)Lcom/stripe/proto/model/common/ResourceIdPb;
    .locals 13

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    .line 374
    invoke-static/range {v1 .. v12}, Lcom/stripe/proto/model/common/ResourceIdPb;->copy$default(Lcom/stripe/proto/model/common/ResourceIdPb;Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/ResourceIdPb;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 282
    check-cast p1, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/ResourceIdPb;)Lcom/stripe/proto/model/common/ResourceIdPb;

    move-result-object p1

    return-object p1
.end method
