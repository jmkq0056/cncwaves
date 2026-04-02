.class public final enum Lcom/stripe/hardware/paymentcollection/TippingSelectionType;
.super Ljava/lang/Enum;
.source "TippingSelectionType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;",
        "",
        "(Ljava/lang/String;I)V",
        "SELECTED_PERCENTAGE",
        "SELECTED_PERCENTAGE_SMART_TIP",
        "SELECTED_FIXED",
        "SELECTED_FIXED_SMART_TIP",
        "CUSTOMIZED",
        "NO_TIP",
        "NO_TIP_SELECTION_TYPE_FROM_BBPOS",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum CUSTOMIZED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum NO_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum NO_TIP_SELECTION_TYPE_FROM_BBPOS:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum SELECTED_FIXED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum SELECTED_FIXED_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum SELECTED_PERCENTAGE:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

.field public static final enum SELECTED_PERCENTAGE_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;
    .locals 7

    sget-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v2, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v3, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v4, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->CUSTOMIZED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v5, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    sget-object v6, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP_SELECTION_TYPE_FROM_BBPOS:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "SELECTED_PERCENTAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 20
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "SELECTED_PERCENTAGE_SMART_TIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 25
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "SELECTED_FIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 31
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "SELECTED_FIXED_SMART_TIP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 36
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "CUSTOMIZED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->CUSTOMIZED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 41
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "NO_TIP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 51
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const-string v1, "NO_TIP_SELECTION_TYPE_FROM_BBPOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP_SELECTION_TYPE_FROM_BBPOS:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->$values()[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->$VALUES:[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/paymentcollection/TippingSelectionType;
    .locals 1

    const-class v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->$VALUES:[Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object v0
.end method
