.class final Lcom/stripe/bbpos/bbdevice/ccc023zz;
.super Lcom/stripe/bbpos/bbdevice/ccc018zz;
.source "SourceFile"


# static fields
.field private static final aaa002:Ljava/lang/String;


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc021zz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc023zz;->aaa002:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc018zz;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc023zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc023zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method declared-synchronized aaa000([B)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc023zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc023zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
