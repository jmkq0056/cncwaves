.class public final enum Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;
.super Ljava/lang/Enum;
.source "EmvProcessingMethod.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;",
        "",
        "method",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getMethod",
        "()Ljava/lang/String;",
        "QUICK_CHIP",
        "TRADITIONAL",
        "common_publish"
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

.field public static final enum QUICK_CHIP:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

.field public static final enum TRADITIONAL:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;
    .locals 2

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->QUICK_CHIP:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->TRADITIONAL:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    filled-new-array {v0, v1}, [Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    const/4 v1, 0x0

    const-string v2, "quick_chip"

    const-string v3, "QUICK_CHIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->QUICK_CHIP:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    .line 5
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    const/4 v1, 0x1

    const-string v2, "traditional"

    const-string v3, "TRADITIONAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->TRADITIONAL:Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->$values()[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->method:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->$VALUES:[Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;

    return-object v0
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/enum/EmvProcessingMethod;->method:Ljava/lang/String;

    return-object v0
.end method
