.class public final enum Lcom/stripe/currency/CountryCode$Assignment;
.super Ljava/lang/Enum;
.source "CountryCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/currency/CountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Assignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/currency/CountryCode$Assignment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/currency/CountryCode$Assignment;",
        "",
        "(Ljava/lang/String;I)V",
        "OFFICIALLY_ASSIGNED",
        "USER_ASSIGNED",
        "EXCEPTIONALLY_RESERVED",
        "TRANSITIONALLY_RESERVED",
        "INDETERMINATELY_RESERVED",
        "NOT_USED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum INDETERMINATELY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum NOT_USED:Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

.field public static final enum USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/currency/CountryCode$Assignment;
    .locals 6

    sget-object v0, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    sget-object v1, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    sget-object v2, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    sget-object v3, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    sget-object v4, Lcom/stripe/currency/CountryCode$Assignment;->INDETERMINATELY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    sget-object v5, Lcom/stripe/currency/CountryCode$Assignment;->NOT_USED:Lcom/stripe/currency/CountryCode$Assignment;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/currency/CountryCode$Assignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2048
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "OFFICIALLY_ASSIGNED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->OFFICIALLY_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    .line 2055
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "USER_ASSIGNED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->USER_ASSIGNED:Lcom/stripe/currency/CountryCode$Assignment;

    .line 2062
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "EXCEPTIONALLY_RESERVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->EXCEPTIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    .line 2069
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "TRANSITIONALLY_RESERVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->TRANSITIONALLY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    .line 2076
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "INDETERMINATELY_RESERVED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->INDETERMINATELY_RESERVED:Lcom/stripe/currency/CountryCode$Assignment;

    .line 2084
    new-instance v0, Lcom/stripe/currency/CountryCode$Assignment;

    const-string v1, "NOT_USED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/currency/CountryCode$Assignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->NOT_USED:Lcom/stripe/currency/CountryCode$Assignment;

    invoke-static {}, Lcom/stripe/currency/CountryCode$Assignment;->$values()[Lcom/stripe/currency/CountryCode$Assignment;

    move-result-object v0

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->$VALUES:[Lcom/stripe/currency/CountryCode$Assignment;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/currency/CountryCode$Assignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2042
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/currency/CountryCode$Assignment;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/currency/CountryCode$Assignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/currency/CountryCode$Assignment;
    .locals 1

    const-class v0, Lcom/stripe/currency/CountryCode$Assignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/currency/CountryCode$Assignment;

    return-object p0
.end method

.method public static values()[Lcom/stripe/currency/CountryCode$Assignment;
    .locals 1

    sget-object v0, Lcom/stripe/currency/CountryCode$Assignment;->$VALUES:[Lcom/stripe/currency/CountryCode$Assignment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/currency/CountryCode$Assignment;

    return-object v0
.end method
