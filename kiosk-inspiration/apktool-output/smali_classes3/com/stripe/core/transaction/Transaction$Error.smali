.class public final enum Lcom/stripe/core/transaction/Transaction$Error;
.super Ljava/lang/Enum;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/transaction/Transaction$Error;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/core/transaction/Transaction$Error;",
        "",
        "(Ljava/lang/String;I)V",
        "BAD_SWIPE",
        "CARD_BLOCKED",
        "CHECK_MOBILE_DEVICE",
        "CHIP_CARD_SWIPE",
        "CONTACTLESS_LIMIT_EXCEEDED",
        "DECLINED",
        "HARDWARE_ERROR",
        "INSERT_OR_SWIPE_REQUIRED",
        "INVALID_CARD",
        "MULTIPLE_CARDS_DETECTED",
        "NO_MUTUALLY_SUPPORTED_APPS",
        "TERMINATED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum BAD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum CARD_BLOCKED:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum CHIP_CARD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum DECLINED:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum HARDWARE_ERROR:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum INVALID_CARD:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum MULTIPLE_CARDS_DETECTED:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum NO_MUTUALLY_SUPPORTED_APPS:Lcom/stripe/core/transaction/Transaction$Error;

.field public static final enum TERMINATED:Lcom/stripe/core/transaction/Transaction$Error;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/transaction/Transaction$Error;
    .locals 12

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Error;->BAD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v1, Lcom/stripe/core/transaction/Transaction$Error;->CARD_BLOCKED:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v2, Lcom/stripe/core/transaction/Transaction$Error;->CHECK_MOBILE_DEVICE:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v3, Lcom/stripe/core/transaction/Transaction$Error;->CHIP_CARD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v4, Lcom/stripe/core/transaction/Transaction$Error;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v5, Lcom/stripe/core/transaction/Transaction$Error;->DECLINED:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v6, Lcom/stripe/core/transaction/Transaction$Error;->HARDWARE_ERROR:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v7, Lcom/stripe/core/transaction/Transaction$Error;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v8, Lcom/stripe/core/transaction/Transaction$Error;->INVALID_CARD:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v9, Lcom/stripe/core/transaction/Transaction$Error;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v10, Lcom/stripe/core/transaction/Transaction$Error;->NO_MUTUALLY_SUPPORTED_APPS:Lcom/stripe/core/transaction/Transaction$Error;

    sget-object v11, Lcom/stripe/core/transaction/Transaction$Error;->TERMINATED:Lcom/stripe/core/transaction/Transaction$Error;

    filled-new-array/range {v0 .. v11}, [Lcom/stripe/core/transaction/Transaction$Error;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "BAD_SWIPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->BAD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

    .line 30
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "CARD_BLOCKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->CARD_BLOCKED:Lcom/stripe/core/transaction/Transaction$Error;

    .line 31
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->CHECK_MOBILE_DEVICE:Lcom/stripe/core/transaction/Transaction$Error;

    .line 32
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "CHIP_CARD_SWIPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->CHIP_CARD_SWIPE:Lcom/stripe/core/transaction/Transaction$Error;

    .line 33
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "CONTACTLESS_LIMIT_EXCEEDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/core/transaction/Transaction$Error;

    .line 34
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "DECLINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->DECLINED:Lcom/stripe/core/transaction/Transaction$Error;

    .line 35
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "HARDWARE_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->HARDWARE_ERROR:Lcom/stripe/core/transaction/Transaction$Error;

    .line 36
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "INSERT_OR_SWIPE_REQUIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/core/transaction/Transaction$Error;

    .line 37
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "INVALID_CARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->INVALID_CARD:Lcom/stripe/core/transaction/Transaction$Error;

    .line 38
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "MULTIPLE_CARDS_DETECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/core/transaction/Transaction$Error;

    .line 39
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "NO_MUTUALLY_SUPPORTED_APPS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->NO_MUTUALLY_SUPPORTED_APPS:Lcom/stripe/core/transaction/Transaction$Error;

    .line 40
    new-instance v0, Lcom/stripe/core/transaction/Transaction$Error;

    const-string v1, "TERMINATED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/transaction/Transaction$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->TERMINATED:Lcom/stripe/core/transaction/Transaction$Error;

    invoke-static {}, Lcom/stripe/core/transaction/Transaction$Error;->$values()[Lcom/stripe/core/transaction/Transaction$Error;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->$VALUES:[Lcom/stripe/core/transaction/Transaction$Error;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/Transaction$Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/transaction/Transaction$Error;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Error;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/transaction/Transaction$Error;
    .locals 1

    const-class v0, Lcom/stripe/core/transaction/Transaction$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/transaction/Transaction$Error;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/transaction/Transaction$Error;
    .locals 1

    sget-object v0, Lcom/stripe/core/transaction/Transaction$Error;->$VALUES:[Lcom/stripe/core/transaction/Transaction$Error;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/transaction/Transaction$Error;

    return-object v0
.end method
