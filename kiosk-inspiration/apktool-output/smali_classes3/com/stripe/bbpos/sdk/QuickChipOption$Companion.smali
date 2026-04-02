.class public final Lcom/stripe/bbpos/sdk/QuickChipOption$Companion;
.super Ljava/lang/Object;
.source "QuickChipOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/QuickChipOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/QuickChipOption$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/QuickChipOption;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/sdk/QuickChipOption$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/bbpos/sdk/QuickChipOption;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_QUICKCHIP:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-object p1

    .line 39
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_CONFIG:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-object p1

    .line 38
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_EMV:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-object p1

    .line 37
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    return-object p1
.end method
