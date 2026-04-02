.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2\n*L\n1#1,1324:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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


# instance fields
.field final synthetic $deviceBusySubscription:Lio/reactivex/rxjava3/disposables/Disposable;

.field final synthetic $exceptionSubscription:Lio/reactivex/rxjava3/disposables/Disposable;

.field final synthetic $valueSubscription:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$valueSubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$exceptionSubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$deviceBusySubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$valueSubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 714
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$exceptionSubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 715
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;->$deviceBusySubscription:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method
