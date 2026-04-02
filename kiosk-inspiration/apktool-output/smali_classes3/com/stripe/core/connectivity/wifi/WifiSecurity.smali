.class public final enum Lcom/stripe/core/connectivity/wifi/WifiSecurity;
.super Ljava/lang/Enum;
.source "WifiSecurity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
        "",
        "code",
        "",
        "minPasswordLength",
        "",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getCode",
        "()Ljava/lang/String;",
        "getMinPasswordLength",
        "()I",
        "WPA2_EAP",
        "WPA",
        "WPA2",
        "UNSUPPORTED",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/connectivity/wifi/WifiSecurity;

.field public static final Companion:Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;

.field private static final ORDERED_SECURITY_MODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

.field public static final enum WPA:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

.field public static final enum WPA2:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

.field public static final enum WPA2_EAP:Lcom/stripe/core/connectivity/wifi/WifiSecurity;


# instance fields
.field private final code:Ljava/lang/String;

.field private final minPasswordLength:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 4

    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2_EAP:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    sget-object v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    sget-object v3, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    const-string v1, "WPA2_EAP"

    const/4 v2, 0x0

    const-string v3, "WPA2-EAP"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2_EAP:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    .line 26
    new-instance v1, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    const-string v3, "WPA"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v3, v4}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    .line 27
    new-instance v3, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    const-string v5, "WPA2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5, v4}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->WPA2:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    .line 30
    new-instance v4, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    const-string v5, "UNSUPPORTED"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v5, v2}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->UNSUPPORTED:Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    invoke-static {}, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->$values()[Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    move-result-object v2

    sput-object v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->$VALUES:[Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    check-cast v2, [Ljava/lang/Enum;

    invoke-static {v2}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v2

    sput-object v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->Companion:Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;

    .line 41
    filled-new-array {v1, v3, v0}, [Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->ORDERED_SECURITY_MODES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->code:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->minPasswordLength:I

    return-void
.end method

.method public static final synthetic access$getORDERED_SECURITY_MODES$cp()Ljava/util/List;
    .locals 1

    .line 20
    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->ORDERED_SECURITY_MODES:Ljava/util/List;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/connectivity/wifi/WifiSecurity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 1

    const-class v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/connectivity/wifi/WifiSecurity;
    .locals 1

    sget-object v0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->$VALUES:[Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinPasswordLength()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->minPasswordLength:I

    return v0
.end method
