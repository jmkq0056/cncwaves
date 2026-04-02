.class public final enum Lcom/stripe/hardware/status/TamperType;
.super Ljava/lang/Enum;
.source "BbposTamper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/hardware/status/TamperType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/hardware/status/TamperType;",
        "",
        "(Ljava/lang/String;I)V",
        "Unknown",
        "FirmwareIntegrityCheck",
        "ConfigIntegrityCheck",
        "KeyIntegrityCheck",
        "UnrecoverableTamper",
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

.field private static final synthetic $VALUES:[Lcom/stripe/hardware/status/TamperType;

.field public static final enum ConfigIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

.field public static final enum FirmwareIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

.field public static final enum KeyIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

.field public static final enum Unknown:Lcom/stripe/hardware/status/TamperType;

.field public static final enum UnrecoverableTamper:Lcom/stripe/hardware/status/TamperType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/hardware/status/TamperType;
    .locals 5

    sget-object v0, Lcom/stripe/hardware/status/TamperType;->Unknown:Lcom/stripe/hardware/status/TamperType;

    sget-object v1, Lcom/stripe/hardware/status/TamperType;->FirmwareIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    sget-object v2, Lcom/stripe/hardware/status/TamperType;->ConfigIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    sget-object v3, Lcom/stripe/hardware/status/TamperType;->KeyIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    sget-object v4, Lcom/stripe/hardware/status/TamperType;->UnrecoverableTamper:Lcom/stripe/hardware/status/TamperType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/hardware/status/TamperType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/hardware/status/TamperType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/TamperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->Unknown:Lcom/stripe/hardware/status/TamperType;

    .line 5
    new-instance v0, Lcom/stripe/hardware/status/TamperType;

    const-string v1, "FirmwareIntegrityCheck"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/TamperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->FirmwareIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    .line 6
    new-instance v0, Lcom/stripe/hardware/status/TamperType;

    const-string v1, "ConfigIntegrityCheck"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/TamperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->ConfigIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    .line 7
    new-instance v0, Lcom/stripe/hardware/status/TamperType;

    const-string v1, "KeyIntegrityCheck"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/TamperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->KeyIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    .line 8
    new-instance v0, Lcom/stripe/hardware/status/TamperType;

    const-string v1, "UnrecoverableTamper"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/hardware/status/TamperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->UnrecoverableTamper:Lcom/stripe/hardware/status/TamperType;

    invoke-static {}, Lcom/stripe/hardware/status/TamperType;->$values()[Lcom/stripe/hardware/status/TamperType;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->$VALUES:[Lcom/stripe/hardware/status/TamperType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/hardware/status/TamperType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/hardware/status/TamperType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/hardware/status/TamperType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/hardware/status/TamperType;
    .locals 1

    const-class v0, Lcom/stripe/hardware/status/TamperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/hardware/status/TamperType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/hardware/status/TamperType;
    .locals 1

    sget-object v0, Lcom/stripe/hardware/status/TamperType;->$VALUES:[Lcom/stripe/hardware/status/TamperType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/hardware/status/TamperType;

    return-object v0
.end method
