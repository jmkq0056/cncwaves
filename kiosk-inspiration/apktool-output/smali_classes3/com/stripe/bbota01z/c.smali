.class public Lcom/stripe/bbota01z/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbota01z/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbota01z/g;

    if-nez v1, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v2}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 21
    invoke-virtual {v2}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbota01z/g;->a(J)V

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbota01z/g;

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/stripe/bbota01z/g;->a(J)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    new-instance v1, Lcom/stripe/bbota01z/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/stripe/bbota01z/g;-><init>(JJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/stripe/bbota01z/g;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbota01z/g;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbota01z/g;

    .line 4
    invoke-virtual {v2}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v5

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    move-wide v3, v0

    .line 7
    :goto_0
    new-instance v2, Lcom/stripe/bbota01z/g;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/stripe/bbota01z/g;-><init>(JJ)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/stripe/bbota01z/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbota01z/g;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
