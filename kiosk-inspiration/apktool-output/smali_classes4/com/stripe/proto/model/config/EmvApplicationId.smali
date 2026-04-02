.class public final enum Lcom/stripe/proto/model/config/EmvApplicationId;
.super Ljava/lang/Enum;
.source "EmvApplicationId.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/EmvApplicationId$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/config/EmvApplicationId;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0081\u0002\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0018B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/EmvApplicationId;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN_AID",
        "AID_VISA",
        "AID_VISA_US_COMMON_DEBIT",
        "AID_VISA_INTERLINK",
        "AID_VISA_ELECTRON",
        "AID_MASTERCARD",
        "AID_INTERNATIONAL_MAESTRO",
        "AID_US_MAESTRO",
        "AID_DISCOVER",
        "AID_DISCOVER_US_COMMON_DEBIT",
        "AID_DNA_US_COMMON_DEBIT",
        "AID_AMEX",
        "AID_CUP",
        "AID_CUP_DEBIT",
        "AID_JCB",
        "AID_INTERAC",
        "Companion",
        "terminal_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AID_AMEX:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_CUP:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_CUP_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_DISCOVER:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_DISCOVER_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_DNA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_INTERAC:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_INTERNATIONAL_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_JCB:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_MASTERCARD:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_US_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_VISA:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_VISA_ELECTRON:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_VISA_INTERLINK:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final enum AID_VISA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

.field public static final Companion:Lcom/stripe/proto/model/config/EmvApplicationId$Companion;

.field public static final enum UNKNOWN_AID:Lcom/stripe/proto/model/config/EmvApplicationId;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/config/EmvApplicationId;
    .locals 17

    sget-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->UNKNOWN_AID:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v2, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v3, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v4, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_INTERLINK:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v5, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_ELECTRON:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v6, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_MASTERCARD:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v7, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_INTERNATIONAL_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v8, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_US_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v9, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DISCOVER:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v10, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DISCOVER_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v11, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DNA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v12, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_AMEX:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v13, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_CUP:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v14, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_CUP_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v15, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_JCB:Lcom/stripe/proto/model/config/EmvApplicationId;

    sget-object v16, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_INTERAC:Lcom/stripe/proto/model/config/EmvApplicationId;

    filled-new-array/range {v1 .. v16}, [Lcom/stripe/proto/model/config/EmvApplicationId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v1, "UNKNOWN_AID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/config/EmvApplicationId;->UNKNOWN_AID:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 20
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_VISA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 21
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_VISA_US_COMMON_DEBIT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 22
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_VISA_INTERLINK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_INTERLINK:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_VISA_ELECTRON"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_VISA_ELECTRON:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_MASTERCARD"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_MASTERCARD:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_INTERNATIONAL_MAESTRO"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_INTERNATIONAL_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_US_MAESTRO"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_US_MAESTRO:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_DISCOVER"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DISCOVER:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 28
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_DISCOVER_US_COMMON_DEBIT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DISCOVER_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 29
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_DNA_US_COMMON_DEBIT"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_DNA_US_COMMON_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 30
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_AMEX"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_AMEX:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 31
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_CUP"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_CUP:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 32
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_CUP_DEBIT"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_CUP_DEBIT:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_JCB"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_JCB:Lcom/stripe/proto/model/config/EmvApplicationId;

    .line 34
    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    const-string v2, "AID_INTERAC"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/config/EmvApplicationId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->AID_INTERAC:Lcom/stripe/proto/model/config/EmvApplicationId;

    invoke-static {}, Lcom/stripe/proto/model/config/EmvApplicationId;->$values()[Lcom/stripe/proto/model/config/EmvApplicationId;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->$VALUES:[Lcom/stripe/proto/model/config/EmvApplicationId;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/config/EmvApplicationId$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/config/EmvApplicationId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/config/EmvApplicationId;->Companion:Lcom/stripe/proto/model/config/EmvApplicationId$Companion;

    .line 39
    const-class v1, Lcom/stripe/proto/model/config/EmvApplicationId;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 39
    new-instance v3, Lcom/stripe/proto/model/config/EmvApplicationId$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/config/EmvApplicationId$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/config/EmvApplicationId;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/EmvApplicationId;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/stripe/proto/model/config/EmvApplicationId;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/config/EmvApplicationId;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/config/EmvApplicationId;->Companion:Lcom/stripe/proto/model/config/EmvApplicationId$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/config/EmvApplicationId$Companion;->fromValue(I)Lcom/stripe/proto/model/config/EmvApplicationId;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/config/EmvApplicationId;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/config/EmvApplicationId;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/config/EmvApplicationId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/config/EmvApplicationId;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/config/EmvApplicationId;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/config/EmvApplicationId;->$VALUES:[Lcom/stripe/proto/model/config/EmvApplicationId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/config/EmvApplicationId;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/model/config/EmvApplicationId;->value:I

    return v0
.end method
