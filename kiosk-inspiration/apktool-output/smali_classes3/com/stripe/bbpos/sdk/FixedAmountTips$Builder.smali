.class public final Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FixedAmountTips.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/FixedAmountTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/FixedAmountTips;",
        "Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/FixedAmountTips;",
        "()V",
        "amount",
        "",
        "currencyCode",
        "",
        "currencyExponent",
        "tipsAmountOptions",
        "",
        "build",
        "sdk-protos_release"
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
.field public amount:Ljava/lang/String;

.field public currencyCode:I

.field public currencyExponent:I

.field public tipsAmountOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->amount:Ljava/lang/String;

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->tipsAmountOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->amount:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->build()Lcom/stripe/bbpos/sdk/FixedAmountTips;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/FixedAmountTips;
    .locals 6

    .line 153
    new-instance v0, Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 154
    iget v1, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->currencyCode:I

    .line 155
    iget v2, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->currencyExponent:I

    .line 156
    iget-object v3, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->amount:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->tipsAmountOptions:Ljava/util/List;

    .line 158
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/stripe/bbpos/sdk/FixedAmountTips;-><init>(IILjava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final currencyCode(I)Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;
    .locals 0

    .line 133
    iput p1, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->currencyCode:I

    return-object p0
.end method

.method public final currencyExponent(I)Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;
    .locals 0

    .line 138
    iput p1, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->currencyExponent:I

    return-object p0
.end method

.method public final tipsAmountOptions(Ljava/util/List;)Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;"
        }
    .end annotation

    const-string v0, "tipsAmountOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 149
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/FixedAmountTips$Builder;->tipsAmountOptions:Ljava/util/List;

    return-object p0
.end method
