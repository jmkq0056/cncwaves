.class public final enum Lcom/stripe/proto/net/rpc/base/RpcEC;
.super Ljava/lang/Enum;
.source "RpcEC.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "RPC_EC_INVALID",
        "RPC_OK",
        "RPC_ERROR",
        "NETWORK_UNAVAILABLE",
        "SERVER_UNRESOLVABLE",
        "SERVER_UNREACHABLE",
        "BAD_REQUEST",
        "BAD_RESPONSE",
        "TIMEOUT",
        "RETRY",
        "SERVER_BUSY",
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

.field private static final synthetic $VALUES:[Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/net/rpc/base/RpcEC;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BAD_REQUEST:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final Companion:Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;

.field public static final enum NETWORK_UNAVAILABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum RETRY:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum RPC_ERROR:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum RPC_OK:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum SERVER_BUSY:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum SERVER_UNRESOLVABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

.field public static final enum TIMEOUT:Lcom/stripe/proto/net/rpc/base/RpcEC;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/net/rpc/base/RpcEC;
    .locals 11

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_OK:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v2, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_ERROR:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v3, Lcom/stripe/proto/net/rpc/base/RpcEC;->NETWORK_UNAVAILABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v4, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNRESOLVABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v5, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v6, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_REQUEST:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v7, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v8, Lcom/stripe/proto/net/rpc/base/RpcEC;->TIMEOUT:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v9, Lcom/stripe/proto/net/rpc/base/RpcEC;->RETRY:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v10, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_BUSY:Lcom/stripe/proto/net/rpc/base/RpcEC;

    filled-new-array/range {v0 .. v10}, [Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v1, "RPC_EC_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 34
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "RPC_OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_OK:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 39
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "RPC_ERROR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_ERROR:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 43
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "NETWORK_UNAVAILABLE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->NETWORK_UNAVAILABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 47
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "SERVER_UNRESOLVABLE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNRESOLVABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 51
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "SERVER_UNREACHABLE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 55
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "BAD_REQUEST"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_REQUEST:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 56
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "BAD_RESPONSE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 60
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "TIMEOUT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->TIMEOUT:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 64
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "RETRY"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RETRY:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 68
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    const-string v2, "SERVER_BUSY"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/proto/net/rpc/base/RpcEC;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_BUSY:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-static {}, Lcom/stripe/proto/net/rpc/base/RpcEC;->$values()[Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->$VALUES:[Lcom/stripe/proto/net/rpc/base/RpcEC;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->Companion:Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;

    .line 73
    const-class v1, Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 73
    new-instance v3, Lcom/stripe/proto/net/rpc/base/RpcEC$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/net/rpc/base/RpcEC$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/net/rpc/base/RpcEC;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/net/rpc/base/RpcEC;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/stripe/proto/net/rpc/base/RpcEC;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/net/rpc/base/RpcEC;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->Companion:Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;->fromValue(I)Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/net/rpc/base/RpcEC;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcEC;
    .locals 1

    const-class v0, Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/net/rpc/base/RpcEC;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/net/rpc/base/RpcEC;
    .locals 1

    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->$VALUES:[Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/net/rpc/base/RpcEC;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/stripe/proto/net/rpc/base/RpcEC;->value:I

    return v0
.end method
