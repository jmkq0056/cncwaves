.class public final enum Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
.super Ljava/lang/Enum;
.source "PaymentMethodType.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0011B\u0019\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "typeName",
        "",
        "isNonCardPaymentMethod",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "()Z",
        "getTypeName",
        "()Ljava/lang/String;",
        "CARD_PRESENT",
        "CARD",
        "INTERAC_PRESENT",
        "WECHAT_PAY",
        "AFFIRM",
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

.field private static final synthetic $VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

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

.field public static final enum AFFIRM:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "affirm"
    .end annotation
.end field

.field public static final enum CARD:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "card"
    .end annotation
.end field

.field public static final enum CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "card_present"
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

.field public static final enum INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "interac_present"
    .end annotation
.end field

.field public static final enum WECHAT_PAY:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "wechat_pay"
    .end annotation
.end field


# instance fields
.field private final isNonCardPaymentMethod:Z

.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 5

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->WECHAT_PAY:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->AFFIRM:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "CARD_PRESENT"

    const/4 v2, 0x0

    const-string v3, "card_present"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 25
    new-instance v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "CARD"

    const/4 v3, 0x1

    const-string v4, "card"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 31
    new-instance v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v3, "INTERAC_PRESENT"

    const/4 v4, 0x2

    const-string v5, "interac_present"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const-string v1, "WECHAT_PAY"

    const/4 v2, 0x3

    const-string v3, "wechat_pay"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->WECHAT_PAY:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v1, 0x4

    .line 46
    const-string v2, "affirm"

    .line 45
    const-string v3, "AFFIRM"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->AFFIRM:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$values()[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

    .line 48
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion$1;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->typeName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->isNonCardPaymentMethod:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 13
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    const-class v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->$VALUES:[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public final isNonCardPaymentMethod()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->isNonCardPaymentMethod:Z

    return v0
.end method
