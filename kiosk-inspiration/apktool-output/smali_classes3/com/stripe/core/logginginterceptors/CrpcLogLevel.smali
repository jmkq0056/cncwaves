.class public final enum Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
.super Ljava/lang/Enum;
.source "CrpcLogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NONE",
        "ERROR",
        "VERBOSE",
        "logging-interceptors_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

.field public static final enum ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

.field public static final enum NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

.field public static final enum VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
    .locals 3

    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    sget-object v1, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    sget-object v2, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    filled-new-array {v0, v1, v2}, [Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    .line 8
    new-instance v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    .line 9
    new-instance v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    const-string v1, "VERBOSE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    invoke-static {}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->$values()[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->$VALUES:[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
    .locals 1

    const-class v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;
    .locals 1

    sget-object v0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->$VALUES:[Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->value:I

    return v0
.end method
