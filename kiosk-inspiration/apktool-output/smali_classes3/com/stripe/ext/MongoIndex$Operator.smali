.class public final enum Lcom/stripe/ext/MongoIndex$Operator;
.super Ljava/lang/Enum;
.source "MongoIndex.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/MongoIndex$Operator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/MongoIndex$Operator;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/ext/MongoIndex$Operator;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "EQ",
        "NE",
        "GT",
        "GTE",
        "LT",
        "LTE",
        "IN",
        "NIN",
        "REGEX",
        "Companion",
        "common_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/MongoIndex$Operator;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/MongoIndex$Operator;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/ext/MongoIndex$Operator$Companion;

.field public static final enum EQ:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum GT:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum GTE:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum IN:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum LT:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum LTE:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum NE:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum NIN:Lcom/stripe/ext/MongoIndex$Operator;

.field public static final enum REGEX:Lcom/stripe/ext/MongoIndex$Operator;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/MongoIndex$Operator;
    .locals 9

    sget-object v0, Lcom/stripe/ext/MongoIndex$Operator;->EQ:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v1, Lcom/stripe/ext/MongoIndex$Operator;->NE:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v2, Lcom/stripe/ext/MongoIndex$Operator;->GT:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v3, Lcom/stripe/ext/MongoIndex$Operator;->GTE:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v4, Lcom/stripe/ext/MongoIndex$Operator;->LT:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v5, Lcom/stripe/ext/MongoIndex$Operator;->LTE:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v6, Lcom/stripe/ext/MongoIndex$Operator;->IN:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v7, Lcom/stripe/ext/MongoIndex$Operator;->NIN:Lcom/stripe/ext/MongoIndex$Operator;

    sget-object v8, Lcom/stripe/ext/MongoIndex$Operator;->REGEX:Lcom/stripe/ext/MongoIndex$Operator;

    filled-new-array/range {v0 .. v8}, [Lcom/stripe/ext/MongoIndex$Operator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 282
    new-instance v0, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/MongoIndex$Operator;->EQ:Lcom/stripe/ext/MongoIndex$Operator;

    .line 283
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "NE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->NE:Lcom/stripe/ext/MongoIndex$Operator;

    .line 284
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "GT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->GT:Lcom/stripe/ext/MongoIndex$Operator;

    .line 285
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "GTE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->GTE:Lcom/stripe/ext/MongoIndex$Operator;

    .line 286
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "LT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->LT:Lcom/stripe/ext/MongoIndex$Operator;

    .line 287
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "LTE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->LTE:Lcom/stripe/ext/MongoIndex$Operator;

    .line 288
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "IN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->IN:Lcom/stripe/ext/MongoIndex$Operator;

    .line 289
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "NIN"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->NIN:Lcom/stripe/ext/MongoIndex$Operator;

    .line 290
    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator;

    const-string v2, "REGEX"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/MongoIndex$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->REGEX:Lcom/stripe/ext/MongoIndex$Operator;

    invoke-static {}, Lcom/stripe/ext/MongoIndex$Operator;->$values()[Lcom/stripe/ext/MongoIndex$Operator;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->$VALUES:[Lcom/stripe/ext/MongoIndex$Operator;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/ext/MongoIndex$Operator$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/ext/MongoIndex$Operator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/ext/MongoIndex$Operator;->Companion:Lcom/stripe/ext/MongoIndex$Operator$Companion;

    .line 295
    const-class v1, Lcom/stripe/ext/MongoIndex$Operator;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 297
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 295
    new-instance v3, Lcom/stripe/ext/MongoIndex$Operator$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/ext/MongoIndex$Operator$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/ext/MongoIndex$Operator;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/ext/MongoIndex$Operator;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput p3, p0, Lcom/stripe/ext/MongoIndex$Operator;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/MongoIndex$Operator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/MongoIndex$Operator;->Companion:Lcom/stripe/ext/MongoIndex$Operator$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/MongoIndex$Operator$Companion;->fromValue(I)Lcom/stripe/ext/MongoIndex$Operator;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/MongoIndex$Operator;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/MongoIndex$Operator;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/MongoIndex$Operator;
    .locals 1

    const-class v0, Lcom/stripe/ext/MongoIndex$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/MongoIndex$Operator;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/MongoIndex$Operator;
    .locals 1

    sget-object v0, Lcom/stripe/ext/MongoIndex$Operator;->$VALUES:[Lcom/stripe/ext/MongoIndex$Operator;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/MongoIndex$Operator;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/stripe/ext/MongoIndex$Operator;->value:I

    return v0
.end method
