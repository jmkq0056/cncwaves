.class public final enum Lcom/stripe/hardware/emv/TransactionResult$Result;
.super Ljava/lang/Enum;
.source "TransactionResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/emv/TransactionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "",
        "(Ljava/lang/String;I)V",
        "APPROVED",
        "CONTACTLESS_LIMIT_EXCEEDED",
        "DECLINED",
        "TERMINATED",
        "TIMEOUT",
        "CANCELED",
        "EMPTY_CANDIDATE_LIST",
        "CARD_BLOCKED",
        "DEVICE_FAILURE",
        "ICC_CARD_REMOVED",
        "CHECK_MOBILE_DEVICE",
        "INSERT_OR_SWIPE_REQUIRED",
        "MULTIPLE_CARDS_DETECTED",
        "MOBILE_WALLET_TOO_MANY_TAPS",
        "CARD_STILL_INSERTED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

.field public static final enum TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/TransactionResult$Result;
    .locals 15

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v3, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v4, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v6, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v7, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v8, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v9, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v10, Lcom/stripe/hardware/emv/TransactionResult$Result;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v11, Lcom/stripe/hardware/emv/TransactionResult$Result;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v12, Lcom/stripe/hardware/emv/TransactionResult$Result;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v13, Lcom/stripe/hardware/emv/TransactionResult$Result;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

    sget-object v14, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    filled-new-array/range {v0 .. v14}, [Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 15
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "CONTACTLESS_LIMIT_EXCEEDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 18
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "DECLINED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 21
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "TERMINATED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 24
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 27
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 30
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "EMPTY_CANDIDATE_LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 33
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "CARD_BLOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 36
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "DEVICE_FAILURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 39
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "ICC_CARD_REMOVED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 42
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 45
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "INSERT_OR_SWIPE_REQUIRED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 48
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "MULTIPLE_CARDS_DETECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 54
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "MOBILE_WALLET_TOO_MANY_TAPS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

    .line 59
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    const-string v1, "CARD_STILL_INSERTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-static {}, Lcom/stripe/hardware/emv/TransactionResult$Result;->$values()[Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->$VALUES:[Lcom/stripe/hardware/emv/TransactionResult$Result;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/stripe/hardware/emv/TransactionResult$Result;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/TransactionResult$Result;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/TransactionResult$Result;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->$VALUES:[Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/TransactionResult$Result;

    return-object v0
.end method
