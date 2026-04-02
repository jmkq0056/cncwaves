.class public final Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;
.super Ljava/lang/Object;
.source "AuthenticatedRestClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;",
        "",
        "()V",
        "AUTHENTICATION_HEADER_KEY",
        "",
        "serverDrivenMainlandApi",
        "Lcom/stripe/proto/api/rest/MainlandApi;",
        "getServerDrivenMainlandApi$transaction",
        "()Lcom/stripe/proto/api/rest/MainlandApi;",
        "setServerDrivenMainlandApi$transaction",
        "(Lcom/stripe/proto/api/rest/MainlandApi;)V",
        "transaction"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getServerDrivenMainlandApi$transaction()Lcom/stripe/proto/api/rest/MainlandApi;
    .locals 1

    .line 79
    invoke-static {}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->access$getServerDrivenMainlandApi$cp()Lcom/stripe/proto/api/rest/MainlandApi;

    move-result-object v0

    return-object v0
.end method

.method public final setServerDrivenMainlandApi$transaction(Lcom/stripe/proto/api/rest/MainlandApi;)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->access$setServerDrivenMainlandApi$cp(Lcom/stripe/proto/api/rest/MainlandApi;)V

    return-void
.end method
