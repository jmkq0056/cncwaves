.class public final Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;
.super Ljava/lang/Object;
.source "DeviceTypeMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion$EntriesMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;",
        "",
        "()V",
        "fromSerial",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "serialNumber",
        "",
        "fromUsbReader",
        "reader",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSerial(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "serialNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 13
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSerialPrefixes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 14
    invoke-static {p1, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 19
    :cond_2
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 20
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 19
    const-string v6, "Serial number doesn\'t match any known device type"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4
.end method

.method public final fromUsbReader(Lcom/stripe/core/hardware/Reader$UsbReader;)Lcom/stripe/stripeterminal/external/models/DeviceType;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p1

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    if-eqz v0, :cond_1

    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p1

    .line 29
    :cond_1
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    if-eqz v0, :cond_2

    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p1

    .line 30
    :cond_2
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    if-eqz v0, :cond_3

    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p1

    .line 31
    :cond_3
    instance-of v0, p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

    return-object p1

    .line 32
    :cond_4
    instance-of p1, p1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 33
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 32
    const-string v2, "Reader doesn\'t match any known device type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
