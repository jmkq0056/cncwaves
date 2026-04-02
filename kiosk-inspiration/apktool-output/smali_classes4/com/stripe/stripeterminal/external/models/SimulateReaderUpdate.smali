.class public final enum Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
.super Ljava/lang/Enum;
.source "SimulateReaderUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
        "",
        "(Ljava/lang/String;I)V",
        "UPDATE_AVAILABLE",
        "NONE",
        "REQUIRED",
        "REQUIRED_FOR_OFFLINE",
        "LOW_BATTERY",
        "LOW_BATTERY_SUCCEED_CONNECT",
        "RANDOM",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum LOW_BATTERY_SUCCEED_CONNECT:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum NONE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum RANDOM:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum REQUIRED:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum REQUIRED_FOR_OFFLINE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

.field public static final enum UPDATE_AVAILABLE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 7

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->UPDATE_AVAILABLE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->NONE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED_FOR_OFFLINE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY_SUCCEED_CONNECT:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->RANDOM:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->UPDATE_AVAILABLE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->NONE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 23
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "REQUIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "REQUIRED_FOR_OFFLINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->REQUIRED_FOR_OFFLINE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 36
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "LOW_BATTERY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "LOW_BATTERY_SUCCEED_CONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->LOW_BATTERY_SUCCEED_CONNECT:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 48
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    const-string v1, "RANDOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->RANDOM:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->$values()[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0
.end method
