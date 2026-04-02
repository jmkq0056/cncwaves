.class public final enum Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
.super Ljava/lang/Enum;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0087\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
        "",
        "status",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getStatus",
        "()Ljava/lang/String;",
        "ONLINE",
        "OFFLINE",
        "UNKNOWN",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;

.field public static final enum OFFLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "offline"
    .end annotation
.end field

.field public static final enum ONLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "online"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "unknown"
    .end annotation
.end field


# instance fields
.field private final status:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .locals 3

    sget-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 174
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    const/4 v1, 0x0

    .line 175
    const-string v2, "online"

    .line 174
    const-string v3, "ONLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    .line 177
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    const/4 v1, 0x1

    .line 178
    const-string v2, "offline"

    .line 177
    const-string v3, "OFFLINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    .line 180
    new-instance v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    const/4 v1, 0x2

    .line 181
    const-string v2, "unknown"

    .line 180
    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$values()[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->Companion:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion;

    .line 172
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->status:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 172
    sget-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Reader$NetworkStatus;->status:Ljava/lang/String;

    return-object v0
.end method
