.class public final enum Lcom/stripe/hardware/emv/AccountType;
.super Ljava/lang/Enum;
.source "AccountType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/AccountType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/AccountType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/AccountType;",
        "",
        "emvValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getEmvValue",
        "()Ljava/lang/String;",
        "toTlvBlob",
        "DEFAULT",
        "SAVINGS",
        "CHECKING",
        "CREDIT",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/AccountType;

.field public static final enum CHECKING:Lcom/stripe/hardware/emv/AccountType;

.field public static final enum CREDIT:Lcom/stripe/hardware/emv/AccountType;

.field public static final Companion:Lcom/stripe/hardware/emv/AccountType$Companion;

.field public static final enum DEFAULT:Lcom/stripe/hardware/emv/AccountType;

.field public static final enum SAVINGS:Lcom/stripe/hardware/emv/AccountType;


# instance fields
.field private final emvValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/AccountType;
    .locals 4

    sget-object v0, Lcom/stripe/hardware/emv/AccountType;->DEFAULT:Lcom/stripe/hardware/emv/AccountType;

    sget-object v1, Lcom/stripe/hardware/emv/AccountType;->SAVINGS:Lcom/stripe/hardware/emv/AccountType;

    sget-object v2, Lcom/stripe/hardware/emv/AccountType;->CHECKING:Lcom/stripe/hardware/emv/AccountType;

    sget-object v3, Lcom/stripe/hardware/emv/AccountType;->CREDIT:Lcom/stripe/hardware/emv/AccountType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/hardware/emv/AccountType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/AccountType;

    const/4 v1, 0x0

    const-string v2, "00"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/AccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->DEFAULT:Lcom/stripe/hardware/emv/AccountType;

    .line 19
    new-instance v0, Lcom/stripe/hardware/emv/AccountType;

    const/4 v1, 0x1

    const-string v2, "10"

    const-string v3, "SAVINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/AccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->SAVINGS:Lcom/stripe/hardware/emv/AccountType;

    .line 24
    new-instance v0, Lcom/stripe/hardware/emv/AccountType;

    const/4 v1, 0x2

    const-string v2, "20"

    const-string v3, "CHECKING"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/AccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->CHECKING:Lcom/stripe/hardware/emv/AccountType;

    .line 29
    new-instance v0, Lcom/stripe/hardware/emv/AccountType;

    const/4 v1, 0x3

    const-string v2, "30"

    const-string v3, "CREDIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/emv/AccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->CREDIT:Lcom/stripe/hardware/emv/AccountType;

    invoke-static {}, Lcom/stripe/hardware/emv/AccountType;->$values()[Lcom/stripe/hardware/emv/AccountType;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->$VALUES:[Lcom/stripe/hardware/emv/AccountType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/hardware/emv/AccountType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/AccountType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/emv/AccountType;->Companion:Lcom/stripe/hardware/emv/AccountType$Companion;

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

    iput-object p3, p0, Lcom/stripe/hardware/emv/AccountType;->emvValue:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/AccountType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/AccountType;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/AccountType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/AccountType;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/AccountType;->$VALUES:[Lcom/stripe/hardware/emv/AccountType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/AccountType;

    return-object v0
.end method


# virtual methods
.method public final getEmvValue()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/hardware/emv/AccountType;->emvValue:Ljava/lang/String;

    return-object v0
.end method

.method public final toTlvBlob()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5F5701"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/emv/AccountType;->emvValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
