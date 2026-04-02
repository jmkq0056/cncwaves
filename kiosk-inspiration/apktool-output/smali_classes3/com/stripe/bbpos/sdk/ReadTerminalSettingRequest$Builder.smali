.class public final Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReadTerminalSettingRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;",
        "()V",
        "acquirer_identifier",
        "",
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
.field public acquirer_identifier:Z

.field public additional_terminal_capabilities:Z

.field public bluetooth_discovery_timeout:Z

.field public buzzer_sound_enabled:Z

.field public config_hash:Z

.field public custom_bluetooth_name_prefix:Z

.field public custom_bluetooth_serial_suffix:Z

.field public domestic_debit_aid_list:Z

.field public firmware_fallback_enabled:Z

.field public firmware_force_chip_enabled:Z

.field public icc_transaction_beep_enabled:Z

.field public keypad_event_beep_enabled:Z

.field public merchant_identifier:Z

.field public merchant_name_and_location:Z

.field public msr_pin_entry_timeout:Z

.field public normal_mode_timeout:Z

.field public spoc_mode_enabled:Z

.field public standby_mode_timeout:Z

.field public terminal_capabilities:Z

.field public terminal_country_code:Z

.field public terminal_identification:Z

.field public terminal_type:Z

.field public transaction_currency_code:Z

.field public transaction_currency_exponent:Z

.field public visa_dynamic_reader_limit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquirer_identifier(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->acquirer_identifier:Z

    return-object p0
.end method

.method public final additional_terminal_capabilities(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 535
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->additional_terminal_capabilities:Z

    return-object p0
.end method

.method public final bluetooth_discovery_timeout(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->bluetooth_discovery_timeout:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->build()Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;
    .locals 29

    move-object/from16 v0, p0

    .line 614
    new-instance v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    .line 615
    iget-boolean v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->acquirer_identifier:Z

    .line 616
    iget-boolean v3, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_country_code:Z

    .line 617
    iget-boolean v4, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_code:Z

    .line 618
    iget-boolean v5, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_exponent:Z

    .line 619
    iget-boolean v6, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_name_and_location:Z

    .line 620
    iget-boolean v7, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_identifier:Z

    .line 621
    iget-boolean v8, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_identification:Z

    .line 622
    iget-boolean v9, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_capabilities:Z

    .line 623
    iget-boolean v10, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_type:Z

    .line 624
    iget-boolean v11, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->additional_terminal_capabilities:Z

    .line 625
    iget-boolean v12, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->normal_mode_timeout:Z

    .line 626
    iget-boolean v13, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->standby_mode_timeout:Z

    .line 627
    iget-boolean v14, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->bluetooth_discovery_timeout:Z

    .line 628
    iget-boolean v15, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->msr_pin_entry_timeout:Z

    move-object/from16 v16, v1

    .line 629
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_fallback_enabled:Z

    move/from16 v17, v1

    .line 630
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_name_prefix:Z

    move/from16 v18, v1

    .line 631
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_serial_suffix:Z

    move/from16 v19, v1

    .line 632
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_force_chip_enabled:Z

    move/from16 v20, v1

    .line 633
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->icc_transaction_beep_enabled:Z

    move/from16 v21, v1

    .line 634
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->keypad_event_beep_enabled:Z

    move/from16 v22, v1

    .line 635
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->spoc_mode_enabled:Z

    move/from16 v23, v1

    .line 636
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->domestic_debit_aid_list:Z

    move/from16 v24, v1

    .line 637
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->visa_dynamic_reader_limit:Z

    move/from16 v25, v1

    .line 638
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->buzzer_sound_enabled:Z

    move/from16 v26, v1

    .line 639
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->config_hash:Z

    .line 640
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v27

    move/from16 v28, v26

    move/from16 v26, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v28

    .line 614
    invoke-direct/range {v1 .. v27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final buzzer_sound_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->buzzer_sound_enabled:Z

    return-object p0
.end method

.method public final config_hash(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 610
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->config_hash:Z

    return-object p0
.end method

.method public final custom_bluetooth_name_prefix(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_name_prefix:Z

    return-object p0
.end method

.method public final custom_bluetooth_serial_suffix(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_serial_suffix:Z

    return-object p0
.end method

.method public final domestic_debit_aid_list(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->domestic_debit_aid_list:Z

    return-object p0
.end method

.method public final firmware_fallback_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 560
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_fallback_enabled:Z

    return-object p0
.end method

.method public final firmware_force_chip_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_force_chip_enabled:Z

    return-object p0
.end method

.method public final icc_transaction_beep_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 580
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->icc_transaction_beep_enabled:Z

    return-object p0
.end method

.method public final keypad_event_beep_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 585
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->keypad_event_beep_enabled:Z

    return-object p0
.end method

.method public final merchant_identifier(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_identifier:Z

    return-object p0
.end method

.method public final merchant_name_and_location(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 510
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_name_and_location:Z

    return-object p0
.end method

.method public final msr_pin_entry_timeout(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->msr_pin_entry_timeout:Z

    return-object p0
.end method

.method public final normal_mode_timeout(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 540
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->normal_mode_timeout:Z

    return-object p0
.end method

.method public final spoc_mode_enabled(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 590
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->spoc_mode_enabled:Z

    return-object p0
.end method

.method public final standby_mode_timeout(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 545
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->standby_mode_timeout:Z

    return-object p0
.end method

.method public final terminal_capabilities(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_capabilities:Z

    return-object p0
.end method

.method public final terminal_country_code(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 495
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_country_code:Z

    return-object p0
.end method

.method public final terminal_identification(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_identification:Z

    return-object p0
.end method

.method public final terminal_type(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_type:Z

    return-object p0
.end method

.method public final transaction_currency_code(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_code:Z

    return-object p0
.end method

.method public final transaction_currency_exponent(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 505
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_exponent:Z

    return-object p0
.end method

.method public final visa_dynamic_reader_limit(Z)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->visa_dynamic_reader_limit:Z

    return-object p0
.end method
