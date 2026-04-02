.class public final enum Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;
.super Ljava/lang/Enum;
.source "ReaderSoftwareUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
        "",
        "(Ljava/lang/String;I)V",
        "INCREMENTAL",
        "FIRMWARE",
        "CONFIG",
        "KEYS",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

.field public static final enum CONFIG:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

.field public static final enum FIRMWARE:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

.field public static final enum INCREMENTAL:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

.field public static final enum KEYS:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;
    .locals 4

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->INCREMENTAL:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->FIRMWARE:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->CONFIG:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->KEYS:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 105
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    const-string v1, "INCREMENTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->INCREMENTAL:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    .line 106
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    const-string v1, "FIRMWARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->FIRMWARE:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    .line 107
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    const-string v1, "CONFIG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->CONFIG:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    .line 108
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    const-string v1, "KEYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->KEYS:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->$values()[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->$VALUES:[Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    return-object v0
.end method
