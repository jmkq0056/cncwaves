.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TippingConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0016\u0010\u0004\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005J\u0016\u0010\u0007\u001a\u00020\u00002\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;",
        "()V",
        "fixed_amounts",
        "",
        "",
        "percentages",
        "smart_tip_threshold",
        "Ljava/lang/Integer;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;",
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
.field public fixed_amounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public percentages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public smart_tip_threshold:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 480
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 482
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->percentages:Ljava/util/List;

    .line 485
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->fixed_amounts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;
    .locals 5

    .line 507
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    .line 508
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->percentages:Ljava/util/List;

    .line 509
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->fixed_amounts:Ljava/util/List;

    .line 510
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->smart_tip_threshold:Ljava/lang/Integer;

    .line 511
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 507
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final fixed_amounts(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;"
        }
    .end annotation

    const-string v0, "fixed_amounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 498
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->fixed_amounts:Ljava/util/List;

    return-object p0
.end method

.method public final percentages(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;"
        }
    .end annotation

    const-string v0, "percentages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 492
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->percentages:Ljava/util/List;

    return-object p0
.end method

.method public final smart_tip_threshold(Ljava/lang/Integer;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;->smart_tip_threshold:Ljava/lang/Integer;

    return-object p0
.end method
