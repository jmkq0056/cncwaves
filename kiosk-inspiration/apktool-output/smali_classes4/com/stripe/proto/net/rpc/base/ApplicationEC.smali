.class public final enum Lcom/stripe/proto/net/rpc/base/ApplicationEC;
.super Ljava/lang/Enum;
.source "ApplicationEC.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0086\u0081\u0002\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0017B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "APPLICATION_EC_INVALID",
        "OK",
        "LOCK_RESOURCES_EXCEPTION",
        "INVALID_LOAD_ID",
        "ILLEGAL_STATE",
        "AUTHENTICATION_FAILURE",
        "INVALID_SESSION_TOKEN",
        "UNAUTHORIZED",
        "INVALID_REQUEST",
        "SERVER_ERROR",
        "TOO_MANY_REQUESTS",
        "UNIMPLEMENTED",
        "INVALID_CONFIG",
        "ALREADY_EXISTS",
        "READER_IN_USE",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ALREADY_EXISTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum AUTHENTICATION_FAILURE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final Companion:Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;

.field public static final enum ILLEGAL_STATE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum INVALID_CONFIG:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum INVALID_LOAD_ID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum INVALID_REQUEST:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum INVALID_SESSION_TOKEN:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum LOCK_RESOURCES_EXCEPTION:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum READER_IN_USE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .annotation runtime Lkotlin/Deprecated;
        message = "READER_IN_USE is deprecated"
    .end annotation
.end field

.field public static final enum SERVER_ERROR:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum TOO_MANY_REQUESTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum UNAUTHORIZED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public static final enum UNIMPLEMENTED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 15

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v2, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->LOCK_RESOURCES_EXCEPTION:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v3, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_LOAD_ID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v4, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ILLEGAL_STATE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v5, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->AUTHENTICATION_FAILURE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v6, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_SESSION_TOKEN:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v7, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNAUTHORIZED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v8, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_REQUEST:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v9, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->SERVER_ERROR:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v10, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->TOO_MANY_REQUESTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v11, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNIMPLEMENTED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v12, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_CONFIG:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v13, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ALREADY_EXISTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v14, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->READER_IN_USE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    filled-new-array/range {v0 .. v14}, [Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v1, "APPLICATION_EC_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 38
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 42
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "LOCK_RESOURCES_EXCEPTION"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->LOCK_RESOURCES_EXCEPTION:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 46
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "INVALID_LOAD_ID"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_LOAD_ID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 50
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "ILLEGAL_STATE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ILLEGAL_STATE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 54
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "AUTHENTICATION_FAILURE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->AUTHENTICATION_FAILURE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 58
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "INVALID_SESSION_TOKEN"

    const/4 v3, 0x6

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_SESSION_TOKEN:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 62
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "UNAUTHORIZED"

    const/4 v5, 0x7

    invoke-direct {v1, v2, v5, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNAUTHORIZED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 66
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "INVALID_REQUEST"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v5}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_REQUEST:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 70
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "SERVER_ERROR"

    const/16 v3, 0x9

    const/16 v5, 0xa

    invoke-direct {v1, v2, v3, v5}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->SERVER_ERROR:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 74
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "TOO_MANY_REQUESTS"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v5, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->TOO_MANY_REQUESTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 78
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const/16 v2, 0xb

    const/16 v3, 0x15

    const-string v5, "UNIMPLEMENTED"

    invoke-direct {v1, v5, v2, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->UNIMPLEMENTED:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 82
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "INVALID_CONFIG"

    const/16 v3, 0xc

    const/16 v5, 0xe

    invoke-direct {v1, v2, v3, v5}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->INVALID_CONFIG:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 86
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "ALREADY_EXISTS"

    const/16 v3, 0x142

    invoke-direct {v1, v2, v4, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ALREADY_EXISTS:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 91
    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const-string v2, "READER_IN_USE"

    const/16 v3, 0x143

    invoke-direct {v1, v2, v5, v3}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->READER_IN_USE:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-static {}, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->$values()[Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->$VALUES:[Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->Companion:Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;

    .line 97
    const-class v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 97
    new-instance v3, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/net/rpc/base/ApplicationEC;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->Companion:Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;->fromValue(I)Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 1

    const-class v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/net/rpc/base/ApplicationEC;
    .locals 1

    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->$VALUES:[Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->value:I

    return v0
.end method
