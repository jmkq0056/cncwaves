.class public final enum Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;
.super Ljava/lang/Enum;
.source "ApplicationTraceResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/ApplicationTraceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationTraceOutcome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "FAILURE",
        "CANCELED",
        "INTERRUPTED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

.field public static final enum CANCELED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

.field public static final enum FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

.field public static final enum INTERRUPTED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

.field public static final enum SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;
    .locals 4

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->CANCELED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    sget-object v3, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->INTERRUPTED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    filled-new-array {v0, v1, v2, v3}, [Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    .line 29
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const-string v1, "FAILURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    .line 30
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const-string v1, "CANCELED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->CANCELED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    .line 31
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->INTERRUPTED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    invoke-static {}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->$values()[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    move-result-object v0

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->$VALUES:[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;
    .locals 1

    const-class v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    return-object p0
.end method

.method public static values()[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;
    .locals 1

    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->$VALUES:[Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    return-object v0
.end method
