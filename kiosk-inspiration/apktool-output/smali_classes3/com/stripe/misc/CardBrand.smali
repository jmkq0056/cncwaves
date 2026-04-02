.class public final enum Lcom/stripe/misc/CardBrand;
.super Ljava/lang/Enum;
.source "CardBrand.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/misc/CardBrand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/misc/CardBrand;",
        "",
        "(Ljava/lang/String;I)V",
        "AMEX",
        "DINERS_CLUB",
        "DISCOVER",
        "EFTPOS_AU",
        "GIROCARD",
        "JCB",
        "MASTERCARD",
        "UNIONPAY",
        "UNKNOWN",
        "VISA",
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

.field private static final synthetic $VALUES:[Lcom/stripe/misc/CardBrand;

.field public static final enum AMEX:Lcom/stripe/misc/CardBrand;

.field public static final enum DINERS_CLUB:Lcom/stripe/misc/CardBrand;

.field public static final enum DISCOVER:Lcom/stripe/misc/CardBrand;

.field public static final enum EFTPOS_AU:Lcom/stripe/misc/CardBrand;

.field public static final enum GIROCARD:Lcom/stripe/misc/CardBrand;

.field public static final enum JCB:Lcom/stripe/misc/CardBrand;

.field public static final enum MASTERCARD:Lcom/stripe/misc/CardBrand;

.field public static final enum UNIONPAY:Lcom/stripe/misc/CardBrand;

.field public static final enum UNKNOWN:Lcom/stripe/misc/CardBrand;

.field public static final enum VISA:Lcom/stripe/misc/CardBrand;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/misc/CardBrand;
    .locals 10

    sget-object v0, Lcom/stripe/misc/CardBrand;->AMEX:Lcom/stripe/misc/CardBrand;

    sget-object v1, Lcom/stripe/misc/CardBrand;->DINERS_CLUB:Lcom/stripe/misc/CardBrand;

    sget-object v2, Lcom/stripe/misc/CardBrand;->DISCOVER:Lcom/stripe/misc/CardBrand;

    sget-object v3, Lcom/stripe/misc/CardBrand;->EFTPOS_AU:Lcom/stripe/misc/CardBrand;

    sget-object v4, Lcom/stripe/misc/CardBrand;->GIROCARD:Lcom/stripe/misc/CardBrand;

    sget-object v5, Lcom/stripe/misc/CardBrand;->JCB:Lcom/stripe/misc/CardBrand;

    sget-object v6, Lcom/stripe/misc/CardBrand;->MASTERCARD:Lcom/stripe/misc/CardBrand;

    sget-object v7, Lcom/stripe/misc/CardBrand;->UNIONPAY:Lcom/stripe/misc/CardBrand;

    sget-object v8, Lcom/stripe/misc/CardBrand;->UNKNOWN:Lcom/stripe/misc/CardBrand;

    sget-object v9, Lcom/stripe/misc/CardBrand;->VISA:Lcom/stripe/misc/CardBrand;

    filled-new-array/range {v0 .. v9}, [Lcom/stripe/misc/CardBrand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "AMEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->AMEX:Lcom/stripe/misc/CardBrand;

    .line 5
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "DINERS_CLUB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->DINERS_CLUB:Lcom/stripe/misc/CardBrand;

    .line 6
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "DISCOVER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->DISCOVER:Lcom/stripe/misc/CardBrand;

    .line 7
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "EFTPOS_AU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->EFTPOS_AU:Lcom/stripe/misc/CardBrand;

    .line 8
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "GIROCARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->GIROCARD:Lcom/stripe/misc/CardBrand;

    .line 9
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "JCB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->JCB:Lcom/stripe/misc/CardBrand;

    .line 10
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "MASTERCARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->MASTERCARD:Lcom/stripe/misc/CardBrand;

    .line 11
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "UNIONPAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->UNIONPAY:Lcom/stripe/misc/CardBrand;

    .line 12
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->UNKNOWN:Lcom/stripe/misc/CardBrand;

    .line 13
    new-instance v0, Lcom/stripe/misc/CardBrand;

    const-string v1, "VISA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/misc/CardBrand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/misc/CardBrand;->VISA:Lcom/stripe/misc/CardBrand;

    invoke-static {}, Lcom/stripe/misc/CardBrand;->$values()[Lcom/stripe/misc/CardBrand;

    move-result-object v0

    sput-object v0, Lcom/stripe/misc/CardBrand;->$VALUES:[Lcom/stripe/misc/CardBrand;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/misc/CardBrand;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/misc/CardBrand;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/misc/CardBrand;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/misc/CardBrand;
    .locals 1

    const-class v0, Lcom/stripe/misc/CardBrand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/misc/CardBrand;

    return-object p0
.end method

.method public static values()[Lcom/stripe/misc/CardBrand;
    .locals 1

    sget-object v0, Lcom/stripe/misc/CardBrand;->$VALUES:[Lcom/stripe/misc/CardBrand;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/misc/CardBrand;

    return-object v0
.end method
