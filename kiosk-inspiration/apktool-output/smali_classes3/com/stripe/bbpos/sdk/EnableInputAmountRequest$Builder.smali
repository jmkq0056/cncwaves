.class public final Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EnableInputAmountRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;",
        "()V",
        "amountInputType",
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        "fixedAmountTips",
        "Lcom/stripe/bbpos/sdk/FixedAmountTips;",
        "noTips",
        "Lcom/stripe/bbpos/sdk/NoTips;",
        "otherAmountOption",
        "Lcom/stripe/bbpos/sdk/OtherAmountOption;",
        "percentageTips",
        "Lcom/stripe/bbpos/sdk/PercentageTips;",
        "setAmountTimeout",
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
.field public amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

.field public fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

.field public noTips:Lcom/stripe/bbpos/sdk/NoTips;

.field public otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

.field public percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

.field public setAmountTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 153
    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->AMOUNT_INPUT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/AmountInputType;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 156
    sget-object v0, Lcom/stripe/bbpos/sdk/OtherAmountOption;->OTHER_AMOUNT_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    return-void
.end method


# virtual methods
.method public final amountInputType(Lcom/stripe/bbpos/sdk/AmountInputType;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 1

    const-string v0, "amountInputType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->build()Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;
    .locals 8

    .line 203
    new-instance v0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;

    .line 204
    iget v1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->setAmountTimeout:I

    .line 205
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->amountInputType:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 206
    iget-object v3, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    .line 207
    iget-object v4, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 208
    iget-object v5, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 209
    iget-object v6, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    .line 210
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest;-><init>(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/FixedAmountTips;Lcom/stripe/bbpos/sdk/NoTips;Lokio/ByteString;)V

    return-object v0
.end method

.method public final fixedAmountTips(Lcom/stripe/bbpos/sdk/FixedAmountTips;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 192
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    return-object p0
.end method

.method public final noTips(Lcom/stripe/bbpos/sdk/NoTips;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    .line 199
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    return-object p0
.end method

.method public final otherAmountOption(Lcom/stripe/bbpos/sdk/OtherAmountOption;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 1

    const-string v0, "otherAmountOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->otherAmountOption:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    return-object p0
.end method

.method public final percentageTips(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->percentageTips:Lcom/stripe/bbpos/sdk/PercentageTips;

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->fixedAmountTips:Lcom/stripe/bbpos/sdk/FixedAmountTips;

    .line 185
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->noTips:Lcom/stripe/bbpos/sdk/NoTips;

    return-object p0
.end method

.method public final setAmountTimeout(I)Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;
    .locals 0

    .line 168
    iput p1, p0, Lcom/stripe/bbpos/sdk/EnableInputAmountRequest$Builder;->setAmountTimeout:I

    return-object p0
.end method
