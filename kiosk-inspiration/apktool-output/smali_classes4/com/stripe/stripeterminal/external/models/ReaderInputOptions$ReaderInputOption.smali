.class public final enum Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
.super Ljava/lang/Enum;
.source "ReaderInputOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReaderInputOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;",
        "",
        "displayName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "NONE",
        "INSERT",
        "SWIPE",
        "TAP",
        "MANUAL_ENTRY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

.field public static final enum INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

.field public static final enum MANUAL_ENTRY:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

.field public static final enum NONE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

.field public static final enum SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

.field public static final enum TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
    .locals 5

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->NONE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->MANUAL_ENTRY:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x0

    const-string v2, "None"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->NONE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    .line 34
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x1

    const-string v2, "Insert"

    const-string v3, "INSERT"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x2

    const-string v2, "Swipe"

    const-string v3, "SWIPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    .line 44
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x3

    const-string v2, "Tap"

    const-string v3, "TAP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    const/4 v1, 0x4

    const-string v2, "Manual Entry"

    const-string v3, "MANUAL_ENTRY"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->MANUAL_ENTRY:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->$values()[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->displayName:Ljava/lang/String;

    return-object v0
.end method
