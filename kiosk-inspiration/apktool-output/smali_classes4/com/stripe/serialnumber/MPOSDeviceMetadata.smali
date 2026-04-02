.class public final enum Lcom/stripe/serialnumber/MPOSDeviceMetadata;
.super Ljava/lang/Enum;
.source "MPOSDeviceMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/serialnumber/MPOSDeviceMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/serialnumber/MPOSDeviceMetadata;",
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
        "Chipper1X",
        "Chipper2X",
        "StripeM2",
        "Wisecube",
        "WisePad3",
        "WisePad3S",
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

.field private static final synthetic $VALUES:[Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum Chipper1X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum Chipper2X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum StripeM2:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum WisePad3:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum WisePad3S:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

.field public static final enum Wisecube:Lcom/stripe/serialnumber/MPOSDeviceMetadata;


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
.method private static final synthetic $values()[Lcom/stripe/serialnumber/MPOSDeviceMetadata;
    .locals 6

    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper1X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    sget-object v1, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper2X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    sget-object v2, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->StripeM2:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    sget-object v3, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Wisecube:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    sget-object v4, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    sget-object v5, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3S:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    const/4 v1, 0x2

    .line 24
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Shopi"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 25
    const-string v3, "CHB1"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 20
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 18
    const-string v3, "Chipper1X"

    const-string v6, "bbpos_chipper1x"

    invoke-direct {v0, v3, v4, v6, v2}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper1X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 29
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "CHB20"

    aput-object v3, v2, v4

    const-string v3, "BBPOS"

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "Chipper2X"

    const-string v6, "bbpos_chipper2x"

    invoke-direct {v0, v3, v5, v6, v2}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Chipper2X:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 31
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    const/4 v2, 0x4

    .line 34
    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "CHB30"

    aput-object v6, v3, v4

    .line 35
    const-string v6, "CHB31"

    aput-object v6, v3, v5

    .line 36
    const-string v6, "STRM2"

    aput-object v6, v3, v1

    .line 39
    const-string v6, "Stripe M2"

    const/4 v7, 0x3

    aput-object v6, v3, v7

    .line 33
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 31
    const-string v6, "StripeM2"

    const-string v8, "stripe_m2"

    invoke-direct {v0, v6, v1, v8, v3}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->StripeM2:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 43
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 49
    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "Tap &"

    aput-object v6, v3, v4

    .line 50
    const-string v6, "CHB6"

    aput-object v6, v3, v5

    .line 51
    const-string v6, "WISEPAD 2"

    aput-object v6, v3, v1

    .line 45
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 43
    const-string v6, "Wisecube"

    const-string v8, "bbpos_wisecube"

    invoke-direct {v0, v6, v7, v8, v3}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->Wisecube:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 55
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "WPC30"

    aput-object v6, v3, v4

    const-string v6, "WPC32"

    aput-object v6, v3, v5

    const-string v6, "WISEPAD 3"

    aput-object v6, v3, v1

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v6, "WisePad3"

    const-string v7, "bbpos_wisepad3"

    invoke-direct {v0, v6, v2, v7, v3}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    .line 57
    new-instance v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "WPS32"

    aput-object v2, v1, v4

    const-string v2, "WPS33"

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "WisePad3S"

    const/4 v3, 0x5

    const-string v4, "bbpos_wisepad3s"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->WisePad3S:Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-static {}, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->$values()[Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    move-result-object v0

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->$VALUES:[Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
    iput-object p3, p0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->apiDeviceType:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->serialPrefixes:Ljava/util/Set;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/serialnumber/MPOSDeviceMetadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/serialnumber/MPOSDeviceMetadata;
    .locals 1

    const-class v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    return-object p0
.end method

.method public static values()[Lcom/stripe/serialnumber/MPOSDeviceMetadata;
    .locals 1

    sget-object v0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->$VALUES:[Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/serialnumber/MPOSDeviceMetadata;

    return-object v0
.end method


# virtual methods
.method public final getApiDeviceType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->apiDeviceType:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/stripe/serialnumber/MPOSDeviceMetadata;->serialPrefixes:Ljava/util/Set;

    return-object v0
.end method
