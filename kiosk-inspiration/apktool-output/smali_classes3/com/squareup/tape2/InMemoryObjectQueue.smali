.class final Lcom/squareup/tape2/InMemoryObjectQueue;
.super Lcom/squareup/tape2/ObjectQueue;
.source "InMemoryObjectQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/tape2/ObjectQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field closed:Z

.field private final entries:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation
.end field

.field modCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/squareup/tape2/ObjectQueue;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    if-nez v0, :cond_0

    .line 34
    iget v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    .line 35
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    return-void
.end method

.method public file()Lcom/squareup/tape2/QueueFile;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;

    iget-object v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;-><init>(Lcom/squareup/tape2/InMemoryObjectQueue;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/squareup/tape2/InMemoryObjectQueue;->remove(I)V

    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    if-nez v0, :cond_1

    .line 57
    iget v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InMemoryObjectQueue{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue;->entries:Ljava/util/Deque;

    .line 79
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
