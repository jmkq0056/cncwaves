.class public final enum Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
.super Ljava/lang/Enum;
.source "SetupAttemptStatus.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;",
        "",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "(Ljava/lang/String;I)V",
        "REQUIRES_CONFIRMATION",
        "REQUIRES_ACTION",
        "PROCESSING",
        "SUCCEEDED",
        "FAILED",
        "ABANDONED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

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

.field public static final enum ABANDONED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "abandoned"
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;

.field public static final enum FAILED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "failed"
    .end annotation
.end field

.field public static final enum PROCESSING:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "processing"
    .end annotation
.end field

.field public static final enum REQUIRES_ACTION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "requires_action"
    .end annotation
.end field

.field public static final enum REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "requires_confirmation"
    .end annotation
.end field

.field public static final enum SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "succeeded"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .locals 6

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->REQUIRES_ACTION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->PROCESSING:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->FAILED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    sget-object v5, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->ABANDONED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "REQUIRES_CONFIRMATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 14
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "REQUIRES_ACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->REQUIRES_ACTION:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 17
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "PROCESSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->PROCESSING:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 20
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 23
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->FAILED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    .line 26
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    const-string v1, "ABANDONED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->ABANDONED:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$values()[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;->$VALUES:[Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;

    return-object v0
.end method
