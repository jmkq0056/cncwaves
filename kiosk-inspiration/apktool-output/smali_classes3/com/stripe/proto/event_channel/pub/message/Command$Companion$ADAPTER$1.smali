.class public final Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Command.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Command.kt\ncom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,762:1\n463#2,7:763\n1#3:770\n*S KotlinDebug\n*F\n+ 1 Command.kt\ncom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1\n*L\n528#1:763,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
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
            "Lcom/stripe/proto/event_channel/pub/message/Command;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 460
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 454
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.Command"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Command;
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object/from16 v16, v6

    move-object v7, v4

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v4, v16

    .line 765
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v17, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 543
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 542
    :pswitch_1
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 532
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto/16 :goto_1

    .line 540
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto :goto_1

    .line 539
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 541
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 538
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 537
    :pswitch_7
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 536
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 535
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 534
    :pswitch_a
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 533
    :pswitch_b
    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 531
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 530
    :pswitch_d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_1
    move-object/from16 v4, v17

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v31

    move-object/from16 v3, v17

    .line 546
    new-instance v17, Lcom/stripe/proto/event_channel/pub/message/Command;

    .line 547
    move-object/from16 v18, v16

    check-cast v18, Ljava/lang/String;

    .line 548
    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    .line 549
    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    .line 550
    move-object/from16 v21, v7

    check-cast v21, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 551
    move-object/from16 v22, v8

    check-cast v22, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 552
    move-object/from16 v23, v9

    check-cast v23, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 553
    move-object/from16 v24, v10

    check-cast v24, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 554
    move-object/from16 v25, v11

    check-cast v25, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 555
    move-object/from16 v26, v12

    check-cast v26, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 556
    move-object/from16 v27, v13

    check-cast v27, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 557
    move-object/from16 v28, v14

    check-cast v28, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 558
    move-object/from16 v29, v6

    check-cast v29, Ljava/lang/String;

    .line 559
    move-object/from16 v30, v15

    check-cast v30, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 546
    invoke-direct/range {v17 .. v31}, Lcom/stripe/proto/event_channel/pub/message/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 454
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/Command;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 482
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 483
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 484
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 485
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 486
    :cond_4
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 494
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 499
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 500
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 501
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 503
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 506
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 507
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 508
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 509
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 510
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 511
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/Command;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/Command;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 464
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_2
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 454
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/Command;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/Command;)Lcom/stripe/proto/event_channel/pub/message/Command;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 566
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 567
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v2

    .line 568
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v2

    .line 569
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object v9, v2

    .line 570
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object v10, v2

    .line 571
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    if-eqz v0, :cond_6

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object v11, v2

    .line 572
    :goto_6
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-object v12, v0

    goto :goto_7

    :cond_7
    move-object v12, v2

    .line 573
    :goto_7
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    :cond_8
    move-object v14, v2

    .line 574
    sget-object v15, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v16, 0x807

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 564
    invoke-static/range {v1 .. v17}, Lcom/stripe/proto/event_channel/pub/message/Command;->copy$default(Lcom/stripe/proto/event_channel/pub/message/Command;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 454
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/Command;)Lcom/stripe/proto/event_channel/pub/message/Command;

    move-result-object p1

    return-object p1
.end method
