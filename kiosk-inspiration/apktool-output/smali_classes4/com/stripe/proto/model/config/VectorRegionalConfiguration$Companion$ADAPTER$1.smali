.class public final Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "VectorRegionalConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorRegionalConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorRegionalConfiguration.kt\ncom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,410:1\n463#2,7:411\n1#3:418\n*S KotlinDebug\n*F\n+ 1 VectorRegionalConfiguration.kt\ncom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1\n*L\n365#1:411,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
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
            "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 309
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/vector_config.proto"

    .line 303
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.VectorRegionalConfiguration"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v6, v3

    move v12, v4

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object v7, v5

    move-object v8, v7

    move-object v4, v6

    move-object v5, v4

    .line 413
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 377
    invoke-virtual {v0, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 376
    :pswitch_0
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v17, v9

    goto :goto_0

    .line 375
    :pswitch_1
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 374
    :pswitch_2
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 373
    :pswitch_3
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v14, v9

    goto :goto_0

    .line 372
    :pswitch_4
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v13, v9

    goto :goto_0

    .line 371
    :pswitch_5
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v12, v9

    goto :goto_0

    .line 370
    :pswitch_6
    sget-object v6, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 369
    :pswitch_7
    sget-object v5, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 368
    :pswitch_8
    sget-object v4, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 367
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v18

    move-object v0, v7

    .line 380
    new-instance v7, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    .line 381
    check-cast v3, Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    .line 382
    move-object v9, v4

    check-cast v9, Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 383
    move-object v10, v5

    check-cast v10, Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    .line 384
    move-object v11, v6

    check-cast v11, Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 388
    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 389
    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    move-object v8, v3

    .line 380
    invoke-direct/range {v7 .. v18}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;-><init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v7

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

    .line 303
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 328
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 329
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 330
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 331
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 332
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 333
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 334
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 335
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 336
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 337
    :cond_9
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 342
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 343
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 344
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 345
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 346
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 347
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 348
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 349
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 350
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 351
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p2, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 313
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_3
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_5
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_8
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 303
    check-cast p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 397
    :goto_0
    iget-object v3, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/CaPublicKeyList;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 398
    :goto_1
    iget-object v4, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 399
    :goto_2
    iget-object v5, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v5, :cond_3

    sget-object v2, Lcom/stripe/proto/model/config/CaPublicKeyList;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 400
    :cond_3
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v12, 0x3f0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v14, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v14

    .line 395
    invoke-static/range {v0 .. v13}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->copy$default(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 303
    check-cast p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-result-object p1

    return-object p1
.end method
