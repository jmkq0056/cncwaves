.class public final Lcom/stripe/core/bbpos/mappers/CheckCardModeMapperKt;
.super Ljava/lang/Object;
.source "CheckCardModeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/mappers/CheckCardModeMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "convert",
        "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardMode;",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
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
.method public static final convert(Lcom/stripe/bbpos/sdk/CheckCardMode;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/stripe/core/bbpos/mappers/CheckCardModeMapperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/CheckCardMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 16
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 14
    :pswitch_2
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 13
    :pswitch_3
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 12
    :pswitch_4
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 11
    :pswitch_5
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 10
    :pswitch_6
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    .line 8
    :pswitch_8
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    return-object p0

    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
