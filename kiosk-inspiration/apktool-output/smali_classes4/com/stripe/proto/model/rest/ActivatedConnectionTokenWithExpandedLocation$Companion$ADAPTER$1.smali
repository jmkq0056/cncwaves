.class public final Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ActivatedConnectionTokenWithExpandedLocation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivatedConnectionTokenWithExpandedLocation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivatedConnectionTokenWithExpandedLocation.kt\ncom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,557:1\n463#2,7:558\n1#3:565\n*S KotlinDebug\n*F\n+ 1 ActivatedConnectionTokenWithExpandedLocation.kt\ncom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1\n*L\n387#1:558,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
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
            "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 335
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/connection.proto"

    .line 329
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.ActivatedConnectionTokenWithExpandedLocation"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
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

    .line 560
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 398
    invoke-virtual {v0, v12}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 397
    :pswitch_0
    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 396
    :pswitch_1
    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 395
    :pswitch_2
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 394
    :pswitch_3
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 393
    :pswitch_4
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 392
    :pswitch_5
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 391
    :pswitch_6
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 390
    :pswitch_7
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 389
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v22

    .line 401
    new-instance v12, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    .line 402
    move-object v13, v3

    check-cast v13, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    .line 403
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 404
    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 405
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/String;

    .line 406
    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    .line 407
    move-object/from16 v18, v8

    check-cast v18, Ljava/lang/Boolean;

    .line 408
    move-object/from16 v19, v9

    check-cast v19, Ljava/lang/String;

    .line 409
    move-object/from16 v20, v10

    check-cast v20, Ljava/lang/String;

    .line 410
    move-object/from16 v21, v11

    check-cast v21, Ljava/lang/String;

    .line 401
    invoke-direct/range {v12 .. v22}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;-><init>(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v12

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 329
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 353
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 354
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 355
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 357
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 358
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 359
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 360
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 361
    :cond_8
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 366
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 367
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 368
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 369
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 370
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 371
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 372
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 373
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 374
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 339
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_rpc_session_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_8
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 329
    check-cast p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;
    .locals 13

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 420
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    .line 421
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v1

    .line 422
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object v9, v1

    .line 423
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_4
    move-object v10, v1

    const/4 v11, 0x0

    .line 425
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 415
    invoke-virtual/range {v2 .. v12}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->copy(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 329
    check-cast p1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-result-object p1

    return-object p1
.end method
