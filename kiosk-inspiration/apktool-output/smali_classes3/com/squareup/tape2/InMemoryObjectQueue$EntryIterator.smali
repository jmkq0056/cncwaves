.class final Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;
.super Ljava/lang/Object;
.source "InMemoryObjectQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/tape2/InMemoryObjectQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private index:I

.field final synthetic this$0:Lcom/squareup/tape2/InMemoryObjectQueue;


# direct methods
.method constructor <init>(Lcom/squareup/tape2/InMemoryObjectQueue;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    .line 91
    iget p1, p1, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    iput p1, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->expectedModCount:I

    .line 94
    iput-object p2, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->delegate:Ljava/util/Iterator;

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    iget v0, v0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    iget v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->checkForComodification()V

    .line 99
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    iget-boolean v0, v0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->checkForComodification()V

    .line 106
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    iget-boolean v0, v0, Lcom/squareup/tape2/InMemoryObjectQueue;->closed:Z

    if-nez v0, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->checkForComodification()V

    .line 115
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    invoke-virtual {v0}, Lcom/squareup/tape2/InMemoryObjectQueue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    invoke-virtual {v0}, Lcom/squareup/tape2/InMemoryObjectQueue;->remove()V

    .line 122
    iget-object v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->this$0:Lcom/squareup/tape2/InMemoryObjectQueue;

    iget v0, v0, Lcom/squareup/tape2/InMemoryObjectQueue;->modCount:I

    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->expectedModCount:I

    .line 123
    iget v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/tape2/InMemoryObjectQueue$EntryIterator;->index:I

    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal is only permitted from the head."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
