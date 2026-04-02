.class public final Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepositoryKt;
.super Ljava/lang/Object;
.source "DisconnectReasonRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepositoryKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toLogString",
        "",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "adapter_release"
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
.method public static final toLogString(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepositoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "bluetooth_disabled"

    return-object p0

    .line 78
    :pswitch_1
    const-string p0, "powered_off"

    return-object p0

    .line 77
    :pswitch_2
    const-string p0, "critically_low_battery"

    return-object p0

    .line 76
    :pswitch_3
    const-string p0, "security_reboot"

    return-object p0

    .line 75
    :pswitch_4
    const-string p0, "reboot_requested"

    return-object p0

    .line 74
    :pswitch_5
    const-string p0, "disconnect_requested"

    return-object p0

    .line 73
    :pswitch_6
    const-string p0, "unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
