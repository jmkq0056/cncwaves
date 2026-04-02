.class final synthetic Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AuthenticatedRestClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->activateTerminal(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/stripe/proto/api/rest/MainlandApi;",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "Lcom/stripe/jvmcore/restclient/RestResponse<",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;->INSTANCE:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/stripe/proto/api/rest/MainlandApi;

    const-string v4, "activateConnectionToken(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-string v3, "activateConnectionToken"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/MainlandApi;",
            "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, p2, p3, p4}, Lcom/stripe/proto/api/rest/MainlandApi;->activateConnectionToken(Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Lcom/stripe/proto/api/rest/MainlandApi;

    check-cast p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    check-cast p3, Ljava/util/Map;

    check-cast p4, Lcom/stripe/jvmcore/restclient/RestConfig;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient$activateTerminal$1;->invoke(Lcom/stripe/proto/api/rest/MainlandApi;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method
