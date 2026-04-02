.class public final Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "EnableInputAmountRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnableInputAmountRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnableInputAmountRequest.kt\ncom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n463#2,7:308\n1#3:315\n*S KotlinDebug\n*F\n+ 1 EnableInputAmountRequest.kt\ncom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1\n*L\n263#1:308,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
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
        "sdk-protos_release"
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
            "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 223
    const-string v6, "com/stripe/bbpos/sdk/enable_input_amount.proto"

    .line 217
    const-string v3, "type.googleapis.com/EnableInputAmountRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
    .locals 13

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 259
    sget-object v1, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    .line 308
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    move-object v8, v7

    move-object v4, v1

    :goto_0
    move-object v1, v0

    .line 310
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 279
    invoke-virtual {p1, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 278
    :pswitch_0
    sget-object v0, Lcom/stripe/bbpos/sdk/NoTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 277
    :pswitch_1
    sget-object v0, Lcom/stripe/bbpos/sdk/FixedAmountTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 276
    :pswitch_2
    sget-object v0, Lcom/stripe/bbpos/sdk/PercentageTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 272
    :pswitch_3
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/sdk/OtherAmountOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 274
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 267
    :pswitch_4
    :try_start_1
    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 269
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 265
    :pswitch_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v12

    move-object p1, v5

    .line 282
    new-instance v5, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    .line 284
    check-cast v1, Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 285
    check-cast v4, Lcom/stripe/bbpos/sdk/OtherAmountOption;

    .line 286
    move-object v9, p1

    check-cast v9, Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 287
    move-object v10, v7

    check-cast v10, Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 288
    move-object v11, v8

    check-cast v11, Lcom/stripe/bbpos/sdk/NoTips;

    move-object v7, v1

    move-object v8, v4

    .line 282
    invoke-direct/range {v5 .. v12}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;-><init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V

    return-object v5

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

    .line 217
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 238
    :cond_0
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 239
    :cond_1
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    sget-object v1, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/bbpos/sdk/OtherAmountOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 240
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/sdk/PercentageTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/stripe/bbpos/sdk/FixedAmountTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/stripe/bbpos/sdk/NoTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 243
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 248
    sget-object v0, Lcom/stripe/bbpos/sdk/NoTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/stripe/bbpos/sdk/FixedAmountTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/stripe/bbpos/sdk/PercentageTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    sget-object v1, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/bbpos/sdk/OtherAmountOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 252
    :cond_0
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 253
    :cond_1
    iget v0, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget p2, p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p2, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 227
    iget v1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->setAmountTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_0
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    sget-object v2, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/bbpos/sdk/AmountInputType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_1
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    sget-object v2, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/bbpos/sdk/OtherAmountOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_2
    sget-object v1, Lcom/stripe/bbpos/sdk/PercentageTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    sget-object v1, Lcom/stripe/bbpos/sdk/FixedAmountTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    sget-object v1, Lcom/stripe/bbpos/sdk/NoTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 217
    check-cast p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
    .locals 12

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/bbpos/sdk/PercentageTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/PercentageTips;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 295
    :goto_0
    iget-object v0, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/bbpos/sdk/FixedAmountTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/sdk/FixedAmountTips;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    .line 296
    :goto_1
    iget-object v0, p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/stripe/bbpos/sdk/NoTips;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/bbpos/sdk/NoTips;

    :cond_2
    move-object v8, v1

    .line 297
    sget-object v9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .line 293
    invoke-static/range {v2 .. v11}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;->copy$default(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move-result-object p1

    return-object p1
.end method
