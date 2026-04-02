.class public final enum Lcom/stripe/core/transaction/Transaction$Type;
.super Ljava/lang/Enum;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/transaction/Transaction$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/core/transaction/Transaction$Type;",
        "",
        "(Ljava/lang/String;I)V",
        "DISPLAY_CART",
        "INTERAC_REFUND",
        "PAYMENT_METHOD",
        "REUSABLE_CARD",
        "SETUP_INTENT",
        "TIPPING_SELECTION",
        "PASSTHROUGH",
        "transaction_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum DISPLAY_CART:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum INTERAC_REFUND:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum PASSTHROUGH:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum PAYMENT_METHOD:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum REUSABLE_CARD:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum SETUP_INTENT:Lcom/stripe/core/transaction/Transaction$Type;

.field public static final enum TIPPING_SELECTION:Lcom/stripe/core/transaction/Transaction$Type;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/transaction/Transaction$Type;
    .locals 7

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Type;->DISPLAY_CART:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v1, Lcom/stripe/core/transaction/Transaction$Type;->INTERAC_REFUND:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v2, Lcom/stripe/core/transaction/Transaction$Type;->PAYMENT_METHOD:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v3, Lcom/stripe/core/transaction/Transaction$Type;->REUSABLE_CARD:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v4, Lcom/stripe/core/transaction/Transaction$Type;->SETUP_INTENT:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v5, Lcom/stripe/core/transaction/Transaction$Type;->TIPPING_SELECTION:Lcom/stripe/core/transaction/Transaction$Type;

    sget-object v6, Lcom/stripe/core/transaction/Transaction$Type;->PASSTHROUGH:Lcom/stripe/core/transaction/Transaction$Type;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/core/transaction/Transaction$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "DISPLAY_CART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->DISPLAY_CART:Lcom/stripe/core/transaction/Transaction$Type;

    .line 20
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "INTERAC_REFUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->INTERAC_REFUND:Lcom/stripe/core/transaction/Transaction$Type;

    .line 21
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "PAYMENT_METHOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->PAYMENT_METHOD:Lcom/stripe/core/transaction/Transaction$Type;

    .line 22
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "REUSABLE_CARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->REUSABLE_CARD:Lcom/stripe/core/transaction/Transaction$Type;

    .line 23
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "SETUP_INTENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->SETUP_INTENT:Lcom/stripe/core/transaction/Transaction$Type;

    .line 24
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "TIPPING_SELECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->TIPPING_SELECTION:Lcom/stripe/core/transaction/Transaction$Type;

    .line 25
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Type;

    const-string v1, "PASSTHROUGH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->PASSTHROUGH:Lcom/stripe/core/transaction/Transaction$Type;

    invoke-static {}, Lcom/stripe/core/transaction/Transaction$Type;->$values()[Lcom/stripe/core/transaction/Transaction$Type;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->$VALUES:[Lcom/stripe/core/transaction/Transaction$Type;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/transaction/Transaction$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/transaction/Transaction$Type;
    .locals 1

    const-class v0, Lcom/stripe/core/transaction/Transaction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/transaction/Transaction$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/transaction/Transaction$Type;
    .locals 1

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Type;->$VALUES:[Lcom/stripe/core/transaction/Transaction$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/transaction/Transaction$Type;

    return-object v0
.end method
