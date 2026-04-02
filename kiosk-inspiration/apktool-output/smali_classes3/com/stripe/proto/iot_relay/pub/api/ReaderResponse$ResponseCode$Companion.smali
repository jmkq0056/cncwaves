.class public final Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode$Companion;
.super Ljava/lang/Object;
.source "ReaderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;",
        "fromValue",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 267
    :cond_0
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->INTEGRATION_MODE_MISMATCH:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1

    .line 266
    :cond_1
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->READER_BUSY:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1

    .line 265
    :cond_2
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->MALFORMED_COMMAND:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1

    .line 264
    :cond_3
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->INVALID_COMMAND:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1

    .line 263
    :cond_4
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->SUCCESS:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1

    .line 262
    :cond_5
    sget-object p1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->RESPONSE_CODE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p1
.end method
