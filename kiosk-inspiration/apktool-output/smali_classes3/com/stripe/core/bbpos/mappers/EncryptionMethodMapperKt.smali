.class public final Lcom/stripe/core/bbpos/mappers/EncryptionMethodMapperKt;
.super Ljava/lang/Object;
.source "EncryptionMethodMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/mappers/EncryptionMethodMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "convert",
        "Lcom/bbpos/bbdevice/BBDeviceController$EncryptionMethod;",
        "Lcom/stripe/bbpos/sdk/EncryptionMethod;",
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
.method public static final convert(Lcom/stripe/bbpos/sdk/EncryptionMethod;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/stripe/core/bbpos/mappers/EncryptionMethodMapperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EncryptionMethod;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_2:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_9:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_19:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CMAC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

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
