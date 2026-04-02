.class public final enum Lcom/stripe/proto/model/sdk/CardEntryMethod;
.super Ljava/lang/Enum;
.source "CardEntryMethod.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/sdk/CardEntryMethod;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/CardEntryMethod;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "INVALID_ENTRY_METHOD",
        "CHIP_READ",
        "CONTACTLESS",
        "FSWIPE",
        "KEYED",
        "SWIPED",
        "BARCODE_READ",
        "Companion",
        "internal_release"
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/sdk/CardEntryMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BARCODE_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final enum CHIP_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final enum CONTACTLESS:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final Companion:Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;

.field public static final enum FSWIPE:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final enum INVALID_ENTRY_METHOD:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final enum KEYED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

.field public static final enum SWIPED:Lcom/stripe/proto/model/sdk/CardEntryMethod;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/sdk/CardEntryMethod;
    .locals 7

    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->INVALID_ENTRY_METHOD:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CHIP_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v2, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CONTACTLESS:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v3, Lcom/stripe/proto/model/sdk/CardEntryMethod;->FSWIPE:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v4, Lcom/stripe/proto/model/sdk/CardEntryMethod;->KEYED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v5, Lcom/stripe/proto/model/sdk/CardEntryMethod;->SWIPED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    sget-object v6, Lcom/stripe/proto/model/sdk/CardEntryMethod;->BARCODE_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    filled-new-array/range {v0 .. v6}, [Lcom/stripe/proto/model/sdk/CardEntryMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v1, "INVALID_ENTRY_METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->INVALID_ENTRY_METHOD:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "CHIP_READ"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CHIP_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "CONTACTLESS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->CONTACTLESS:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 31
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "FSWIPE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->FSWIPE:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 35
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "KEYED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->KEYED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 39
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "SWIPED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->SWIPED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    .line 43
    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    const-string v2, "BARCODE_READ"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/sdk/CardEntryMethod;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->BARCODE_READ:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    invoke-static {}, Lcom/stripe/proto/model/sdk/CardEntryMethod;->$values()[Lcom/stripe/proto/model/sdk/CardEntryMethod;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->$VALUES:[Lcom/stripe/proto/model/sdk/CardEntryMethod;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->Companion:Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;

    .line 48
    const-class v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 48
    new-instance v3, Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/sdk/CardEntryMethod;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/sdk/CardEntryMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/sdk/CardEntryMethod;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->Companion:Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/sdk/CardEntryMethod$Companion;->fromValue(I)Lcom/stripe/proto/model/sdk/CardEntryMethod;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/sdk/CardEntryMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/CardEntryMethod;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/sdk/CardEntryMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/sdk/CardEntryMethod;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->$VALUES:[Lcom/stripe/proto/model/sdk/CardEntryMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/sdk/CardEntryMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/proto/model/sdk/CardEntryMethod;->value:I

    return v0
.end method
