.class public final Lcom/stripe/transaction/ChargeAttemptManager;
.super Ljava/lang/Object;
.source "ChargeAttemptManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        "",
        "()V",
        "attempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "chargeAttempt",
        "getChargeAttempt",
        "()Lcom/stripe/transaction/ChargeAttempt;",
        "setChargeAttempt",
        "(Lcom/stripe/transaction/ChargeAttempt;)V",
        "chargeAttemptListener",
        "Lcom/stripe/transaction/ChargeAttemptChangeListener;",
        "getChargeAttemptListener",
        "()Lcom/stripe/transaction/ChargeAttemptChangeListener;",
        "setChargeAttemptListener",
        "(Lcom/stripe/transaction/ChargeAttemptChangeListener;)V",
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


# instance fields
.field private chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

.field private chargeAttemptListener:Lcom/stripe/transaction/ChargeAttemptChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttemptManager;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    return-object v0
.end method

.method public final getChargeAttemptListener()Lcom/stripe/transaction/ChargeAttemptChangeListener;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttemptManager;->chargeAttemptListener:Lcom/stripe/transaction/ChargeAttemptChangeListener;

    return-object v0
.end method

.method public final setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 1

    .line 8
    iput-object p1, p0, Lcom/stripe/transaction/ChargeAttemptManager;->chargeAttempt:Lcom/stripe/transaction/ChargeAttempt;

    .line 9
    iget-object v0, p0, Lcom/stripe/transaction/ChargeAttemptManager;->chargeAttemptListener:Lcom/stripe/transaction/ChargeAttemptChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/stripe/transaction/ChargeAttemptChangeListener;->onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V

    :cond_0
    return-void
.end method

.method public final setChargeAttemptListener(Lcom/stripe/transaction/ChargeAttemptChangeListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/stripe/transaction/ChargeAttemptManager;->chargeAttemptListener:Lcom/stripe/transaction/ChargeAttemptChangeListener;

    return-void
.end method
