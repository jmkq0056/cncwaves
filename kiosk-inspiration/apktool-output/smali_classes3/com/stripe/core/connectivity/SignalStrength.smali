.class public final enum Lcom/stripe/core/connectivity/SignalStrength;
.super Ljava/lang/Enum;
.source "SignalStrength.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/connectivity/SignalStrength;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/SignalStrength;",
        "",
        "level",
        "",
        "(Ljava/lang/String;II)V",
        "getLevel",
        "()I",
        "None",
        "Low",
        "Medium",
        "High",
        "connectivity_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/connectivity/SignalStrength;

.field public static final enum High:Lcom/stripe/core/connectivity/SignalStrength;

.field public static final enum Low:Lcom/stripe/core/connectivity/SignalStrength;

.field public static final enum Medium:Lcom/stripe/core/connectivity/SignalStrength;

.field public static final enum None:Lcom/stripe/core/connectivity/SignalStrength;


# instance fields
.field private final level:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/connectivity/SignalStrength;
    .locals 4

    sget-object v0, Lcom/stripe/core/connectivity/SignalStrength;->None:Lcom/stripe/core/connectivity/SignalStrength;

    sget-object v1, Lcom/stripe/core/connectivity/SignalStrength;->Low:Lcom/stripe/core/connectivity/SignalStrength;

    sget-object v2, Lcom/stripe/core/connectivity/SignalStrength;->Medium:Lcom/stripe/core/connectivity/SignalStrength;

    sget-object v3, Lcom/stripe/core/connectivity/SignalStrength;->High:Lcom/stripe/core/connectivity/SignalStrength;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/core/connectivity/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/stripe/core/connectivity/SignalStrength;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/core/connectivity/SignalStrength;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->None:Lcom/stripe/core/connectivity/SignalStrength;

    .line 8
    new-instance v0, Lcom/stripe/core/connectivity/SignalStrength;

    const-string v1, "Low"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/core/connectivity/SignalStrength;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->Low:Lcom/stripe/core/connectivity/SignalStrength;

    .line 9
    new-instance v0, Lcom/stripe/core/connectivity/SignalStrength;

    const-string v1, "Medium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/core/connectivity/SignalStrength;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->Medium:Lcom/stripe/core/connectivity/SignalStrength;

    .line 10
    new-instance v0, Lcom/stripe/core/connectivity/SignalStrength;

    const-string v1, "High"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/core/connectivity/SignalStrength;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->High:Lcom/stripe/core/connectivity/SignalStrength;

    invoke-static {}, Lcom/stripe/core/connectivity/SignalStrength;->$values()[Lcom/stripe/core/connectivity/SignalStrength;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->$VALUES:[Lcom/stripe/core/connectivity/SignalStrength;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/SignalStrength;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/stripe/core/connectivity/SignalStrength;->level:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/connectivity/SignalStrength;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/connectivity/SignalStrength;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/connectivity/SignalStrength;
    .locals 1

    const-class v0, Lcom/stripe/core/connectivity/SignalStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/connectivity/SignalStrength;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/connectivity/SignalStrength;
    .locals 1

    sget-object v0, Lcom/stripe/core/connectivity/SignalStrength;->$VALUES:[Lcom/stripe/core/connectivity/SignalStrength;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/connectivity/SignalStrength;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/stripe/core/connectivity/SignalStrength;->level:I

    return v0
.end method
