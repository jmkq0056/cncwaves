.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BbposSystemProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u001a\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;",
        "()V",
        "allowed_settings_intent_adb",
        "",
        "auto_reboot_enable",
        "bbpos_debug",
        "close_bootloader",
        "devkit_watermark_move_interval_seconds",
        "disable_volume_key",
        "enable_apk_permission",
        "enable_apk_verify",
        "firmware_version",
        "is_device_configured",
        "p2pe_apk_verify",
        "p2pe_rom_verify",
        "press_recovery_enable",
        "random_reboot_enable",
        "reload_certificates_without_reboot",
        "statusbar_disable",
        "unknown_system_properties",
        "",
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
.field public allowed_settings_intent_adb:Ljava/lang/String;

.field public auto_reboot_enable:Ljava/lang/String;

.field public bbpos_debug:Ljava/lang/String;

.field public close_bootloader:Ljava/lang/String;

.field public devkit_watermark_move_interval_seconds:Ljava/lang/String;

.field public disable_volume_key:Ljava/lang/String;

.field public enable_apk_permission:Ljava/lang/String;

.field public enable_apk_verify:Ljava/lang/String;

.field public firmware_version:Ljava/lang/String;

.field public is_device_configured:Ljava/lang/String;

.field public p2pe_apk_verify:Ljava/lang/String;

.field public p2pe_rom_verify:Ljava/lang/String;

.field public press_recovery_enable:Ljava/lang/String;

.field public random_reboot_enable:Ljava/lang/String;

.field public reload_certificates_without_reboot:Ljava/lang/String;

.field public statusbar_disable:Ljava/lang/String;

.field public unknown_system_properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 364
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->unknown_system_properties:Ljava/util/Map;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->allowed_settings_intent_adb:Ljava/lang/String;

    .line 370
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->bbpos_debug:Ljava/lang/String;

    .line 373
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->firmware_version:Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->disable_volume_key:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->press_recovery_enable:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_permission:Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_apk_verify:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_rom_verify:Ljava/lang/String;

    .line 391
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->is_device_configured:Ljava/lang/String;

    .line 394
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->random_reboot_enable:Ljava/lang/String;

    .line 397
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_verify:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->close_bootloader:Ljava/lang/String;

    .line 403
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->statusbar_disable:Ljava/lang/String;

    .line 406
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->reload_certificates_without_reboot:Ljava/lang/String;

    .line 409
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->devkit_watermark_move_interval_seconds:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->auto_reboot_enable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allowed_settings_intent_adb(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "allowed_settings_intent_adb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->allowed_settings_intent_adb:Ljava/lang/String;

    return-object p0
.end method

.method public final auto_reboot_enable(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "auto_reboot_enable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->auto_reboot_enable:Ljava/lang/String;

    return-object p0
.end method

.method public final bbpos_debug(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "bbpos_debug"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->bbpos_debug:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;
    .locals 21

    move-object/from16 v0, p0

    .line 556
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;

    .line 557
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->unknown_system_properties:Ljava/util/Map;

    .line 558
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->allowed_settings_intent_adb:Ljava/lang/String;

    .line 559
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->bbpos_debug:Ljava/lang/String;

    .line 560
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->firmware_version:Ljava/lang/String;

    .line 561
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->disable_volume_key:Ljava/lang/String;

    .line 562
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->press_recovery_enable:Ljava/lang/String;

    .line 563
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_permission:Ljava/lang/String;

    .line 564
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_apk_verify:Ljava/lang/String;

    .line 565
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_rom_verify:Ljava/lang/String;

    .line 566
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->is_device_configured:Ljava/lang/String;

    .line 567
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->random_reboot_enable:Ljava/lang/String;

    .line 568
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_verify:Ljava/lang/String;

    .line 569
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->close_bootloader:Ljava/lang/String;

    .line 570
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->statusbar_disable:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 571
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->reload_certificates_without_reboot:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 572
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->devkit_watermark_move_interval_seconds:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 573
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->auto_reboot_enable:Ljava/lang/String;

    .line 574
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v19

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    .line 556
    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final close_bootloader(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "close_bootloader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->close_bootloader:Ljava/lang/String;

    return-object p0
.end method

.method public final devkit_watermark_move_interval_seconds(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "devkit_watermark_move_interval_seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->devkit_watermark_move_interval_seconds:Ljava/lang/String;

    return-object p0
.end method

.method public final disable_volume_key(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "disable_volume_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->disable_volume_key:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_apk_permission(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "enable_apk_permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_permission:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_apk_verify(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "enable_apk_verify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->enable_apk_verify:Ljava/lang/String;

    return-object p0
.end method

.method public final firmware_version(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "firmware_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->firmware_version:Ljava/lang/String;

    return-object p0
.end method

.method public final is_device_configured(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "is_device_configured"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->is_device_configured:Ljava/lang/String;

    return-object p0
.end method

.method public final p2pe_apk_verify(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "p2pe_apk_verify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_apk_verify:Ljava/lang/String;

    return-object p0
.end method

.method public final p2pe_rom_verify(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "p2pe_rom_verify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->p2pe_rom_verify:Ljava/lang/String;

    return-object p0
.end method

.method public final press_recovery_enable(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "press_recovery_enable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->press_recovery_enable:Ljava/lang/String;

    return-object p0
.end method

.method public final random_reboot_enable(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "random_reboot_enable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->random_reboot_enable:Ljava/lang/String;

    return-object p0
.end method

.method public final reload_certificates_without_reboot(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "reload_certificates_without_reboot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->reload_certificates_without_reboot:Ljava/lang/String;

    return-object p0
.end method

.method public final statusbar_disable(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1

    const-string v0, "statusbar_disable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->statusbar_disable:Ljava/lang/String;

    return-object p0
.end method

.method public final unknown_system_properties(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;"
        }
    .end annotation

    const-string v0, "unknown_system_properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BbposSystemProperties$Builder;->unknown_system_properties:Ljava/util/Map;

    return-object p0
.end method
