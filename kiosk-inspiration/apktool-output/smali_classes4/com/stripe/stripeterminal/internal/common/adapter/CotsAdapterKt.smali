.class public final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapterKt;
.super Ljava/lang/Object;
.source "CotsAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "toProto",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig;",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;",
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
.method private static final toProto(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;
    .locals 7

    .line 815
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 816
    :cond_0
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Resource;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    check-cast p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Resource;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Resource;->getResId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 817
    :cond_1
    instance-of v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Value;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    check-cast p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Value;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Value;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final toProto(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)Lcom/stripe/cots/aidlservice/CotsUxConfig;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    .line 823
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;->getTapZone()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    move-result-object v0

    .line 824
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 825
    new-instance v4, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;

    .line 826
    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->getIndicator()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;->valueOf(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;

    move-result-object v5

    .line 827
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;->getPosition()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    move-result-object v0

    .line 828
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v6, v3

    goto :goto_0

    .line 829
    :cond_0
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    if-eqz v2, :cond_1

    .line 830
    new-instance v6, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    .line 831
    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->getXBias()F

    move-result v7

    .line 832
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;->getYBias()F

    move-result v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 830
    invoke-direct/range {v6 .. v11}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;-><init>(FFLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 825
    invoke-direct/range {v4 .. v9}, Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;-><init>(Lcom/stripe/cots/aidlservice/CotsUxConfig$Indicator;Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v4

    goto :goto_1

    .line 830
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 839
    :cond_2
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, v3

    .line 842
    :goto_1
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;

    .line 843
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;->getColors()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->getPrimary()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapterKt;->toProto(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    move-result-object v4

    .line 844
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;->getColors()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->getError()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapterKt;->toProto(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    move-result-object v5

    .line 845
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;->getColors()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->getSuccess()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapterKt;->toProto(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 842
    invoke-direct/range {v3 .. v9}, Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;-><init>(Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorOverride;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 847
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;->getDarkMode()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;->valueOf(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 822
    invoke-direct/range {v1 .. v7}, Lcom/stripe/cots/aidlservice/CotsUxConfig;-><init>(Lcom/stripe/cots/aidlservice/CotsUxConfig$TapZoneOverride;Lcom/stripe/cots/aidlservice/CotsUxConfig$ColorScheme;Lcom/stripe/cots/aidlservice/CotsUxConfig$DarkMode;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 839
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
