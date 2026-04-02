.class public final enum Lcom/stripe/ext/CellPinning$RoutingPreference;
.super Ljava/lang/Enum;
.source "CellPinning.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoutingPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/CellPinning$RoutingPreference;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$RoutingPreference;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "PREFERENCE_INVALID",
        "PRIMARY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/CellPinning$RoutingPreference;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/CellPinning$RoutingPreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;

.field public static final enum PREFERENCE_INVALID:Lcom/stripe/ext/CellPinning$RoutingPreference;

.field public static final enum PRIMARY:Lcom/stripe/ext/CellPinning$RoutingPreference;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/CellPinning$RoutingPreference;
    .locals 2

    sget-object v0, Lcom/stripe/ext/CellPinning$RoutingPreference;->PREFERENCE_INVALID:Lcom/stripe/ext/CellPinning$RoutingPreference;

    sget-object v1, Lcom/stripe/ext/CellPinning$RoutingPreference;->PRIMARY:Lcom/stripe/ext/CellPinning$RoutingPreference;

    filled-new-array {v0, v1}, [Lcom/stripe/ext/CellPinning$RoutingPreference;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 225
    new-instance v0, Lcom/stripe/ext/CellPinning$RoutingPreference;

    const-string v1, "PREFERENCE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/CellPinning$RoutingPreference;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/CellPinning$RoutingPreference;->PREFERENCE_INVALID:Lcom/stripe/ext/CellPinning$RoutingPreference;

    .line 226
    new-instance v1, Lcom/stripe/ext/CellPinning$RoutingPreference;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "PRIMARY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/ext/CellPinning$RoutingPreference;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$RoutingPreference;->PRIMARY:Lcom/stripe/ext/CellPinning$RoutingPreference;

    invoke-static {}, Lcom/stripe/ext/CellPinning$RoutingPreference;->$values()[Lcom/stripe/ext/CellPinning$RoutingPreference;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/CellPinning$RoutingPreference;->$VALUES:[Lcom/stripe/ext/CellPinning$RoutingPreference;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/CellPinning$RoutingPreference;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/ext/CellPinning$RoutingPreference;->Companion:Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;

    .line 231
    const-class v1, Lcom/stripe/ext/CellPinning$RoutingPreference;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 231
    new-instance v3, Lcom/stripe/ext/CellPinning$RoutingPreference$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/ext/CellPinning$RoutingPreference$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/ext/CellPinning$RoutingPreference;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/ext/CellPinning$RoutingPreference;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput p3, p0, Lcom/stripe/ext/CellPinning$RoutingPreference;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/CellPinning$RoutingPreference;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/CellPinning$RoutingPreference;->Companion:Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;->fromValue(I)Lcom/stripe/ext/CellPinning$RoutingPreference;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/CellPinning$RoutingPreference;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/CellPinning$RoutingPreference;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/CellPinning$RoutingPreference;
    .locals 1

    const-class v0, Lcom/stripe/ext/CellPinning$RoutingPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/CellPinning$RoutingPreference;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/CellPinning$RoutingPreference;
    .locals 1

    sget-object v0, Lcom/stripe/ext/CellPinning$RoutingPreference;->$VALUES:[Lcom/stripe/ext/CellPinning$RoutingPreference;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/CellPinning$RoutingPreference;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/stripe/ext/CellPinning$RoutingPreference;->value:I

    return v0
.end method
