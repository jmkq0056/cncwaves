.class public final Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;
.super Ljava/lang/Object;
.source "DynamicCurrencyConversionSelectionModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/paymentcollection/DisclosureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;",
        "",
        "()V",
        "fromOptions",
        "Lcom/stripe/hardware/paymentcollection/DisclosureMode;",
        "setupFutureUsage",
        "",
        "requestIncremental",
        "requestExtended",
        "public_release"
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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/paymentcollection/DisclosureMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromOptions(ZZZ)Lcom/stripe/hardware/paymentcollection/DisclosureMode;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 67
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->SETUP_AND_INCREMENTAL_AND_EXTENDED:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 68
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->INCREMENTAL_AND_EXTENDED:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 69
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->EXTENDED:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 70
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->INCREMENTAL:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 71
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->SETUP_FUTURE_USAGE:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1

    .line 72
    :cond_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->NONE:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object p1
.end method
