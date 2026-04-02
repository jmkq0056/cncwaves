.class public final Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReturnAccessiblePinPadTouchEventResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;",
        "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;",
        "()V",
        "event",
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        "uuid",
        "",
        "build",
        "sdk-protos_release"
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
.field public event:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    sget-object v0, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->event:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->build()Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;
    .locals 4

    .line 107
    new-instance v0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;

    .line 108
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->event:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    .line 109
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->uuid:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 107
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;-><init>(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final event(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;)Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->event:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p0
.end method

.method public final uuid(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;
    .locals 1

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method
