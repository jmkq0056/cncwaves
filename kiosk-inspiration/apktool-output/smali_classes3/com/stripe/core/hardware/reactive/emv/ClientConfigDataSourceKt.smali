.class public final Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSourceKt;
.super Ljava/lang/Object;
.source "ClientConfigDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSourceKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0017\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "storedConfigSource",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;",
        "Lcom/stripe/proto/model/common/BBPosHardware;",
        "getStoredConfigSource",
        "(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;",
        "hardware-reactive_release"
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
.method public static final getStoredConfigSource(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSourceKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/proto/model/common/BBPosHardware;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 52
    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 49
    :pswitch_1
    sget-object p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->SHARED_PREFS:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    return-object p0

    .line 34
    :pswitch_2
    sget-object p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->EMV_TAG_MERCHANT_NAME:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->EMV_TAG_CONFIG_HASH:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    return-object p0

    .line 52
    :pswitch_4
    sget-object p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->EMV_TAG_MERCHANT_NAME:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
