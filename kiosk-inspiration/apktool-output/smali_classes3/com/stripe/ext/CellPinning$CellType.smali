.class public final enum Lcom/stripe/ext/CellPinning$CellType;
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
    name = "CellType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/CellPinning$CellType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/ext/CellPinning$CellType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0086\u0081\u0002\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0016B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$CellType;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "CELL_TYPE_INVALID",
        "MERCHANT_CELL",
        "GLOBAL_CELL",
        "CLUSTER_LOCAL_CELL",
        "OFFLINE_LZ_CELL",
        "LEGACY_NW_CELL",
        "ONLINE_LZ_CELL",
        "COMPACT_MERCHANT_CELL",
        "KAFKA_CELL_TYPE",
        "MAINLAND_TOKEN_CELL",
        "STRIPE_CORP_CELL",
        "API_CELL",
        "LIMITED_FAILOVER_API_CELL",
        "CLEARING_CELL",
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

.field private static final synthetic $VALUES:[Lcom/stripe/ext/CellPinning$CellType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/ext/CellPinning$CellType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum API_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum CELL_TYPE_INVALID:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum CLEARING_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum CLUSTER_LOCAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum COMPACT_MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final Companion:Lcom/stripe/ext/CellPinning$CellType$Companion;

.field public static final enum GLOBAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum KAFKA_CELL_TYPE:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum LEGACY_NW_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum LIMITED_FAILOVER_API_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum MAINLAND_TOKEN_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum OFFLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum ONLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

.field public static final enum STRIPE_CORP_CELL:Lcom/stripe/ext/CellPinning$CellType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/ext/CellPinning$CellType;
    .locals 14

    sget-object v0, Lcom/stripe/ext/CellPinning$CellType;->CELL_TYPE_INVALID:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v1, Lcom/stripe/ext/CellPinning$CellType;->MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v2, Lcom/stripe/ext/CellPinning$CellType;->GLOBAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v3, Lcom/stripe/ext/CellPinning$CellType;->CLUSTER_LOCAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v4, Lcom/stripe/ext/CellPinning$CellType;->OFFLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v5, Lcom/stripe/ext/CellPinning$CellType;->LEGACY_NW_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v6, Lcom/stripe/ext/CellPinning$CellType;->ONLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v7, Lcom/stripe/ext/CellPinning$CellType;->COMPACT_MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v8, Lcom/stripe/ext/CellPinning$CellType;->KAFKA_CELL_TYPE:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v9, Lcom/stripe/ext/CellPinning$CellType;->MAINLAND_TOKEN_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v10, Lcom/stripe/ext/CellPinning$CellType;->STRIPE_CORP_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v11, Lcom/stripe/ext/CellPinning$CellType;->API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v12, Lcom/stripe/ext/CellPinning$CellType;->LIMITED_FAILOVER_API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    sget-object v13, Lcom/stripe/ext/CellPinning$CellType;->CLEARING_CELL:Lcom/stripe/ext/CellPinning$CellType;

    filled-new-array/range {v0 .. v13}, [Lcom/stripe/ext/CellPinning$CellType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 299
    new-instance v0, Lcom/stripe/ext/CellPinning$CellType;

    const-string v1, "CELL_TYPE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/ext/CellPinning$CellType;->CELL_TYPE_INVALID:Lcom/stripe/ext/CellPinning$CellType;

    .line 300
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "MERCHANT_CELL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 301
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "GLOBAL_CELL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->GLOBAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 302
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "CLUSTER_LOCAL_CELL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->CLUSTER_LOCAL_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 303
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "OFFLINE_LZ_CELL"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->OFFLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 304
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "LEGACY_NW_CELL"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->LEGACY_NW_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 305
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "ONLINE_LZ_CELL"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->ONLINE_LZ_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 306
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "COMPACT_MERCHANT_CELL"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->COMPACT_MERCHANT_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 307
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "KAFKA_CELL_TYPE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->KAFKA_CELL_TYPE:Lcom/stripe/ext/CellPinning$CellType;

    .line 308
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "MAINLAND_TOKEN_CELL"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->MAINLAND_TOKEN_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 309
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "STRIPE_CORP_CELL"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->STRIPE_CORP_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 310
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "API_CELL"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 311
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "LIMITED_FAILOVER_API_CELL"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->LIMITED_FAILOVER_API_CELL:Lcom/stripe/ext/CellPinning$CellType;

    .line 312
    new-instance v1, Lcom/stripe/ext/CellPinning$CellType;

    const-string v2, "CLEARING_CELL"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/ext/CellPinning$CellType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->CLEARING_CELL:Lcom/stripe/ext/CellPinning$CellType;

    invoke-static {}, Lcom/stripe/ext/CellPinning$CellType;->$values()[Lcom/stripe/ext/CellPinning$CellType;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->$VALUES:[Lcom/stripe/ext/CellPinning$CellType;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/ext/CellPinning$CellType$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/ext/CellPinning$CellType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/ext/CellPinning$CellType;->Companion:Lcom/stripe/ext/CellPinning$CellType$Companion;

    .line 317
    const-class v1, Lcom/stripe/ext/CellPinning$CellType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 319
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 317
    new-instance v3, Lcom/stripe/ext/CellPinning$CellType$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/ext/CellPinning$CellType$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/ext/CellPinning$CellType;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/ext/CellPinning$CellType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Lcom/stripe/ext/CellPinning$CellType;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/ext/CellPinning$CellType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/ext/CellPinning$CellType;->Companion:Lcom/stripe/ext/CellPinning$CellType$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/ext/CellPinning$CellType$Companion;->fromValue(I)Lcom/stripe/ext/CellPinning$CellType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/ext/CellPinning$CellType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/ext/CellPinning$CellType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/ext/CellPinning$CellType;
    .locals 1

    const-class v0, Lcom/stripe/ext/CellPinning$CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/ext/CellPinning$CellType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/ext/CellPinning$CellType;
    .locals 1

    sget-object v0, Lcom/stripe/ext/CellPinning$CellType;->$VALUES:[Lcom/stripe/ext/CellPinning$CellType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/ext/CellPinning$CellType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/stripe/ext/CellPinning$CellType;->value:I

    return v0
.end method
