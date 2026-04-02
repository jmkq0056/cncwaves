.class public final Lio/ktor/client/plugins/DataConversion;
.super Ljava/lang/Object;
.source "DataConversion.kt"

# interfaces
.implements Lio/ktor/client/plugins/HttpClientPlugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/HttpClientPlugin<",
        "Lio/ktor/util/converters/DataConversion$Configuration;",
        "Lio/ktor/util/converters/DataConversion;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016J!\u0010\u000e\u001a\u00020\u00032\u0017\u0010\u000f\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0002\u0008\u0011H\u0016R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/client/plugins/DataConversion;",
        "Lio/ktor/client/plugins/HttpClientPlugin;",
        "Lio/ktor/util/converters/DataConversion$Configuration;",
        "Lio/ktor/util/converters/DataConversion;",
        "()V",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "install",
        "",
        "plugin",
        "scope",
        "Lio/ktor/client/HttpClient;",
        "prepare",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field public static final INSTANCE:Lio/ktor/client/plugins/DataConversion;

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/util/converters/DataConversion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/plugins/DataConversion;

    invoke-direct {v0}, Lio/ktor/client/plugins/DataConversion;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/DataConversion;->INSTANCE:Lio/ktor/client/plugins/DataConversion;

    .line 15
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "DataConversion"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/plugins/DataConversion;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/util/converters/DataConversion;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lio/ktor/client/plugins/DataConversion;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public install(Lio/ktor/util/converters/DataConversion;Lio/ktor/client/HttpClient;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scope"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic install(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 14
    check-cast p1, Lio/ktor/util/converters/DataConversion;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DataConversion;->install(Lio/ktor/util/converters/DataConversion;Lio/ktor/client/HttpClient;)V

    return-void
.end method

.method public prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/util/converters/DataConversion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/util/converters/DataConversion$Configuration;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/util/converters/DataConversion;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lio/ktor/util/converters/DataConversion$Configuration;

    invoke-direct {v0}, Lio/ktor/util/converters/DataConversion$Configuration;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance p1, Lio/ktor/util/converters/DataConversion;

    invoke-direct {p1, v0}, Lio/ktor/util/converters/DataConversion;-><init>(Lio/ktor/util/converters/DataConversion$Configuration;)V

    return-object p1
.end method

.method public bridge synthetic prepare(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/DataConversion;->prepare(Lkotlin/jvm/functions/Function1;)Lio/ktor/util/converters/DataConversion;

    move-result-object p1

    return-object p1
.end method
