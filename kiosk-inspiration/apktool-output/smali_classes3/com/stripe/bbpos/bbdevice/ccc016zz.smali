.class final Lcom/stripe/bbpos/bbdevice/ccc016zz;
.super Lcom/stripe/bbpos/bbdevice/ccc011zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 3
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 4
    invoke-virtual {p2, p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc016zz;)V

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method aaa000([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    return-void
.end method

.method protected aaa001()V
    .locals 0

    return-void
.end method
