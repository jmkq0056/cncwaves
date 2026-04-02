.class public final enum Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
.super Ljava/lang/Enum;
.source "ResourceIdPb.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ResourceIdPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentEncoding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "CONTENT_ENCODING_INVALID",
        "PARQUET",
        "PROTO3",
        "JSON",
        "JSON_PROTO3",
        "PARTNER",
        "BSON",
        "PROTO_ASCII",
        "YAML",
        "PROTO3_COMPRESSED",
        "FOLDED_STACKS_COMPRESSED",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final Companion:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;

.field public static final enum FOLDED_STACKS_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum JSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum JSON_PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum PARQUET:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum PARTNER:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum PROTO3_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum PROTO_ASCII:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

.field public static final enum YAML:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
    .locals 11

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PARQUET:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v2, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v3, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->JSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v4, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->JSON_PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v5, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PARTNER:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v6, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->BSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v7, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO_ASCII:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v8, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->YAML:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v9, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO3_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    sget-object v10, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->FOLDED_STACKS_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    filled-new-array/range {v0 .. v10}, [Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1871
    new-instance v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v1, "CONTENT_ENCODING_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1872
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "PARQUET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PARQUET:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1873
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "PROTO3"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1874
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "JSON"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->JSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1878
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "JSON_PROTO3"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->JSON_PROTO3:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1882
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "PARTNER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PARTNER:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1886
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "BSON"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->BSON:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1890
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "PROTO_ASCII"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO_ASCII:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1891
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "YAML"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->YAML:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1895
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "PROTO3_COMPRESSED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->PROTO3_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 1899
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    const-string v2, "FOLDED_STACKS_COMPRESSED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->FOLDED_STACKS_COMPRESSED:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-static {}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->$values()[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->$VALUES:[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->Companion:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;

    .line 1904
    const-class v1, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1906
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1904
    new-instance v3, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1868
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1869
    iput p3, p0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->Companion:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding$Companion;->fromValue(I)Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->$VALUES:[Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1869
    iget v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->value:I

    return v0
.end method
