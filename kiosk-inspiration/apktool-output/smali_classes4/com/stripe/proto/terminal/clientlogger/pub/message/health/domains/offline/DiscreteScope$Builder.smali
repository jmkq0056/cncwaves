.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DiscreteScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "()V",
        "database_error",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "decryption_error",
        "discard_livemode_payment_in_testmode",
        "emv_data_missing_expiration_tags",
        "emv_second_gen_network_error",
        "failed_to_redeem_for_offline_token",
        "missing_offline_arc_for_aid",
        "offline_decline",
        "online_transient_network_error",
        "pi_without_records",
        "reader_paired",
        "record_data_mismatch",
        "serial_number_record_mismatch",
        "soft_deleted_record",
        "unknown_record_type",
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
.field public database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;
    .locals 19

    move-object/from16 v0, p0

    .line 746
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;

    .line 747
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 748
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 749
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 750
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 751
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 752
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 753
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 754
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 755
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 756
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 757
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 758
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 759
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 760
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    move-object/from16 v16, v1

    .line 761
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 762
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 746
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final database_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 498
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 499
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 500
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 501
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 502
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 503
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 504
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 505
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 506
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 507
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 508
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 509
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 510
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final decryption_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 430
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 432
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 433
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 437
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 438
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 440
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 441
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final discard_livemode_payment_in_testmode(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 708
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 709
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 710
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 718
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 720
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final emv_data_missing_expiration_tags(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 569
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 570
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 571
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 572
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 574
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 575
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 576
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 577
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 578
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 579
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final emv_second_gen_network_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 638
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 639
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 640
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 641
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 642
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 644
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 645
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final failed_to_redeem_for_offline_token(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 729
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 731
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 732
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 734
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 736
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 737
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 738
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 739
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 740
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 741
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 742
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final missing_offline_arc_for_aid(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 661
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 663
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 664
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 665
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 666
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 667
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 668
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 669
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final offline_decline(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 616
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 617
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 618
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 619
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 621
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 623
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 625
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 626
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final online_transient_network_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 524
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 530
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 531
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 532
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 534
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 536
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 537
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final pi_without_records(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 451
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 453
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 454
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 456
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 457
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 458
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 459
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 461
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 462
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 463
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final reader_paired(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 688
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 689
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 690
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 692
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 696
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 698
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final record_data_mismatch(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 548
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 550
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 553
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 554
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 555
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 556
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 560
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final serial_number_record_mismatch(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 591
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 592
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 593
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 594
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 595
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 596
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 597
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 600
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 601
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 602
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 603
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final soft_deleted_record(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 403
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 404
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 405
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 406
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 407
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 408
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 409
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 410
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 413
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 414
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 415
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 416
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method

.method public final unknown_record_type(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->unknown_record_type:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 472
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->soft_deleted_record:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 473
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->decryption_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 474
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->pi_without_records:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 475
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->database_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->online_transient_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 477
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->record_data_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 478
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_data_missing_expiration_tags:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 479
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->serial_number_record_mismatch:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->offline_decline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->emv_second_gen_network_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 482
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->missing_offline_arc_for_aid:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 483
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->reader_paired:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->discard_livemode_payment_in_testmode:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 485
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;->failed_to_redeem_for_offline_token:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    return-object p0
.end method
