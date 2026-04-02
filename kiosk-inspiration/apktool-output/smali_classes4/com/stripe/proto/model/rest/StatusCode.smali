.class public final enum Lcom/stripe/proto/model/rest/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/StatusCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/rest/StatusCode;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/StatusCode;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNKNOWN_STATUS",
        "OK",
        "HTTP_ERROR",
        "HTTP_ERROR_UNKNOWN_STATE",
        "BAD_REQUEST",
        "UNAUTHORIZED",
        "REQUEST_FAILED",
        "FORBIDDEN",
        "NOT_FOUND",
        "CONFLICT",
        "TOO_MANY_REQUESTS",
        "SERVER_ERROR",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/rest/StatusCode;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum CONFLICT:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final Companion:Lcom/stripe/proto/model/rest/StatusCode$Companion;

.field public static final enum FORBIDDEN:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum NOT_FOUND:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum OK:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum REQUEST_FAILED:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum SERVER_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum TOO_MANY_REQUESTS:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum UNAUTHORIZED:Lcom/stripe/proto/model/rest/StatusCode;

.field public static final enum UNKNOWN_STATUS:Lcom/stripe/proto/model/rest/StatusCode;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/rest/StatusCode;
    .locals 12

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->UNKNOWN_STATUS:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->OK:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v2, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v3, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v4, Lcom/stripe/proto/model/rest/StatusCode;->BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v5, Lcom/stripe/proto/model/rest/StatusCode;->UNAUTHORIZED:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v6, Lcom/stripe/proto/model/rest/StatusCode;->REQUEST_FAILED:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v7, Lcom/stripe/proto/model/rest/StatusCode;->FORBIDDEN:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v8, Lcom/stripe/proto/model/rest/StatusCode;->NOT_FOUND:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v9, Lcom/stripe/proto/model/rest/StatusCode;->CONFLICT:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v10, Lcom/stripe/proto/model/rest/StatusCode;->TOO_MANY_REQUESTS:Lcom/stripe/proto/model/rest/StatusCode;

    sget-object v11, Lcom/stripe/proto/model/rest/StatusCode;->SERVER_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    filled-new-array/range {v0 .. v11}, [Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/rest/StatusCode;->UNKNOWN_STATUS:Lcom/stripe/proto/model/rest/StatusCode;

    .line 29
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->OK:Lcom/stripe/proto/model/rest/StatusCode;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "HTTP_ERROR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    .line 37
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "HTTP_ERROR_UNKNOWN_STATE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    .line 41
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "BAD_REQUEST"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

    .line 45
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "UNAUTHORIZED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->UNAUTHORIZED:Lcom/stripe/proto/model/rest/StatusCode;

    .line 49
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "REQUEST_FAILED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->REQUEST_FAILED:Lcom/stripe/proto/model/rest/StatusCode;

    .line 53
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "FORBIDDEN"

    const/4 v3, 0x7

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->FORBIDDEN:Lcom/stripe/proto/model/rest/StatusCode;

    .line 57
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "NOT_FOUND"

    const/16 v5, 0x8

    invoke-direct {v1, v2, v5, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->NOT_FOUND:Lcom/stripe/proto/model/rest/StatusCode;

    .line 61
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "CONFLICT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v5}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->CONFLICT:Lcom/stripe/proto/model/rest/StatusCode;

    .line 65
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "TOO_MANY_REQUESTS"

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v3}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->TOO_MANY_REQUESTS:Lcom/stripe/proto/model/rest/StatusCode;

    .line 69
    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode;

    const-string v2, "SERVER_ERROR"

    invoke-direct {v1, v2, v4, v5}, Lcom/stripe/proto/model/rest/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->SERVER_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    invoke-static {}, Lcom/stripe/proto/model/rest/StatusCode;->$values()[Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->$VALUES:[Lcom/stripe/proto/model/rest/StatusCode;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/rest/StatusCode$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/rest/StatusCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/rest/StatusCode;->Companion:Lcom/stripe/proto/model/rest/StatusCode$Companion;

    .line 74
    const-class v1, Lcom/stripe/proto/model/rest/StatusCode;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 74
    new-instance v3, Lcom/stripe/proto/model/rest/StatusCode$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/rest/StatusCode$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/rest/StatusCode;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/StatusCode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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
    iput p3, p0, Lcom/stripe/proto/model/rest/StatusCode;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->Companion:Lcom/stripe/proto/model/rest/StatusCode$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/rest/StatusCode$Companion;->fromValue(I)Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/rest/StatusCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/rest/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/rest/StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/rest/StatusCode;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->$VALUES:[Lcom/stripe/proto/model/rest/StatusCode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/rest/StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/stripe/proto/model/rest/StatusCode;->value:I

    return v0
.end method
