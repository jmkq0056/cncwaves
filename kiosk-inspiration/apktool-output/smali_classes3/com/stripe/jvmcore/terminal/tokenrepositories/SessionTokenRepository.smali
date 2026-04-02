.class public Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
.super Ljava/lang/Object;
.source "SessionTokenRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001a\u001a\u00020\u001bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
        "()V",
        "_hasSessionTokenStateFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "hasSessionTokenStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getHasSessionTokenStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "rpcSessionToken",
        "",
        "getRpcSessionToken",
        "()Ljava/lang/String;",
        "setRpcSessionToken",
        "(Ljava/lang/String;)V",
        "sessionTokenListener",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;",
        "getSessionTokenListener",
        "()Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;",
        "setSessionTokenListener",
        "(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;)V",
        "token",
        "stripeSessionToken",
        "getStripeSessionToken",
        "setStripeSessionToken",
        "clear",
        "",
        "TokenChangeListener",
        "terminal-core"
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
.field private final _hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rpcSessionToken:Ljava/lang/String;

.field private sessionTokenListener:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

.field private stripeSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->_hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setStripeSessionToken(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->_hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setRpcSessionToken(Ljava/lang/String;)V

    return-void
.end method

.method public final getHasSessionTokenStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getRpcSessionToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->rpcSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionTokenListener()Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->sessionTokenListener:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

    return-object v0
.end method

.method public final getStripeSessionToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->stripeSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public setRpcSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->rpcSessionToken:Ljava/lang/String;

    return-void
.end method

.method public final setSessionTokenListener(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->sessionTokenListener:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

    return-void
.end method

.method public final setStripeSessionToken(Ljava/lang/String;)V
    .locals 3

    .line 18
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->stripeSessionToken:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->_hasSessionTokenStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->sessionTokenListener:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;->onSessionTokenChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
