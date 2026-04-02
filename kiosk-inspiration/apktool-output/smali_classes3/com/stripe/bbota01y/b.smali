.class public Lcom/stripe/bbota01y/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/bbota01z/a;


# instance fields
.field private final a:Lcom/stripe/bbota01z/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/stripe/bbota01z/c;

    invoke-direct {v0}, Lcom/stripe/bbota01z/c;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbota01y/b;->a:Lcom/stripe/bbota01z/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbota01y/b;->a:Lcom/stripe/bbota01z/c;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/c;->a()V

    return-void
.end method

.method public a(J[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01y/b;->a:Lcom/stripe/bbota01z/c;

    array-length p3, p3

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/stripe/bbota01z/c;->a(JJ)V

    return-void
.end method

.method public b()Lcom/stripe/bbota01z/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01y/b;->a:Lcom/stripe/bbota01z/c;

    invoke-virtual {v0}, Lcom/stripe/bbota01z/c;->b()Lcom/stripe/bbota01z/g;

    move-result-object v0

    return-object v0
.end method
