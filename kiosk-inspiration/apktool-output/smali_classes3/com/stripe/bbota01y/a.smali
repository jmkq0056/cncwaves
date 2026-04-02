.class public Lcom/stripe/bbota01y/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/bbota01z/a;


# instance fields
.field private final a:Lcom/stripe/bbota01z/g;

.field private final b:Ljava/io/OutputStream;

.field private final c:[B

.field private final d:Lcom/stripe/bbota01z/c;

.field private e:J

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/stripe/bbota01z/g;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbota01y/a;->b:Ljava/io/OutputStream;

    .line 4
    iput-boolean p3, p0, Lcom/stripe/bbota01y/a;->f:Z

    .line 5
    invoke-virtual {p1}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide p2

    long-to-int p2, p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/stripe/bbota01y/a;->c:[B

    const/4 p3, -0x1

    .line 6
    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    new-instance p2, Lcom/stripe/bbota01z/c;

    invoke-direct {p2}, Lcom/stripe/bbota01z/c;-><init>()V

    iput-object p2, p0, Lcom/stripe/bbota01y/a;->d:Lcom/stripe/bbota01z/c;

    .line 8
    invoke-virtual {p1}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/stripe/bbota01y/a;->e:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/stripe/bbota01y/a;->f:Z

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/stripe/bbota01y/a;->e:J

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbota01y/a;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/stripe/bbota01y/a;->c:[B

    iget-wide v2, p0, Lcom/stripe/bbota01y/a;->e:J

    iget-object v4, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v4}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 17
    const-class v1, Lcom/stripe/bbota01y/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(J[B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01y/a;->d:Lcom/stripe/bbota01z/c;

    array-length v1, p3

    int-to-long v1, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/stripe/bbota01z/c;->a(JJ)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->a()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 4
    array-length v0, p3

    int-to-long v1, v0

    add-long/2addr v1, p1

    .line 5
    iget-object v3, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v3}, Lcom/stripe/bbota01z/g;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    if-lez v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/g;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbota01y/a;->c:[B

    iget-object v4, p0, Lcom/stripe/bbota01y/a;->a:Lcom/stripe/bbota01z/g;

    invoke-virtual {v4}, Lcom/stripe/bbota01z/g;->b()J

    move-result-wide v4

    sub-long v4, p1, v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {p3, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-wide v0, p0, Lcom/stripe/bbota01y/a;->e:J

    array-length v4, p3

    int-to-long v4, v4

    add-long/2addr v4, p1

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 11
    array-length p3, p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/stripe/bbota01y/a;->e:J

    :cond_1
    return-void
.end method
