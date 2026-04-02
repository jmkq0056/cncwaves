.class public final enum Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
.super Ljava/lang/Enum;
.source "CardPresentRequestPartialAuthorization.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "typeName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTypeName",
        "()Ljava/lang/String;",
        "IF_AVAILABLE",
        "NEVER",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;

.field public static final enum IF_AVAILABLE:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "if_available"
    .end annotation
.end field

.field public static final enum NEVER:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "never"
    .end annotation
.end field


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->IF_AVAILABLE:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->NEVER:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    filled-new-array {v0, v1}, [Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    const/4 v1, 0x0

    .line 13
    const-string v2, "if_available"

    .line 12
    const-string v3, "IF_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->IF_AVAILABLE:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    .line 15
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    const/4 v1, 0x1

    .line 16
    const-string v2, "never"

    .line 15
    const-string v3, "NEVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->NEVER:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$values()[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$VALUES:[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;

    .line 10
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$cachedSerializer$delegate:Lkotlin/Lazy;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->$VALUES:[Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->typeName:Ljava/lang/String;

    return-object v0
.end method
