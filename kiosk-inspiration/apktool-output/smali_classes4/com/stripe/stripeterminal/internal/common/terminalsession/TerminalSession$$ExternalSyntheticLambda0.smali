.class public final synthetic Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

.field public final synthetic f$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->$r8$lambda$9_FdDGpM1BaifeFRjKBBfCCLP6o(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    return-void
.end method
