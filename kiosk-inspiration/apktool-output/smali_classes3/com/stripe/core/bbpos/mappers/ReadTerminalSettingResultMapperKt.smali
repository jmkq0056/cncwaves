.class public final Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;
.super Ljava/lang/Object;
.source "ReadTerminalSettingResultMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "convert",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .locals 7

    .line 9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 10
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 14
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->SUCCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    :goto_0
    move-object v2, p0

    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TLV_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 16
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_FOUND:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 17
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->LENGTH_INCORRECT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 19
    :cond_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 20
    :cond_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 21
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->INVALID_VALUE:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 22
    :cond_8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 23
    :cond_9
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    .line 24
    :cond_a
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;->UNKNOWN:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    goto :goto_0

    :goto_1
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 24
    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    if-nez p0, :cond_d

    .line 27
    new-instance v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 28
    :cond_d
    new-instance v1, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
