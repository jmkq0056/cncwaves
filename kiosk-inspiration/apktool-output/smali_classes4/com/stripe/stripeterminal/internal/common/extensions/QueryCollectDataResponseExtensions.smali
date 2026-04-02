.class public final Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;
.super Ljava/lang/Object;
.source "QueryCollectDataResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "QueryCollectDataResponseResult",
        "public_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;
    .locals 4

    .line 9
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    if-eqz v0, :cond_0

    .line 10
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Success;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Success;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;

    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Error;

    .line 14
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 15
    :goto_0
    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    if-nez v3, :cond_2

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;->error:Lcom/stripe/proto/model/sdk/Error;

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 13
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/QueryCollectDataResponseExtensions$QueryCollectDataResponseResult;

    return-object v0
.end method
