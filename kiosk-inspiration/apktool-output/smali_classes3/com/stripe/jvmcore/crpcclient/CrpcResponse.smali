.class public abstract Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
.super Ljava/lang/Object;
.source "CrpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;,
        Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Companion;,
        Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;,
        Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u000e*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u00020\u0003:\u0004\r\u000e\u000f\u0010B\u0011\u0008\u0004\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0001\u0003\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "",
        "durationMillis",
        "",
        "(Ljava/lang/Long;)V",
        "getDurationMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "toLogString",
        "",
        "toString",
        "ApplicationError",
        "Companion",
        "RpcError",
        "Success",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;",
        "crpcclient"
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
.field public static final Companion:Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Companion;

.field public static final ERR_MSG_USER_CANCELLED:Ljava/lang/String; = "Transaction is cancelled by the user."

.field private static final moshi:Lcom/squareup/moshi/Moshi;


# instance fields
.field private final durationMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->Companion:Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Companion;

    .line 109
    new-instance v0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 110
    new-instance v2, Lcom/squareup/wire/WireJsonAdapterFactory;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4, v1}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {v0, v2}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->moshi:Lcom/squareup/moshi/Moshi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->durationMillis:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$getMoshi$cp()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 18
    sget-object v0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->moshi:Lcom/squareup/moshi/Moshi;

    return-object v0
.end method


# virtual methods
.method public final getDurationMillis()Ljava/lang/Long;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public abstract toLogString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
