.class public final enum Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;
.super Ljava/lang/Enum;
.source "ReaderDisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        "",
        "displayName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum CARD_REMOVED_TOO_EARLY:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum CHECK_MOBILE_DEVICE:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum INSERT_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum INSERT_OR_SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum REMOVE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum RETRY_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum TRY_ANOTHER_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

.field public static final enum TRY_ANOTHER_READ_METHOD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;
    .locals 10

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->CHECK_MOBILE_DEVICE:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->RETRY_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->INSERT_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->INSERT_OR_SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v7, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v8, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    sget-object v9, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->CARD_REMOVED_TOO_EARLY:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    filled-new-array/range {v0 .. v9}, [Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x0

    const-string v2, "Check Your Mobile Device"

    const-string v3, "CHECK_MOBILE_DEVICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->CHECK_MOBILE_DEVICE:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x1

    const-string v2, "Retry Card"

    const-string v3, "RETRY_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->RETRY_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 24
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x2

    const-string v2, "Insert Card"

    const-string v3, "INSERT_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->INSERT_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x3

    const-string v2, "Insert Or Swipe Card"

    const-string v3, "INSERT_OR_SWIPE_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->INSERT_OR_SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 34
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x4

    const-string v2, "Swipe Card"

    const-string v3, "SWIPE_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->SWIPE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x5

    const-string v2, "Remove Card"

    const-string v3, "REMOVE_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->REMOVE_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x6

    const-string v2, "Multiple Contactless Cards Detected"

    const-string v3, "MULTIPLE_CONTACTLESS_CARDS_DETECTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->MULTIPLE_CONTACTLESS_CARDS_DETECTED:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 51
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/4 v1, 0x7

    const-string v2, "Try Another Read Method"

    const-string v3, "TRY_ANOTHER_READ_METHOD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->TRY_ANOTHER_READ_METHOD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 56
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/16 v1, 0x8

    const-string v2, "Try Another Card"

    const-string v3, "TRY_ANOTHER_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->TRY_ANOTHER_CARD:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    .line 61
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    const/16 v1, 0x9

    const-string v2, "Card Removed Too Early, Try Again"

    const-string v3, "CARD_REMOVED_TOO_EARLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->CARD_REMOVED_TOO_EARLY:Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->$values()[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;->displayName:Ljava/lang/String;

    return-object v0
.end method
