.class public final enum Lcom/stripe/hardware/emv/IntermediateTransactionError;
.super Ljava/lang/Enum;
.source "IntermediateTransactionError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "",
        "(Ljava/lang/String;I)V",
        "CONTACTLESS_LIMIT_EXCEEDED",
        "CHECK_MOBILE_DEVICE",
        "MULTIPLE_CARDS_DETECTED",
        "BAD_TAP_READ",
        "TOO_MANY_TAPS",
        "CARD_NOT_ADMITTED",
        "INVALID_TRANSACTION",
        "INVALID_CARD_NUMBER",
        "SYSTEM_MALFUNCTION",
        "EXPIRED_CARD",
        "TRANSACTION_NOT_PERMITTED",
        "INVALID_FUNCTION",
        "INVALID_CARD",
        "WRONG_CARD",
        "TERMINAL_NOT_PERMITTED",
        "ORIGINAL_AMOUNT_INCORRECT",
        "CARD_NOT_READABLE",
        "AUTHENTICATION_REQUIRED",
        "NOT_ACCEPTED_TRY_AGAIN",
        "DECLINED_CODE_05",
        "CARD_ERROR",
        "NOT_ACCEPTED",
        "PROCESSING_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum BAD_TAP_READ:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum CARD_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum CARD_NOT_ADMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum CARD_NOT_READABLE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum DECLINED_CODE_05:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum EXPIRED_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum INVALID_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum INVALID_CARD_NUMBER:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum INVALID_FUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum INVALID_TRANSACTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum NOT_ACCEPTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum PROCESSING_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum SYSTEM_MALFUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

.field public static final enum WRONG_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/IntermediateTransactionError;
    .locals 24

    sget-object v1, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v2, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v4, Lcom/stripe/hardware/emv/IntermediateTransactionError;->BAD_TAP_READ:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v5, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v6, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v7, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_TRANSACTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v8, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v9, Lcom/stripe/hardware/emv/IntermediateTransactionError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v10, Lcom/stripe/hardware/emv/IntermediateTransactionError;->EXPIRED_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v11, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v12, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_FUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v13, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v14, Lcom/stripe/hardware/emv/IntermediateTransactionError;->WRONG_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v15, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v17, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_READABLE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v18, Lcom/stripe/hardware/emv/IntermediateTransactionError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v19, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v20, Lcom/stripe/hardware/emv/IntermediateTransactionError;->DECLINED_CODE_05:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v21, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v22, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    sget-object v23, Lcom/stripe/hardware/emv/IntermediateTransactionError;->PROCESSING_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    filled-new-array/range {v1 .. v23}, [Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "CONTACTLESS_LIMIT_EXCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 8
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 11
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "MULTIPLE_CARDS_DETECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "BAD_TAP_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->BAD_TAP_READ:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 17
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "TOO_MANY_TAPS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 20
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "CARD_NOT_ADMITTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 21
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "INVALID_TRANSACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_TRANSACTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 22
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "INVALID_CARD_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 23
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "SYSTEM_MALFUNCTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 24
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "EXPIRED_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->EXPIRED_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 25
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "TRANSACTION_NOT_PERMITTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 26
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "INVALID_FUNCTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_FUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 27
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "INVALID_CARD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 28
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "WRONG_CARD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->WRONG_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 29
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "TERMINAL_NOT_PERMITTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 30
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "ORIGINAL_AMOUNT_INCORRECT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 31
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "CARD_NOT_READABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_READABLE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 32
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "AUTHENTICATION_REQUIRED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 33
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "NOT_ACCEPTED_TRY_AGAIN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 34
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "DECLINED_CODE_05"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->DECLINED_CODE_05:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 35
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "CARD_ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 36
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "NOT_ACCEPTED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    .line 37
    new-instance v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    const-string v1, "PROCESSING_ERROR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/IntermediateTransactionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->PROCESSING_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->$values()[Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->$VALUES:[Lcom/stripe/hardware/emv/IntermediateTransactionError;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/IntermediateTransactionError;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/IntermediateTransactionError;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/IntermediateTransactionError;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/IntermediateTransactionError;->$VALUES:[Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/IntermediateTransactionError;

    return-object v0
.end method
