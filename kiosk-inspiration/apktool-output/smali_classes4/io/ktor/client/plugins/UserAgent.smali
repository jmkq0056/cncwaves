.class public final Lio/ktor/client/plugins/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/UserAgent$Config;,
        Lio/ktor/client/plugins/UserAgent$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0002\u0007\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ktor/client/plugins/UserAgent;",
        "",
        "agent",
        "",
        "(Ljava/lang/String;)V",
        "getAgent",
        "()Ljava/lang/String;",
        "Config",
        "Plugin",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/UserAgent$Plugin;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/client/plugins/UserAgent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final agent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/UserAgent$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/UserAgent$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/UserAgent;->Plugin:Lio/ktor/client/plugins/UserAgent$Plugin;

    .line 26
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "UserAgent"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/UserAgent;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/plugins/UserAgent;->agent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/ktor/client/plugins/UserAgent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 20
    sget-object v0, Lio/ktor/client/plugins/UserAgent;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method


# virtual methods
.method public final getAgent()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/client/plugins/UserAgent;->agent:Ljava/lang/String;

    return-object v0
.end method
