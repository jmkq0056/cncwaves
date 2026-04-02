.class public final enum Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
.super Ljava/lang/Enum;
.source "ConnectionStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_CONNECTED",
        "DISCOVERING",
        "CONNECTING",
        "CONNECTED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

.field public static final enum CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

.field public static final enum CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

.field public static final enum DISCOVERING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

.field public static final enum NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 4

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->DISCOVERING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    const-string v1, "DISCOVERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->DISCOVERING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    .line 24
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    const-string v1, "CONNECTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->$values()[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    return-object v0
.end method
