.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TippingConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
        "()V",
        "fixed_amount",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;",
        "fixed_percentage",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;",
        "smart_tip",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;",
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
.field public fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

.field public fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

.field public smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;
    .locals 5

    .line 707
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;

    .line 708
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

    .line 709
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

    .line 710
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    .line 711
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 707
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;Lokio/ByteString;)V

    return-object v0
.end method

.method public final fixed_amount(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

    const/4 p1, 0x0

    .line 692
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    return-object p0
.end method

.method public final fixed_percentage(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

    const/4 p1, 0x0

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    return-object p0
.end method

.method public final smart_tip(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    const/4 p1, 0x0

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;->fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

    return-object p0
.end method
