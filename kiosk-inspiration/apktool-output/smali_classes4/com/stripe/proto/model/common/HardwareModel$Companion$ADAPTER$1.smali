.class public final Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "HardwareModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/HardwareModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHardwareModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HardwareModel.kt\ncom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,429:1\n463#2,7:430\n1#3:437\n*S KotlinDebug\n*F\n+ 1 HardwareModel.kt\ncom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1\n*L\n372#1:430,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/HardwareModel;",
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
            "Lcom/stripe/proto/model/common/HardwareModel;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 324
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/common/device_model.proto"

    .line 318
    const-string v3, "type.googleapis.com/com.stripe.proto.model.common.HardwareModel"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 22

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 432
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 398
    invoke-virtual {v1, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 394
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/stripe/proto/model/common/SunmiHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 391
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/common/COTSHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 386
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/model/common/SimulatedHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 382
    :pswitch_4
    :try_start_2
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 384
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/model/common/POSInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 376
    :pswitch_6
    :try_start_3
    sget-object v0, Lcom/stripe/proto/model/common/VerifoneHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 378
    sget-object v13, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v12, v13, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :pswitch_7
    sget-object v0, Lcom/stripe/proto/model/common/UnknownHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    .line 436
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v21

    .line 401
    new-instance v12, Lcom/stripe/proto/model/common/HardwareModel;

    .line 402
    move-object v13, v4

    check-cast v13, Lcom/stripe/proto/model/common/UnknownHardware;

    .line 403
    move-object v14, v5

    check-cast v14, Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 404
    move-object v15, v6

    check-cast v15, Lcom/stripe/proto/model/common/POSInfo;

    .line 405
    move-object/from16 v16, v7

    check-cast v16, Lcom/stripe/proto/model/common/BBPosHardware;

    .line 406
    move-object/from16 v17, v8

    check-cast v17, Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 407
    move-object/from16 v18, v9

    check-cast v18, Lcom/stripe/proto/model/common/COTSHardware;

    .line 408
    move-object/from16 v19, v10

    check-cast v19, Lcom/stripe/proto/model/common/SunmiHardware;

    .line 409
    move-object/from16 v20, v11

    check-cast v20, Lcom/stripe/proto/model/common/MorphHardware;

    .line 401
    invoke-direct/range {v12 .. v21}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V

    return-object v12

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

    .line 318
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/HardwareModel;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/stripe/proto/model/common/UnknownHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/stripe/proto/model/common/VerifoneHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/stripe/proto/model/common/POSInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/stripe/proto/model/common/SimulatedHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/stripe/proto/model/common/COTSHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/stripe/proto/model/common/SunmiHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 348
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p2, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/common/HardwareModel;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/HardwareModel;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 353
    sget-object v0, Lcom/stripe/proto/model/common/MorphHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/stripe/proto/model/common/SunmiHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/stripe/proto/model/common/COTSHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/stripe/proto/model/common/SimulatedHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/stripe/proto/model/common/BBPosHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/stripe/proto/model/common/POSInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/stripe/proto/model/common/VerifoneHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/stripe/proto/model/common/UnknownHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p2, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/common/HardwareModel;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/common/HardwareModel;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 328
    sget-object v1, Lcom/stripe/proto/model/common/UnknownHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    sget-object v1, Lcom/stripe/proto/model/common/VerifoneHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    sget-object v1, Lcom/stripe/proto/model/common/POSInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    sget-object v1, Lcom/stripe/proto/model/common/BBPosHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    sget-object v1, Lcom/stripe/proto/model/common/SimulatedHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    sget-object v1, Lcom/stripe/proto/model/common/COTSHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    sget-object v1, Lcom/stripe/proto/model/common/SunmiHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    sget-object v1, Lcom/stripe/proto/model/common/MorphHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 318
    check-cast p1, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/common/HardwareModel;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/common/HardwareModel;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 14

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v0, p1, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/common/UnknownHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/UnknownHardware;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 416
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/common/POSInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/POSInfo;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 417
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/common/SimulatedHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/SimulatedHardware;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v1

    .line 418
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/stripe/proto/model/common/COTSHardware;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/common/COTSHardware;

    :cond_3
    move-object v8, v1

    .line 419
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0xca

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    .line 414
    invoke-static/range {v2 .. v13}, Lcom/stripe/proto/model/common/HardwareModel;->copy$default(Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 318
    check-cast p1, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/common/HardwareModel;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object p1

    return-object p1
.end method
