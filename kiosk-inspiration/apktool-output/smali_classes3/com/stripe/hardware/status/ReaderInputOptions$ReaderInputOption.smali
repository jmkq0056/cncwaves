.class public final enum Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;
.super Ljava/lang/Enum;
.source "ReaderInputOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/status/ReaderInputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReaderInputOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;",
        "",
        "displayName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "NONE",
        "INSERT",
        "SWIPE",
        "TAP",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

.field public static final enum INSERT:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

.field public static final enum NONE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

.field public static final enum SWIPE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

.field public static final enum TAP:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;
    .locals 4

    sget-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->NONE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    sget-object v1, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    sget-object v2, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    sget-object v3, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x0

    const-string v2, "None"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->NONE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    .line 33
    new-instance v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x1

    const-string v2, "Insert"

    const-string v3, "INSERT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    .line 38
    new-instance v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x2

    const-string v2, "Swipe"

    const-string v3, "SWIPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    .line 43
    new-instance v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x3

    const-string v2, "Tap"

    const-string v3, "TAP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    invoke-static {}, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->$values()[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->$VALUES:[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;
    .locals 1

    const-class v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->$VALUES:[Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/hardware/status/ReaderInputOptions$ReaderInputOption;->displayName:Ljava/lang/String;

    return-object v0
.end method
