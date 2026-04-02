.class public final enum Lcom/stripe/proto/model/common/ReleaseTag;
.super Ljava/lang/Enum;
.source "ReleaseTag.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/ReleaseTag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/ReleaseTag;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ReleaseTag;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "RELEASE_TAG_INVALID",
        "GENERAL",
        "BETA",
        "ALPHA",
        "DEV_INTERNAL",
        "INCIDENT_ROLLBACK",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/ReleaseTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ALPHA:Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final enum BETA:Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final Companion:Lcom/stripe/proto/model/common/ReleaseTag$Companion;

.field public static final enum DEV_INTERNAL:Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final enum GENERAL:Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final enum INCIDENT_ROLLBACK:Lcom/stripe/proto/model/common/ReleaseTag;

.field public static final enum RELEASE_TAG_INVALID:Lcom/stripe/proto/model/common/ReleaseTag;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/ReleaseTag;
    .locals 6

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseTag;->RELEASE_TAG_INVALID:Lcom/stripe/proto/model/common/ReleaseTag;

    sget-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->GENERAL:Lcom/stripe/proto/model/common/ReleaseTag;

    sget-object v2, Lcom/stripe/proto/model/common/ReleaseTag;->BETA:Lcom/stripe/proto/model/common/ReleaseTag;

    sget-object v3, Lcom/stripe/proto/model/common/ReleaseTag;->ALPHA:Lcom/stripe/proto/model/common/ReleaseTag;

    sget-object v4, Lcom/stripe/proto/model/common/ReleaseTag;->DEV_INTERNAL:Lcom/stripe/proto/model/common/ReleaseTag;

    sget-object v5, Lcom/stripe/proto/model/common/ReleaseTag;->INCIDENT_ROLLBACK:Lcom/stripe/proto/model/common/ReleaseTag;

    filled-new-array/range {v0 .. v5}, [Lcom/stripe/proto/model/common/ReleaseTag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v1, "RELEASE_TAG_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/ReleaseTag;->RELEASE_TAG_INVALID:Lcom/stripe/proto/model/common/ReleaseTag;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v2, "GENERAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->GENERAL:Lcom/stripe/proto/model/common/ReleaseTag;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v2, "BETA"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->BETA:Lcom/stripe/proto/model/common/ReleaseTag;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v2, "ALPHA"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->ALPHA:Lcom/stripe/proto/model/common/ReleaseTag;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v2, "DEV_INTERNAL"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->DEV_INTERNAL:Lcom/stripe/proto/model/common/ReleaseTag;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag;

    const-string v2, "INCIDENT_ROLLBACK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/common/ReleaseTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->INCIDENT_ROLLBACK:Lcom/stripe/proto/model/common/ReleaseTag;

    invoke-static {}, Lcom/stripe/proto/model/common/ReleaseTag;->$values()[Lcom/stripe/proto/model/common/ReleaseTag;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->$VALUES:[Lcom/stripe/proto/model/common/ReleaseTag;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/ReleaseTag$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/ReleaseTag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/ReleaseTag;->Companion:Lcom/stripe/proto/model/common/ReleaseTag$Companion;

    .line 32
    const-class v1, Lcom/stripe/proto/model/common/ReleaseTag;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 32
    new-instance v3, Lcom/stripe/proto/model/common/ReleaseTag$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/ReleaseTag$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/ReleaseTag;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/ReleaseTag;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/stripe/proto/model/common/ReleaseTag;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/ReleaseTag;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseTag;->Companion:Lcom/stripe/proto/model/common/ReleaseTag$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/ReleaseTag$Companion;->fromValue(I)Lcom/stripe/proto/model/common/ReleaseTag;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/ReleaseTag;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseTag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/ReleaseTag;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/ReleaseTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/ReleaseTag;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/ReleaseTag;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/ReleaseTag;->$VALUES:[Lcom/stripe/proto/model/common/ReleaseTag;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/ReleaseTag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/stripe/proto/model/common/ReleaseTag;->value:I

    return v0
.end method
