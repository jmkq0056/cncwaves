.class public final Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;
.super Ljava/lang/Object;
.source "TippingOption.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/TippingOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/api/TippingOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Percentage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;",
        "Lcom/stripe/core/bbpos/hardware/api/TippingOption;",
        "value",
        "Lcom/stripe/bbpos/sdk/PercentageTips;",
        "constructor-impl",
        "(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/bbpos/sdk/PercentageTips;",
        "getValue",
        "()Lcom/stripe/bbpos/sdk/PercentageTips;",
        "equals",
        "",
        "other",
        "",
        "equals-impl",
        "(Lcom/stripe/bbpos/sdk/PercentageTips;Ljava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(Lcom/stripe/bbpos/sdk/PercentageTips;)I",
        "toString",
        "",
        "toString-impl",
        "(Lcom/stripe/bbpos/sdk/PercentageTips;)Ljava/lang/String;",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# instance fields
.field private final value:Lcom/stripe/bbpos/sdk/PercentageTips;


# direct methods
.method private synthetic constructor <init>(Lcom/stripe/bbpos/sdk/PercentageTips;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    return-void
.end method

.method public static final synthetic box-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    invoke-direct {v0, p0}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;-><init>(Lcom/stripe/bbpos/sdk/PercentageTips;)V

    return-object v0
.end method

.method public static constructor-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/bbpos/sdk/PercentageTips;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Lcom/stripe/bbpos/sdk/PercentageTips;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    invoke-virtual {p1}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->unbox-impl()Lcom/stripe/bbpos/sdk/PercentageTips;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Lcom/stripe/bbpos/sdk/PercentageTips;Lcom/stripe/bbpos/sdk/PercentageTips;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)I
    .locals 0

    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PercentageTips;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PercentageTips;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-static {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->equals-impl(Lcom/stripe/bbpos/sdk/PercentageTips;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getValue()Lcom/stripe/bbpos/sdk/PercentageTips;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-static {v0}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->hashCode-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    invoke-static {v0}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->toString-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Lcom/stripe/bbpos/sdk/PercentageTips;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->value:Lcom/stripe/bbpos/sdk/PercentageTips;

    return-object v0
.end method
