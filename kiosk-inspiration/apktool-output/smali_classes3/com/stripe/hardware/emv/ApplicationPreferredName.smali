.class public final enum Lcom/stripe/hardware/emv/ApplicationPreferredName;
.super Ljava/lang/Enum;
.source "ApplicationPreferredName.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/ApplicationPreferredName;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/ApplicationPreferredName;",
        "",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "INTERAC",
        "MASTERCARD",
        "VISA",
        "UNION_PAY_CREDIT",
        "AMEX",
        "JCB",
        "DISCOVER",
        "EFTPOS_SAVING",
        "VISA_US_COMMON_DEBIT",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum AMEX:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum DISCOVER:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum INTERAC:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum JCB:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum MASTERCARD:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum UNION_PAY_CREDIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum VISA:Lcom/stripe/hardware/emv/ApplicationPreferredName;

.field public static final enum VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/ApplicationPreferredName;
    .locals 9

    sget-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->INTERAC:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationPreferredName;->MASTERCARD:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v3, Lcom/stripe/hardware/emv/ApplicationPreferredName;->UNION_PAY_CREDIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v4, Lcom/stripe/hardware/emv/ApplicationPreferredName;->AMEX:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v5, Lcom/stripe/hardware/emv/ApplicationPreferredName;->JCB:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v6, Lcom/stripe/hardware/emv/ApplicationPreferredName;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v7, Lcom/stripe/hardware/emv/ApplicationPreferredName;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    sget-object v8, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/hardware/emv/ApplicationPreferredName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x0

    const-string v2, "Interac"

    const-string v3, "INTERAC"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->INTERAC:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 5
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x1

    const-string v2, "MasterCard Credit"

    const-string v3, "MASTERCARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->MASTERCARD:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 6
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x2

    const-string v2, "VISA Debit/Credit (Classic)"

    const-string v3, "VISA"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 7
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x3

    const-string v2, "UnionPay Credit"

    const-string v3, "UNION_PAY_CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->UNION_PAY_CREDIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 8
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x4

    const-string v2, "American Express"

    const-string v3, "AMEX"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->AMEX:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 9
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x5

    const-string v2, "JCB J Smart Credit"

    const-string v3, "JCB"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->JCB:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 10
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x6

    const-string v2, "Discover"

    const-string v3, "DISCOVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 11
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/4 v1, 0x7

    const-string v2, "eftpos SAVINGS"

    const-string v3, "EFTPOS_SAVING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    .line 12
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    const/16 v1, 0x8

    const-string v2, "VISA US Common Debit"

    const-string v3, "VISA_US_COMMON_DEBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationPreferredName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-static {}, Lcom/stripe/hardware/emv/ApplicationPreferredName;->$values()[Lcom/stripe/hardware/emv/ApplicationPreferredName;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->$VALUES:[Lcom/stripe/hardware/emv/ApplicationPreferredName;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->id:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/emv/ApplicationPreferredName;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/ApplicationPreferredName;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/ApplicationPreferredName;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/ApplicationPreferredName;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->$VALUES:[Lcom/stripe/hardware/emv/ApplicationPreferredName;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/ApplicationPreferredName;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/hardware/emv/ApplicationPreferredName;->id:Ljava/lang/String;

    return-object v0
.end method
