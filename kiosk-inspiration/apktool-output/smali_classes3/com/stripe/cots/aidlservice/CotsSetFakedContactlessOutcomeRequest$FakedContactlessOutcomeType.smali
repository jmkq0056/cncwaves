.class public final enum Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;
.super Ljava/lang/Enum;
.source "CotsSetFakedContactlessOutcomeRequest.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FakedContactlessOutcomeType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "VISA",
        "MASTERCARD",
        "MASTERCARD_INVALID_CDA",
        "AMEX_DECLINE",
        "NO_CARD",
        "Companion",
        "proto_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AMEX_DECLINE:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;

.field public static final enum MASTERCARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

.field public static final enum MASTERCARD_INVALID_CDA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

.field public static final enum NO_CARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

.field public static final enum VISA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;
    .locals 5

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->VISA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    sget-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->MASTERCARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    sget-object v2, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->MASTERCARD_INVALID_CDA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    sget-object v3, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->AMEX_DECLINE:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    sget-object v4, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->NO_CARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 154
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    const-string v1, "VISA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->VISA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    .line 158
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    const-string v2, "MASTERCARD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->MASTERCARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    .line 162
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    const-string v2, "MASTERCARD_INVALID_CDA"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->MASTERCARD_INVALID_CDA:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    .line 166
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    const-string v2, "AMEX_DECLINE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->AMEX_DECLINE:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    .line 170
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    const-string v2, "NO_CARD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->NO_CARD:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->$values()[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->Companion:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;

    .line 176
    const-class v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 178
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 176
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->Companion:Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType$Companion;->fromValue(I)Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;
    .locals 1

    const-class v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;
    .locals 1

    sget-object v0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->$VALUES:[Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;->value:I

    return v0
.end method
