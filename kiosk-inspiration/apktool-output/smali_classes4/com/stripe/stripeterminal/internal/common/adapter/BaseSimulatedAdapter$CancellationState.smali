.class public final enum Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;
.super Ljava/lang/Enum;
.source "BaseSimulatedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "CancellationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0084\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_CANCELED",
        "CANCELED_SILENTLY",
        "CANCELED_WITH_ERROR",
        "adapter_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field public static final enum CANCELED_SILENTLY:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field public static final enum CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field public static final enum NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;
    .locals 3

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_SILENTLY:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 430
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    const-string v1, "NOT_CANCELED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 431
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    const-string v1, "CANCELED_SILENTLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_SILENTLY:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 432
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    const-string v1, "CANCELED_WITH_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->$values()[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-object v0
.end method
