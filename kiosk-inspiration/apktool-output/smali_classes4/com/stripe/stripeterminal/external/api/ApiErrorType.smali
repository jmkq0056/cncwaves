.class public final enum Lcom/stripe/stripeterminal/external/api/ApiErrorType;
.super Ljava/lang/Enum;
.source "ApiErrorType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0087\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
        "",
        "(Ljava/lang/String;I)V",
        "API_CONNECTION_ERROR",
        "API_ERROR",
        "AUTHENTICATION_ERROR",
        "CARD_ERROR",
        "IDEMPOTENCY_ERROR",
        "INVALID_REQUEST_ERROR",
        "RATE_LIMIT_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/api/ApiErrorType;

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

.field public static final enum API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "api_connection_error"
    .end annotation
.end field

.field public static final enum API_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "api_error"
    .end annotation
.end field

.field public static final enum AUTHENTICATION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "authentication_error"
    .end annotation
.end field

.field public static final enum CARD_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "card_error"
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;

.field public static final enum IDEMPOTENCY_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "idempotency_error"
    .end annotation
.end field

.field public static final enum INVALID_REQUEST_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "invalid_request_error"
    .end annotation
.end field

.field public static final enum RATE_LIMIT_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "rate_limit_error"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 7

    sget-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v1, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->API_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v2, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->AUTHENTICATION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v3, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->CARD_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v4, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->IDEMPOTENCY_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v5, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->INVALID_REQUEST_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    sget-object v6, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->RATE_LIMIT_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "API_CONNECTION_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 27
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "API_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->API_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 33
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "AUTHENTICATION_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->AUTHENTICATION_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "CARD_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->CARD_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 47
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "IDEMPOTENCY_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->IDEMPOTENCY_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 53
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "INVALID_REQUEST_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->INVALID_REQUEST_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    const-string v1, "RATE_LIMIT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->RATE_LIMIT_ERROR:Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    invoke-static {}, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$values()[Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$VALUES:[Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->Companion:Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion;

    .line 14
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/api/ApiErrorType$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 14
    sget-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/api/ApiErrorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/api/ApiErrorType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/api/ApiErrorType;->$VALUES:[Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/api/ApiErrorType;

    return-object v0
.end method
