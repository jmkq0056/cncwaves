.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DiscreteScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;",
        "()V",
        "allowing_mag_stripe",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "currency_mismatch_tipping_config",
        "hardware_transaction_result",
        "magstripe_swipe_attempted",
        "manual_entry_invalid_input",
        "non_card_payment_method_confirmation_result",
        "non_card_payment_method_qr_code_refreshed",
        "online_confirmation_result",
        "partial_auth_approved",
        "premature_card_removal",
        "quit_custom_tipping",
        "reader_interface_changed",
        "reselect_tipping",
        "skip_tipping",
        "surcharge",
        "build",
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


# instance fields
.field public allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final allowing_mag_stripe(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 428
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 430
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 432
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 433
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 437
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 438
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;
    .locals 19

    move-object/from16 v0, p0

    .line 789
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;

    .line 790
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 791
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 792
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 793
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 794
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 795
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 796
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 797
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 798
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 799
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 800
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 801
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 802
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 803
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v16, v1

    .line 804
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 805
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 789
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final currency_mismatch_tipping_config(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 595
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 596
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 597
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 600
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 601
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 602
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 603
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 605
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 607
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 608
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final hardware_transaction_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 621
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 623
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 625
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 626
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 629
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 631
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 632
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 634
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final magstripe_swipe_attempted(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 752
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 753
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 754
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final manual_entry_invalid_input(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 652
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 653
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 657
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 658
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 659
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 660
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 661
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final non_card_payment_method_confirmation_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 698
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 699
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 700
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 708
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 709
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 710
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final non_card_payment_method_qr_code_refreshed(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 722
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 723
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 724
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 725
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 729
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 731
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 732
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 734
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final online_confirmation_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 545
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 546
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 547
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 548
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 550
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 553
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 554
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 555
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 556
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final partial_auth_approved(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 772
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 773
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 774
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 775
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 776
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 777
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 778
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 779
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 780
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 781
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 782
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 783
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 784
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 785
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final premature_card_removal(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 449
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 450
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 451
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 453
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 454
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 456
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 457
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 458
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 459
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 461
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 462
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final quit_custom_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 500
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 501
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 502
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 503
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 504
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 505
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 506
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 508
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 509
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 510
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 511
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 512
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 513
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final reader_interface_changed(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 477
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 478
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 479
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 482
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 483
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 485
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 486
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 487
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 488
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 489
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final reselect_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 523
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 524
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 530
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 531
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 532
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 534
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 536
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final skip_tipping(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 570
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 571
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 572
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 574
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 575
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 576
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 577
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 578
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 579
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 583
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final surcharge(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->surcharge:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->allowing_mag_stripe:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->premature_card_removal:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reader_interface_changed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->quit_custom_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->reselect_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->online_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->skip_tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->currency_mismatch_tipping_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 680
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->hardware_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->manual_entry_invalid_input:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_confirmation_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->non_card_payment_method_qr_code_refreshed:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->magstripe_swipe_attempted:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;->partial_auth_approved:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method
