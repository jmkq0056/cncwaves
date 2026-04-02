.class final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CotsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0001\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation$execute$2;->invoke()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Void;
    .locals 7

    .line 799
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 800
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 799
    const-string v2, "Cannot reconnect Tap to Pay reader without valid initial connection"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
