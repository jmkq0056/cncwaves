.class public final enum Lcom/stripe/core/readerconnection/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/readerconnection/ConnectionState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/core/readerconnection/ConnectionState;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "CONNECTING",
        "DISCONNECTING",
        "DISCOVERING",
        "STARTING_SESSION",
        "FETCHING_INFO",
        "REBOOTING",
        "readerconnection_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum CONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum DISCONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum DISCOVERING:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum FETCHING_INFO:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum NONE:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum REBOOTING:Lcom/stripe/core/readerconnection/ConnectionState;

.field public static final enum STARTING_SESSION:Lcom/stripe/core/readerconnection/ConnectionState;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/readerconnection/ConnectionState;
    .locals 7

    sget-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->NONE:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v1, Lcom/stripe/core/readerconnection/ConnectionState;->CONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v2, Lcom/stripe/core/readerconnection/ConnectionState;->DISCONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v3, Lcom/stripe/core/readerconnection/ConnectionState;->DISCOVERING:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v4, Lcom/stripe/core/readerconnection/ConnectionState;->STARTING_SESSION:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v5, Lcom/stripe/core/readerconnection/ConnectionState;->FETCHING_INFO:Lcom/stripe/core/readerconnection/ConnectionState;

    sget-object v6, Lcom/stripe/core/readerconnection/ConnectionState;->REBOOTING:Lcom/stripe/core/readerconnection/ConnectionState;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/core/readerconnection/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->NONE:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 8
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->CONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 9
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->DISCONNECTING:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 10
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "DISCOVERING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->DISCOVERING:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 11
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "STARTING_SESSION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->STARTING_SESSION:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 12
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "FETCHING_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->FETCHING_INFO:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 13
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionState;

    const-string v1, "REBOOTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/readerconnection/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->REBOOTING:Lcom/stripe/core/readerconnection/ConnectionState;

    invoke-static {}, Lcom/stripe/core/readerconnection/ConnectionState;->$values()[Lcom/stripe/core/readerconnection/ConnectionState;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->$VALUES:[Lcom/stripe/core/readerconnection/ConnectionState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/stripe/core/readerconnection/ConnectionState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/readerconnection/ConnectionState;
    .locals 1

    const-class v0, Lcom/stripe/core/readerconnection/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/readerconnection/ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/readerconnection/ConnectionState;
    .locals 1

    sget-object v0, Lcom/stripe/core/readerconnection/ConnectionState;->$VALUES:[Lcom/stripe/core/readerconnection/ConnectionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/readerconnection/ConnectionState;

    return-object v0
.end method
