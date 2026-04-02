.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AccessibilitySnapshot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;",
        "()V",
        "service_status",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;",
        "build",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public service_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 82
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;->ACCESSIBILITY_SERVICE_STATUS_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;->service_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;
    .locals 3

    .line 89
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;->service_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final service_status(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;
    .locals 1

    const-string v0, "service_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;->service_status:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;

    return-object p0
.end method
