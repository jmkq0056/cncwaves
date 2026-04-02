.class public final Lcom/stripe/core/transaction/CancelableOperationContext;
.super Ljava/lang/Object;
.source "CancelableOperationContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0006\u0010\u0015\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/core/transaction/CancelableOperationContext;",
        "",
        "cancelableOperation",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "cancelableOperationType",
        "Lcom/stripe/core/transaction/CancelableOperationType;",
        "(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V",
        "getCancelableOperation",
        "()Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "getCancelableOperationType",
        "()Lcom/stripe/core/transaction/CancelableOperationType;",
        "currentlyCancelable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "isCurrentlyCancelable",
        "setCurrentlyCancelable",
        "",
        "cancelable",
        "toString",
        "",
        "transaction_release"
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
.field private final cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

.field private final cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

.field private final currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V
    .locals 1

    const-string v0, "cancelableOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelableOperationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    .line 12
    iput-object p2, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/transaction/CancelableOperationContext;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;ILjava/lang/Object;)Lcom/stripe/core/transaction/CancelableOperationContext;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/transaction/CancelableOperationContext;->copy(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)Lcom/stripe/core/transaction/CancelableOperationContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object v0
.end method

.method public final component2()Lcom/stripe/core/transaction/CancelableOperationType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)Lcom/stripe/core/transaction/CancelableOperationContext;
    .locals 1

    const-string v0, "cancelableOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelableOperationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/transaction/CancelableOperationContext;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/transaction/CancelableOperationContext;-><init>(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/transaction/CancelableOperationContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/transaction/CancelableOperationContext;

    iget-object v1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    iget-object v3, p1, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    iget-object p1, p1, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCancelableOperation()Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object v0
.end method

.method public final getCancelableOperationType()Lcom/stripe/core/transaction/CancelableOperationType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCurrentlyCancelable()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final setCurrentlyCancelable(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->currentlyCancelable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancelableOperationContext(cancelableOperation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperation:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelableOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/transaction/CancelableOperationContext;->cancelableOperationType:Lcom/stripe/core/transaction/CancelableOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
