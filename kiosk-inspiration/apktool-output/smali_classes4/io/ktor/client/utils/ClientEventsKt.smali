.class public final Lio/ktor/client/utils/ClientEventsKt;
.super Ljava/lang/Object;
.source "ClientEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0004\"\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0004\"\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0004\"\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "HttpRequestCreated",
        "Lio/ktor/events/EventDefinition;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "getHttpRequestCreated",
        "()Lio/ktor/events/EventDefinition;",
        "HttpRequestIsReadyForSending",
        "getHttpRequestIsReadyForSending",
        "HttpResponseCancelled",
        "Lio/ktor/client/statement/HttpResponse;",
        "getHttpResponseCancelled",
        "HttpResponseReceiveFailed",
        "Lio/ktor/client/utils/HttpResponseReceiveFail;",
        "getHttpResponseReceiveFailed",
        "HttpResponseReceived",
        "getHttpResponseReceived",
        "ktor-client-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HttpRequestCreated:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpResponseCancelled:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/utils/HttpResponseReceiveFail;",
            ">;"
        }
    .end annotation
.end field

.field private static final HttpResponseReceived:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestCreated:Lio/ktor/events/EventDefinition;

    .line 20
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;

    .line 25
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceived:Lio/ktor/events/EventDefinition;

    .line 35
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;

    .line 40
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseCancelled:Lio/ktor/events/EventDefinition;

    return-void
.end method

.method public static final getHttpRequestCreated()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestCreated:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpRequestIsReadyForSending()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpRequestIsReadyForSending:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseCancelled()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseCancelled:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseReceiveFailed()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/utils/HttpResponseReceiveFail;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceiveFailed:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final getHttpResponseReceived()Lio/ktor/events/EventDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/client/statement/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lio/ktor/client/utils/ClientEventsKt;->HttpResponseReceived:Lio/ktor/events/EventDefinition;

    return-object v0
.end method
