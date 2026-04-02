.class public final Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "VantivBinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0008J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0008J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0008J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\rJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;",
        "()V",
        "bin_length",
        "",
        "bin_number",
        "check_card_indicator",
        "",
        "commercial_card_indicator",
        "credit_card_indicator",
        "debit_card_indicator",
        "durbin_bin_regulation_indicator",
        "",
        "ebt_indicator",
        "fleet_card_indicator",
        "gift_card_indictor",
        "hsa_fsa_account_indicator",
        "international_bin_indicator",
        "pan_length",
        "pinless_bill_pay_indicator",
        "pinless_pos",
        "prepaid_card_indicator",
        "sequence_number",
        "table_id",
        "wic_bin_indicator",
        "build",
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


# instance fields
.field public bin_length:I

.field public bin_number:I

.field public check_card_indicator:Z

.field public commercial_card_indicator:Z

.field public credit_card_indicator:Z

.field public debit_card_indicator:Z

.field public durbin_bin_regulation_indicator:Ljava/lang/String;

.field public ebt_indicator:Z

.field public fleet_card_indicator:Z

.field public gift_card_indictor:Z

.field public hsa_fsa_account_indicator:Z

.field public international_bin_indicator:Z

.field public pan_length:I

.field public pinless_bill_pay_indicator:Z

.field public pinless_pos:Z

.field public prepaid_card_indicator:Z

.field public sequence_number:I

.field public table_id:Ljava/lang/String;

.field public wic_bin_indicator:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->table_id:Ljava/lang/String;

    .line 503
    iput-object v0, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->durbin_bin_regulation_indicator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bin_length(I)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 514
    iput p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_length:I

    return-object p0
.end method

.method public final bin_number(I)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 524
    iput p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_number:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->build()Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;
    .locals 23

    move-object/from16 v0, p0

    .line 603
    new-instance v1, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;

    .line 604
    iget v2, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->sequence_number:I

    .line 605
    iget v3, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_length:I

    .line 606
    iget v4, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pan_length:I

    .line 607
    iget v5, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->bin_number:I

    .line 608
    iget-object v6, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->table_id:Ljava/lang/String;

    .line 609
    iget-boolean v7, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->debit_card_indicator:Z

    .line 610
    iget-boolean v8, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->check_card_indicator:Z

    .line 611
    iget-boolean v9, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->credit_card_indicator:Z

    .line 612
    iget-boolean v10, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->gift_card_indictor:Z

    .line 613
    iget-boolean v11, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->commercial_card_indicator:Z

    .line 614
    iget-boolean v12, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->fleet_card_indicator:Z

    .line 615
    iget-boolean v13, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->prepaid_card_indicator:Z

    .line 616
    iget-boolean v14, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->hsa_fsa_account_indicator:Z

    .line 617
    iget-boolean v15, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_bill_pay_indicator:Z

    move-object/from16 v16, v1

    .line 618
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->ebt_indicator:Z

    move/from16 v17, v1

    .line 619
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->wic_bin_indicator:Z

    move/from16 v18, v1

    .line 620
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->international_bin_indicator:Z

    move/from16 v19, v1

    .line 621
    iget-object v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->durbin_bin_regulation_indicator:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 622
    iget-boolean v1, v0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_pos:Z

    .line 623
    invoke-virtual {v0}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move-object/from16 v22, v20

    move/from16 v20, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v22

    .line 603
    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb;-><init>(IIIILjava/lang/String;ZZZZZZZZZZZZLjava/lang/String;ZLokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final check_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->check_card_indicator:Z

    return-object p0
.end method

.method public final commercial_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->commercial_card_indicator:Z

    return-object p0
.end method

.method public final credit_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 544
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->credit_card_indicator:Z

    return-object p0
.end method

.method public final debit_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->debit_card_indicator:Z

    return-object p0
.end method

.method public final durbin_bin_regulation_indicator(Ljava/lang/String;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 1

    const-string v0, "durbin_bin_regulation_indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iput-object p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->durbin_bin_regulation_indicator:Ljava/lang/String;

    return-object p0
.end method

.method public final ebt_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 579
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->ebt_indicator:Z

    return-object p0
.end method

.method public final fleet_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->fleet_card_indicator:Z

    return-object p0
.end method

.method public final gift_card_indictor(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->gift_card_indictor:Z

    return-object p0
.end method

.method public final hsa_fsa_account_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 569
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->hsa_fsa_account_indicator:Z

    return-object p0
.end method

.method public final international_bin_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 589
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->international_bin_indicator:Z

    return-object p0
.end method

.method public final pan_length(I)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 519
    iput p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pan_length:I

    return-object p0
.end method

.method public final pinless_bill_pay_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 574
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_bill_pay_indicator:Z

    return-object p0
.end method

.method public final pinless_pos(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 599
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->pinless_pos:Z

    return-object p0
.end method

.method public final prepaid_card_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 564
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->prepaid_card_indicator:Z

    return-object p0
.end method

.method public final sequence_number(I)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 509
    iput p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->sequence_number:I

    return-object p0
.end method

.method public final table_id(Ljava/lang/String;)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 1

    const-string v0, "table_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->table_id:Ljava/lang/String;

    return-object p0
.end method

.method public final wic_bin_indicator(Z)Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/stripe/proto/model/payments/VantivBinTablePb$VantivBinEntryPb$Builder;->wic_bin_indicator:Z

    return-object p0
.end method
