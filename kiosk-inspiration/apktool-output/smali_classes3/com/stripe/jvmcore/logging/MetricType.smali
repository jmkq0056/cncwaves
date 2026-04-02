.class public final enum Lcom/stripe/jvmcore/logging/MetricType;
.super Ljava/lang/Enum;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/jvmcore/logging/MetricType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/MetricType;",
        "",
        "(Ljava/lang/String;I)V",
        "COUNTER",
        "TIMER",
        "GAUGE",
        "logging"
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

.field private static final synthetic $VALUES:[Lcom/stripe/jvmcore/logging/MetricType;

.field public static final enum COUNTER:Lcom/stripe/jvmcore/logging/MetricType;

.field public static final enum GAUGE:Lcom/stripe/jvmcore/logging/MetricType;

.field public static final enum TIMER:Lcom/stripe/jvmcore/logging/MetricType;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/jvmcore/logging/MetricType;
    .locals 3

    sget-object v0, Lcom/stripe/jvmcore/logging/MetricType;->COUNTER:Lcom/stripe/jvmcore/logging/MetricType;

    sget-object v1, Lcom/stripe/jvmcore/logging/MetricType;->TIMER:Lcom/stripe/jvmcore/logging/MetricType;

    sget-object v2, Lcom/stripe/jvmcore/logging/MetricType;->GAUGE:Lcom/stripe/jvmcore/logging/MetricType;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/jvmcore/logging/MetricType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 547
    new-instance v0, Lcom/stripe/jvmcore/logging/MetricType;

    const-string v1, "COUNTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/logging/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/logging/MetricType;->COUNTER:Lcom/stripe/jvmcore/logging/MetricType;

    .line 548
    new-instance v0, Lcom/stripe/jvmcore/logging/MetricType;

    const-string v1, "TIMER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/logging/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/logging/MetricType;->TIMER:Lcom/stripe/jvmcore/logging/MetricType;

    .line 549
    new-instance v0, Lcom/stripe/jvmcore/logging/MetricType;

    const-string v1, "GAUGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/jvmcore/logging/MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/jvmcore/logging/MetricType;->GAUGE:Lcom/stripe/jvmcore/logging/MetricType;

    invoke-static {}, Lcom/stripe/jvmcore/logging/MetricType;->$values()[Lcom/stripe/jvmcore/logging/MetricType;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/logging/MetricType;->$VALUES:[Lcom/stripe/jvmcore/logging/MetricType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/logging/MetricType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/jvmcore/logging/MetricType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/jvmcore/logging/MetricType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/MetricType;
    .locals 1

    const-class v0, Lcom/stripe/jvmcore/logging/MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/MetricType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/jvmcore/logging/MetricType;
    .locals 1

    sget-object v0, Lcom/stripe/jvmcore/logging/MetricType;->$VALUES:[Lcom/stripe/jvmcore/logging/MetricType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/jvmcore/logging/MetricType;

    return-object v0
.end method
