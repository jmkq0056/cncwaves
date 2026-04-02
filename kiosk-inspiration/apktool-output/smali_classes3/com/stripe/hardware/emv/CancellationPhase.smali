.class public final enum Lcom/stripe/hardware/emv/CancellationPhase;
.super Ljava/lang/Enum;
.source "CancellationPhase.kt"


# annotations
.annotation runtime Lcom/stripe/jvmcore/dagger/PaymentCollection;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/emv/CancellationPhase;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/CancellationPhase;",
        "",
        "(Ljava/lang/String;I)V",
        "COLLECTION",
        "AUTH",
        "ACCOUNT_TYPE_SELECTION",
        "APPLICATION_SELECTION",
        "PIN",
        "FINAL_CONFIRMATION",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum ACCOUNT_TYPE_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum APPLICATION_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum AUTH:Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum COLLECTION:Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum FINAL_CONFIRMATION:Lcom/stripe/hardware/emv/CancellationPhase;

.field public static final enum PIN:Lcom/stripe/hardware/emv/CancellationPhase;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/emv/CancellationPhase;
    .locals 6

    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->COLLECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    sget-object v1, Lcom/stripe/hardware/emv/CancellationPhase;->AUTH:Lcom/stripe/hardware/emv/CancellationPhase;

    sget-object v2, Lcom/stripe/hardware/emv/CancellationPhase;->ACCOUNT_TYPE_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    sget-object v3, Lcom/stripe/hardware/emv/CancellationPhase;->APPLICATION_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    sget-object v4, Lcom/stripe/hardware/emv/CancellationPhase;->PIN:Lcom/stripe/hardware/emv/CancellationPhase;

    sget-object v5, Lcom/stripe/hardware/emv/CancellationPhase;->FINAL_CONFIRMATION:Lcom/stripe/hardware/emv/CancellationPhase;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/hardware/emv/CancellationPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "COLLECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->COLLECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 13
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "AUTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->AUTH:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "ACCOUNT_TYPE_SELECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->ACCOUNT_TYPE_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 15
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "APPLICATION_SELECTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->APPLICATION_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 16
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "PIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->PIN:Lcom/stripe/hardware/emv/CancellationPhase;

    .line 17
    new-instance v0, Lcom/stripe/hardware/emv/CancellationPhase;

    const-string v1, "FINAL_CONFIRMATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/emv/CancellationPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->FINAL_CONFIRMATION:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-static {}, Lcom/stripe/hardware/emv/CancellationPhase;->$values()[Lcom/stripe/hardware/emv/CancellationPhase;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->$VALUES:[Lcom/stripe/hardware/emv/CancellationPhase;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/stripe/hardware/emv/CancellationPhase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/emv/CancellationPhase;
    .locals 1

    const-class v0, Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/emv/CancellationPhase;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/emv/CancellationPhase;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->$VALUES:[Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/emv/CancellationPhase;

    return-object v0
.end method
