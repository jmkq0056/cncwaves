.class public final Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReadTerminalSettingResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        "()V",
        "acquirer_identifier",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "additional_terminal_capabilities",
        "bluetooth_discovery_timeout",
        "buzzer_sound_enabled",
        "config_hash",
        "custom_bluetooth_name_prefix",
        "custom_bluetooth_serial_suffix",
        "domestic_debit_aid_list",
        "firmware_fallback_enabled",
        "firmware_force_chip_enabled",
        "icc_transaction_beep_enabled",
        "keypad_event_beep_enabled",
        "merchant_identifier",
        "merchant_name_and_location",
        "msr_pin_entry_timeout",
        "normal_mode_timeout",
        "spoc_mode_enabled",
        "standby_mode_timeout",
        "terminal_capabilities",
        "terminal_country_code",
        "terminal_identification",
        "terminal_type",
        "transaction_currency_code",
        "transaction_currency_exponent",
        "visa_dynamic_reader_limit",
        "build",
        "sdk-protos_release"
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
.field public acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field public visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquirer_identifier(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final additional_terminal_capabilities(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final bluetooth_discovery_timeout(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->build()Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
    .locals 29

    move-object/from16 v0, p0

    .line 611
    new-instance v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    .line 612
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 613
    iget-object v3, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 614
    iget-object v4, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 615
    iget-object v5, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 616
    iget-object v6, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 617
    iget-object v7, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 618
    iget-object v8, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 619
    iget-object v9, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 620
    iget-object v10, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 621
    iget-object v11, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 622
    iget-object v12, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 623
    iget-object v13, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 624
    iget-object v14, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 625
    iget-object v15, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v16, v1

    .line 626
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v17, v1

    .line 627
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v18, v1

    .line 628
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v19, v1

    .line 629
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v20, v1

    .line 630
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v21, v1

    .line 631
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v22, v1

    .line 632
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v23, v1

    .line 633
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v24, v1

    .line 634
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v25, v1

    .line 635
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v26, v1

    .line 636
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 637
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v27

    move-object/from16 v28, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v28

    .line 611
    invoke-direct/range {v1 .. v27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final buzzer_sound_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final config_hash(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final custom_bluetooth_name_prefix(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final custom_bluetooth_serial_suffix(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final domestic_debit_aid_list(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final firmware_fallback_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final firmware_force_chip_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final icc_transaction_beep_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final keypad_event_beep_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final merchant_identifier(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final merchant_name_and_location(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final msr_pin_entry_timeout(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final normal_mode_timeout(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final spoc_mode_enabled(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final standby_mode_timeout(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final terminal_capabilities(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final terminal_country_code(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final terminal_identification(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final terminal_type(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final transaction_currency_code(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final transaction_currency_exponent(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method

.method public final visa_dynamic_reader_limit(Lcom/stripe/bbpos/sdk/TerminalSettingValue;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-object p0
.end method
