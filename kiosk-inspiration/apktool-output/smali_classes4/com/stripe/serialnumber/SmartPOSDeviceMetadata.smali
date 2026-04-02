.class public final enum Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
.super Ljava/lang/Enum;
.source "SmartPOSDeviceMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "",
        "apiDeviceType",
        "",
        "serialPrefixes",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V",
        "getApiDeviceType",
        "()Ljava/lang/String;",
        "getSerialPrefixes",
        "()Ljava/util/Set;",
        "WisePosE",
        "WisePosEDevKit",
        "S700",
        "S700DevKit",
        "S710",
        "S710DevKit",
        "Etna",
        "UnknownDevice",
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

.field private static final synthetic $VALUES:[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum S700:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum S700DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum UnknownDevice:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum WisePosE:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

.field public static final enum WisePosEDevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;


# instance fields
.field private final apiDeviceType:Ljava/lang/String;

.field private final serialPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 8

    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosE:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosEDevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v2, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v3, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v4, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v5, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v6, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    sget-object v7, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->UnknownDevice:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    filled-new-array/range {v0 .. v7}, [Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 20
    const-string v1, "WSC51"

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 18
    const-string v2, "WisePosE"

    const/4 v3, 0x0

    const-string v4, "bbpos_wisepos_e"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosE:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 23
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 25
    const-string v1, "WSCD0"

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 23
    const-string v2, "WisePosEDevKit"

    const/4 v4, 0x1

    const-string v5, "bbpos_wisepos_e_devkit"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->WisePosEDevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 28
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    const/4 v1, 0x3

    .line 31
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "STR70"

    aput-object v5, v2, v3

    .line 36
    const-string v5, "STRS7"

    aput-object v5, v2, v4

    .line 37
    const-string v5, "WTH16"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 30
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 28
    const-string v5, "S700"

    const-string v7, "stripe_s700"

    invoke-direct {v0, v5, v6, v7, v2}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 41
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 44
    const-string v2, "SDR70"

    .line 43
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 41
    const-string v5, "S700DevKit"

    const-string v7, "stripe_s700_devkit"

    invoke-direct {v0, v5, v1, v7, v2}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S700DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 48
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 51
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "STR71"

    aput-object v2, v1, v3

    .line 52
    const-string v2, "WTH13"

    aput-object v2, v1, v4

    .line 50
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 48
    const-string v2, "S710"

    const/4 v3, 0x4

    const-string v4, "stripe_s710"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 56
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 59
    const-string v1, "SDR71"

    .line 58
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 56
    const-string v2, "S710DevKit"

    const/4 v3, 0x5

    const-string v4, "stripe_s710_devkit"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->S710DevKit:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 63
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 66
    const-string v1, "WTH11"

    .line 65
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 63
    const-string v2, "Etna"

    const/4 v3, 0x6

    const-string v4, "bbpos_shopify_etna"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->Etna:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 70
    new-instance v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    const-string v1, ""

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "UnknownDevice"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->UnknownDevice:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-static {}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->$values()[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    move-result-object v0

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->$VALUES:[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->apiDeviceType:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->serialPrefixes:Ljava/util/Set;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 1

    const-class v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object p0
.end method

.method public static values()[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 1

    sget-object v0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->$VALUES:[Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object v0
.end method


# virtual methods
.method public final getApiDeviceType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->apiDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->serialPrefixes:Ljava/util/Set;

    return-object v0
.end method
