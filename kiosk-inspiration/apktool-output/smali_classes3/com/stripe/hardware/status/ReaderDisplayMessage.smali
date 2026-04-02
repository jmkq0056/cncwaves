.class public final enum Lcom/stripe/hardware/status/ReaderDisplayMessage;
.super Ljava/lang/Enum;
.source "ReaderDisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "",
        "(Ljava/lang/String;I)V",
        "CHECK_MOBILE_DEVICE",
        "RETRY_CARD",
        "INSERT_CARD",
        "INSERT_OR_SWIPE_CARD",
        "SWIPE_CARD",
        "REMOVE_CARD",
        "MULTIPLE_CONTACTLESS_CARDS_DETECTED",
        "TRY_ANOTHER_READ_METHOD",
        "TRY_ANOTHER_CARD",
        "CARD_REMOVED_TOO_EARLY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum CARD_REMOVED_TOO_EARLY:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum INSERT_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum INSERT_OR_SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum REMOVE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum RETRY_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

.field public static final enum TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/status/ReaderDisplayMessage;
    .locals 10

    sget-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v1, Lcom/stripe/hardware/status/ReaderDisplayMessage;->RETRY_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v2, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v3, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_OR_SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v4, Lcom/stripe/hardware/status/ReaderDisplayMessage;->SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v5, Lcom/stripe/hardware/status/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v6, Lcom/stripe/hardware/status/ReaderDisplayMessage;->MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v7, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v8, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    sget-object v9, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CARD_REMOVED_TOO_EARLY:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    filled-new-array/range {v0 .. v9}, [Lcom/stripe/hardware/status/ReaderDisplayMessage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "CHECK_MOBILE_DEVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 21
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "RETRY_CARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->RETRY_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 26
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "INSERT_CARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 31
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "INSERT_OR_SWIPE_CARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->INSERT_OR_SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 36
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "SWIPE_CARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->SWIPE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 41
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "REMOVE_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 47
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "MULTIPLE_CONTACTLESS_CARDS_DETECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 53
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "TRY_ANOTHER_READ_METHOD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 58
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "TRY_ANOTHER_CARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    .line 63
    new-instance v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    const-string v1, "CARD_REMOVED_TOO_EARLY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/ReaderDisplayMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->CARD_REMOVED_TOO_EARLY:Lcom/stripe/hardware/status/ReaderDisplayMessage;

    invoke-static {}, Lcom/stripe/hardware/status/ReaderDisplayMessage;->$values()[Lcom/stripe/hardware/status/ReaderDisplayMessage;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->$VALUES:[Lcom/stripe/hardware/status/ReaderDisplayMessage;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/status/ReaderDisplayMessage;
    .locals 1

    const-class v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/status/ReaderDisplayMessage;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/status/ReaderDisplayMessage;->$VALUES:[Lcom/stripe/hardware/status/ReaderDisplayMessage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/status/ReaderDisplayMessage;

    return-object v0
.end method
