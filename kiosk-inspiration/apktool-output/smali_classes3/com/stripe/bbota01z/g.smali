.class public Lcom/stripe/bbota01z/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/stripe/bbota01z/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/stripe/bbota01z/g;->a:J

    add-long/2addr p1, p3

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    .line 3
    iput-wide p1, p0, Lcom/stripe/bbota01z/g;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/stripe/bbota01z/g;)I
    .locals 5

    .line 3
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->a:J

    iget-wide v2, p1, Lcom/stripe/bbota01z/g;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->b:J

    iget-wide v2, p1, Lcom/stripe/bbota01z/g;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->b:J

    return-wide v0
.end method

.method a(J)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/stripe/bbota01z/g;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->a:J

    return-wide v0
.end method

.method public c()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/stripe/bbota01z/g;->b:J

    iget-wide v2, p0, Lcom/stripe/bbota01z/g;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/stripe/bbota01z/g;

    invoke-virtual {p0, p1}, Lcom/stripe/bbota01z/g;->a(Lcom/stripe/bbota01z/g;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/stripe/bbota01z/g;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/bbota01z/g;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stripe/bbota01z/g;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%08x:0x%08x (%dB 0x%08X)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
