.class public final enum Lcom/stripe/stripeterminal/external/models/NetworkStatus;
.super Ljava/lang/Enum;
.source "NetworkStatus.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0081\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "(Ljava/lang/String;I)V",
        "UNKNOWN",
        "OFFLINE",
        "ONLINE",
        "Companion",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/NetworkStatus;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;

.field public static final enum OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

.field public static final enum ONLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

.field public static final enum UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 3

    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 22
    new-instance v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v1, "OFFLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 27
    new-instance v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v1, "ONLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$values()[Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->Companion:Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;

    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object v0
.end method
