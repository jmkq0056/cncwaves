.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentsScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;",
        "()V",
        "final_confirm",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "handle_authorisation_response",
        "on_pin_entry_result",
        "on_request_display_text",
        "on_request_final_confirm",
        "on_request_online_process",
        "on_request_pin_entry",
        "on_request_select_account_type",
        "on_request_select_application",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;",
        "on_return_batch_data",
        "on_return_check_card_result",
        "on_return_reversal_data",
        "on_return_transaction_result",
        "select_account_type",
        "select_application",
        "start_reader",
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
.field public final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

.field public on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;
    .locals 20

    move-object/from16 v0, p0

    .line 810
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;

    .line 811
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 812
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 813
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 814
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 815
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 816
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 817
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 818
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 819
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 820
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 821
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 822
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 823
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 824
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v16, v1

    .line 825
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v17, v1

    .line 826
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 827
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    .line 810
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final final_confirm(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 574
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 575
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 576
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 577
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 578
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 579
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 583
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 584
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 585
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 586
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 587
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final handle_authorisation_response(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 680
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_pin_entry_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 623
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 625
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 626
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 629
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 631
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 632
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 634
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 635
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 636
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_display_text(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 744
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 745
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 746
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 752
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 753
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 754
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_final_confirm(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 550
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 553
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 554
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 555
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 556
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 560
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 561
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 562
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 563
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_online_process(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 652
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 653
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 657
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 658
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 659
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 660
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_pin_entry(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 597
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 600
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 601
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 602
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 603
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 605
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 607
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 608
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 609
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 610
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 611
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_select_account_type(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 502
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 503
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 504
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 505
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 506
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 508
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 509
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 510
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 511
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 512
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 513
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 514
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 515
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_request_select_application(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 454
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 456
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 457
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 458
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 459
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 461
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 462
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 463
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 464
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 465
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 466
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 467
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_return_batch_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 768
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 769
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 770
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 771
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 772
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 773
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 774
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 775
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 776
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 777
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 778
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 779
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 780
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 781
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 782
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_return_check_card_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 430
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 432
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 433
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 437
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 438
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 440
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 441
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 442
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_return_reversal_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 696
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 698
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 699
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 700
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 708
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final on_return_transaction_result(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 720
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 721
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 722
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 723
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 724
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 725
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 729
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 731
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 732
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final select_account_type(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 530
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 531
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 532
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 534
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 536
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 537
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 538
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 539
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final select_application(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 478
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 479
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 482
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 483
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 485
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 486
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 487
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 488
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 489
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 490
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 491
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final start_reader(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->start_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 792
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_check_card_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 793
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;

    .line 794
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 795
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 796
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->select_account_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 797
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 798
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->final_confirm:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 799
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 800
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_pin_entry_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 801
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_online_process:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 802
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->handle_authorisation_response:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 803
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_reversal_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 804
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_transaction_result:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 805
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_request_display_text:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 806
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;->on_return_batch_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method
