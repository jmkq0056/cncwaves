.class public final enum Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;
.super Ljava/lang/Enum;
.source "CardRemovalChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardRemovalCheckStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "CHECKING",
        "TIMEOUT",
        "STILL_INSERTED",
        "REMOVED",
        "hardware_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

.field public static final enum CHECKING:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

.field public static final enum IDLE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

.field public static final enum REMOVED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

.field public static final enum STILL_INSERTED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

.field public static final enum TIMEOUT:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;
    .locals 5

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->IDLE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->CHECKING:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->TIMEOUT:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    sget-object v3, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->STILL_INSERTED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    sget-object v4, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->REMOVED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->IDLE:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    .line 38
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    const-string v1, "CHECKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->CHECKING:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    .line 39
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->TIMEOUT:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    .line 40
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    const-string v1, "STILL_INSERTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->STILL_INSERTED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    .line 41
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    const-string v1, "REMOVED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->REMOVED:Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-static {}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->$values()[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->$VALUES:[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;
    .locals 1

    const-class v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;
    .locals 1

    sget-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;->$VALUES:[Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/bbpos/hardware/CardRemovalChecker$CardRemovalCheckStatus;

    return-object v0
.end method
