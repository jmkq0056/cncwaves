.class public final enum Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
.super Ljava/lang/Enum;
.source "AdapterType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "",
        "(Ljava/lang/String;I)V",
        "BBPOS",
        "COTS",
        "EMBEDDED",
        "REMOTE",
        "SIMULATED",
        "TEST",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum BBPOS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum COTS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum EMBEDDED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum SIMULATED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

.field public static final enum TEST:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 6

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->BBPOS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->COTS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->EMBEDDED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->SIMULATED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->TEST:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "BBPOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->BBPOS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    .line 8
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "COTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->COTS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    .line 9
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->EMBEDDED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    .line 10
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "REMOTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    .line 11
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "SIMULATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->SIMULATED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    .line 12
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    const-string v1, "TEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->TEST:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->$values()[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object v0
.end method
