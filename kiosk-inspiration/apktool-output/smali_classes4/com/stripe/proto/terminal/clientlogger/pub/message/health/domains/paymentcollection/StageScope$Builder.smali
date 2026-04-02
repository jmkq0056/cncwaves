.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StageScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "()V",
        "account_selection",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "application_selection",
        "card_present",
        "dcc_selection",
        "display_cart",
        "kernel_processing",
        "language_selection",
        "manual_entry",
        "non_card_payment_method_action_required",
        "non_card_payment_method_selection",
        "online_auth",
        "pin_entry",
        "pos_app_processing",
        "remove_card",
        "tipping_selection",
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
.field public account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final account_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 640
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 641
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 642
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 644
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 645
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 652
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 653
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final application_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 607
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 608
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 609
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 610
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 611
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 612
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 613
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 615
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 616
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 617
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 618
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
    .locals 19

    move-object/from16 v0, p0

    .line 1128
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    .line 1129
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1130
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1131
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1132
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1133
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1134
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1135
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1136
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1137
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1138
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1139
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1140
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1141
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1142
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v16, v1

    .line 1143
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1144
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 1128
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final card_present(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 966
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 967
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 968
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 969
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 970
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 971
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 972
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 973
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 974
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 975
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 976
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 977
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 978
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 979
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final dcc_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 1045
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1046
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1047
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1048
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1049
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1050
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1051
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1052
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1053
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1054
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1055
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1056
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1057
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1058
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final display_cart(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 786
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 787
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 788
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 789
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 790
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 791
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 792
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 793
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 794
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 795
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 796
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 797
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 798
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 799
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final kernel_processing(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 858
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 859
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 860
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 861
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 862
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 863
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 864
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 865
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 866
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 867
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 868
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 869
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 870
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 871
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final language_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 931
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 932
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 933
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 934
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 935
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 936
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 937
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 938
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 939
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 940
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 941
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 942
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 943
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 944
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final manual_entry(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 1007
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1008
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1009
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1010
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1011
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1012
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1013
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1014
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1015
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1016
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1017
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1018
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1019
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1020
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final non_card_payment_method_action_required(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 1111
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1112
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1113
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1114
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1115
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1116
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1117
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1118
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1119
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1120
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1121
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1124
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final non_card_payment_method_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 1078
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1079
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1080
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1081
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1082
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1083
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1084
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1085
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1086
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1087
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1088
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1089
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1090
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 1091
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final online_auth(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 751
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 752
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 753
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 754
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 761
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final pin_entry(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 680
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final pos_app_processing(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 896
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 897
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 898
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 899
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 900
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 901
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 902
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 903
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 904
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 905
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 906
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 907
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 908
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 909
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final remove_card(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 823
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 824
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 825
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 826
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 827
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 828
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 829
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 830
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 831
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 832
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 833
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 834
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 835
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 836
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final tipping_selection(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 718
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 720
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 721
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 722
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 723
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 724
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method
