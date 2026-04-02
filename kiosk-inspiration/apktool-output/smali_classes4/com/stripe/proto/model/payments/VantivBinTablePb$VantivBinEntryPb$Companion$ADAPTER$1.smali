.class public final Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "VantivBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVantivBinTablePb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VantivBinTablePb.kt\ncom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,787:1\n463#2,7:788\n*S KotlinDebug\n*F\n+ 1 VantivBinTablePb.kt\ncom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1\n*L\n727#1:788,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
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
            "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 635
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/payments/payments.proto"

    .line 629
    const-string v3, "type.googleapis.com/com.stripe.proto.model.payments.VantivBinTablePb.VantivBinEntryPb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    const-string v4, ""

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v24, v22

    move-object v3, v4

    .line 790
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    packed-switch v5, :pswitch_data_0

    .line 748
    invoke-virtual {v0, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 747
    :pswitch_0
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v24, v5

    goto :goto_0

    .line 746
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 745
    :pswitch_2
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v22, v5

    goto :goto_0

    .line 744
    :pswitch_3
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v21, v5

    goto :goto_0

    .line 743
    :pswitch_4
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v20, v5

    goto :goto_0

    .line 742
    :pswitch_5
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v19, v5

    goto :goto_0

    .line 741
    :pswitch_6
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v18, v5

    goto :goto_0

    .line 740
    :pswitch_7
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v17, v5

    goto :goto_0

    .line 739
    :pswitch_8
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v16, v5

    goto/16 :goto_0

    .line 738
    :pswitch_9
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v15, v5

    goto/16 :goto_0

    .line 737
    :pswitch_a
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v14, v5

    goto/16 :goto_0

    .line 736
    :pswitch_b
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v13, v5

    goto/16 :goto_0

    .line 735
    :pswitch_c
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v12, v5

    goto/16 :goto_0

    .line 734
    :pswitch_d
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v11, v5

    goto/16 :goto_0

    .line 733
    :pswitch_e
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 732
    :pswitch_f
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v9, v5

    goto/16 :goto_0

    .line 731
    :pswitch_10
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v8, v5

    goto/16 :goto_0

    .line 730
    :pswitch_11
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v7, v5

    goto/16 :goto_0

    .line 729
    :pswitch_12
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move v6, v5

    goto/16 :goto_0

    .line 794
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v25

    .line 751
    new-instance v5, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    .line 756
    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    .line 769
    move-object/from16 v23, v3

    check-cast v23, Ljava/lang/String;

    .line 751
    invoke-direct/range {v5 .. v25}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;-><init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    .line 629
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 663
    :cond_0
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 664
    :cond_1
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 665
    :cond_2
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 666
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 667
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 668
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 669
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 670
    :cond_7
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 671
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 672
    :cond_9
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 673
    :cond_a
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 674
    :cond_b
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 675
    :cond_c
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 676
    :cond_d
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 677
    :cond_e
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 678
    :cond_f
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 679
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 680
    :cond_11
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 681
    :cond_12
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 686
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 687
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 688
    :cond_1
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 689
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 690
    :cond_3
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 691
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 692
    :cond_5
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 693
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 694
    :cond_7
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 695
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 696
    :cond_9
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 697
    :cond_a
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 698
    :cond_b
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 699
    :cond_c
    iget-boolean v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 700
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 701
    :cond_e
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 702
    :cond_f
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 703
    :cond_10
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 704
    :cond_11
    iget v0, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    if-eqz v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget p2, p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p2, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 639
    iget v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->sequence_number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    :cond_0
    iget v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_1
    iget v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pan_length:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_2
    iget v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->bin_number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->table_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 644
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->debit_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_5
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->check_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_6
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->credit_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_7
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->gift_card_indictor:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 648
    :cond_8
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->commercial_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_9
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->fleet_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    :cond_a
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->prepaid_card_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_b
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->hsa_fsa_account_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    :cond_c
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_bill_pay_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_d
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->ebt_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    :cond_e
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->wic_bin_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_f
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->international_bin_indicator:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->durbin_bin_regulation_indicator:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_11
    iget-boolean v1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean p1, p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->pinless_pos:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_12
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 629
    check-cast p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
    .locals 24

    const-string v0, "value"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    sget-object v21, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v22, 0x7ffff

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 775
    invoke-static/range {v1 .. v23}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;->copy$default(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 629
    check-cast p1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move-result-object p1

    return-object p1
.end method
