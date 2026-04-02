.class public final enum Lcom/stripe/hardware/emv/ApplicationId;
.super Ljava/lang/Enum;
.source "ApplicationId.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/ApplicationId;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/ApplicationId;",
        "",
        "id",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "VISA_CREDIT",
        "VISA_ELECTRON",
        "VISA_US_COMMON_DEBIT",
        "MASTERCARD_CREDIT",
        "AMEX_CREDIT",
        "INTERAC",
        "EFTPOS_SAVING",
        "EFTPOS_CHECKING",
        "GIROCARD",
        "JCB",
        "DISCOVER",
        "DISCOVER_ZIP",
        "UNION_PAY",
        "UNION_PAY_QUASI",
        "MAESTRO_DEBIT",
        "MAESTRO_US",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum AMEX_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum DISCOVER:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum DISCOVER_ZIP:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum EFTPOS_CHECKING:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum GIROCARD:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum JCB:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum MAESTRO_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum MAESTRO_US:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum MASTERCARD_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum UNION_PAY:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum UNION_PAY_QUASI:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum VISA_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum VISA_ELECTRON:Lcom/stripe/hardware/emv/ApplicationId;

.field public static final enum VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/ApplicationId;
    .locals 17

    sget-object v1, Lcom/stripe/hardware/emv/ApplicationId;->VISA_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v2, Lcom/stripe/hardware/emv/ApplicationId;->VISA_ELECTRON:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v3, Lcom/stripe/hardware/emv/ApplicationId;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v4, Lcom/stripe/hardware/emv/ApplicationId;->MASTERCARD_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v5, Lcom/stripe/hardware/emv/ApplicationId;->AMEX_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v6, Lcom/stripe/hardware/emv/ApplicationId;->INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v7, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v8, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_CHECKING:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v9, Lcom/stripe/hardware/emv/ApplicationId;->GIROCARD:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v10, Lcom/stripe/hardware/emv/ApplicationId;->JCB:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v11, Lcom/stripe/hardware/emv/ApplicationId;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v12, Lcom/stripe/hardware/emv/ApplicationId;->DISCOVER_ZIP:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v13, Lcom/stripe/hardware/emv/ApplicationId;->UNION_PAY:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v14, Lcom/stripe/hardware/emv/ApplicationId;->UNION_PAY_QUASI:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v15, Lcom/stripe/hardware/emv/ApplicationId;->MAESTRO_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

    sget-object v16, Lcom/stripe/hardware/emv/ApplicationId;->MAESTRO_US:Lcom/stripe/hardware/emv/ApplicationId;

    filled-new-array/range {v1 .. v16}, [Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x0

    const-string v2, "A0000000031010"

    const-string v3, "VISA_CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->VISA_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 13
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x1

    const-string v2, "A0000000032010"

    const-string v3, "VISA_ELECTRON"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->VISA_ELECTRON:Lcom/stripe/hardware/emv/ApplicationId;

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x2

    const-string v2, "A0000000980840"

    const-string v3, "VISA_US_COMMON_DEBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->VISA_US_COMMON_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 15
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x3

    const-string v2, "A0000000041010"

    const-string v3, "MASTERCARD_CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->MASTERCARD_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 16
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x4

    const-string v2, "A00000002501"

    const-string v3, "AMEX_CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->AMEX_CREDIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 17
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x5

    const-string v2, "A0000002771010"

    const-string v3, "INTERAC"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

    .line 18
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x6

    const-string v2, "A00000038410"

    const-string v3, "EFTPOS_SAVING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_SAVING:Lcom/stripe/hardware/emv/ApplicationId;

    .line 19
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/4 v1, 0x7

    const-string v2, "A00000038420"

    const-string v3, "EFTPOS_CHECKING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->EFTPOS_CHECKING:Lcom/stripe/hardware/emv/ApplicationId;

    .line 20
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0x8

    const-string v2, "A0000003591010028001"

    const-string v3, "GIROCARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->GIROCARD:Lcom/stripe/hardware/emv/ApplicationId;

    .line 21
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0x9

    const-string v2, "A0000000651010"

    const-string v3, "JCB"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->JCB:Lcom/stripe/hardware/emv/ApplicationId;

    .line 22
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xa

    const-string v2, "A0000001523010"

    const-string v3, "DISCOVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->DISCOVER:Lcom/stripe/hardware/emv/ApplicationId;

    .line 23
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xb

    const-string v2, "A0000003241010"

    const-string v3, "DISCOVER_ZIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->DISCOVER_ZIP:Lcom/stripe/hardware/emv/ApplicationId;

    .line 24
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xc

    const-string v2, "A000000333010102"

    const-string v3, "UNION_PAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->UNION_PAY:Lcom/stripe/hardware/emv/ApplicationId;

    .line 25
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xd

    const-string v2, "A000000333010103"

    const-string v3, "UNION_PAY_QUASI"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->UNION_PAY_QUASI:Lcom/stripe/hardware/emv/ApplicationId;

    .line 26
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xe

    const-string v2, "A0000000043060"

    const-string v3, "MAESTRO_DEBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->MAESTRO_DEBIT:Lcom/stripe/hardware/emv/ApplicationId;

    .line 27
    new-instance v0, Lcom/stripe/hardware/emv/ApplicationId;

    const/16 v1, 0xf

    const-string v2, "A0000000042203"

    const-string v3, "MAESTRO_US"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/ApplicationId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->MAESTRO_US:Lcom/stripe/hardware/emv/ApplicationId;

    invoke-static {}, Lcom/stripe/hardware/emv/ApplicationId;->$values()[Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->$VALUES:[Lcom/stripe/hardware/emv/ApplicationId;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/ApplicationId;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/stripe/hardware/emv/ApplicationId;->id:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/emv/ApplicationId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/ApplicationId;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/ApplicationId;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/ApplicationId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/ApplicationId;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/ApplicationId;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/ApplicationId;->$VALUES:[Lcom/stripe/hardware/emv/ApplicationId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/ApplicationId;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/hardware/emv/ApplicationId;->id:Ljava/lang/String;

    return-object v0
.end method
