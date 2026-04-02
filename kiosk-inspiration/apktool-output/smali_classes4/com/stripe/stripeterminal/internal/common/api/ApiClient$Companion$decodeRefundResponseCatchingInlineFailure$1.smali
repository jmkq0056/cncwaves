.class final Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeRefundResponseCatchingInlineFailure(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/Refund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/proto/model/rest/Refund;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "it",
        "Lcom/stripe/proto/model/rest/Refund;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/proto/model/rest/Refund;)Lcom/stripe/proto/model/rest/ErrorResponse;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Refund;->status:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    new-instance v2, Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 377
    iget-object v1, v0, Lcom/stripe/proto/model/rest/Refund;->failure_reason:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 380
    :cond_0
    iget-object v0, v0, Lcom/stripe/proto/model/rest/Refund;->failure_reason:Ljava/lang/String;

    :goto_0
    move-object v8, v0

    goto :goto_2

    .line 378
    :cond_1
    :goto_1
    const-string v0, "Refund failed"

    goto :goto_0

    :goto_2
    const/16 v14, 0x7df

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 376
    invoke-direct/range {v2 .. v15}, Lcom/stripe/proto/model/rest/ErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorSetupIntent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 374
    check-cast p1, Lcom/stripe/proto/model/rest/Refund;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeRefundResponseCatchingInlineFailure$1;->invoke(Lcom/stripe/proto/model/rest/Refund;)Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object p1

    return-object p1
.end method
