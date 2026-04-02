.class final Lcom/stripe/bbpos/bbdevice/ccc021zz;
.super Lcom/stripe/bbpos/bbdevice/ccc018zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Ljava/io/OutputStream;

.field private aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz;

.field private aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

.field private aaa004:Lcom/stripe/bbpos/bbdevice/ccc037zz;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/OutputStream;Lcom/stripe/bbpos/bbdevice/ccc035zz;Lcom/stripe/bbpos/bbdevice/ccc036zz;Lcom/stripe/bbpos/bbdevice/ccc037zz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc018zz;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    .line 4
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    .line 5
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    .line 6
    iput-object p5, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method aaa000(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    return-void
.end method

.method aaa000([B)V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v0, 0x50

    .line 10
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 14
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    if-nez v0, :cond_2

    .line 16
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc036zz;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice/ccc036zz;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    :cond_2
    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc036zz;->aaa002()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc036zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc036zz;->aaa001()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa002()V

    goto :goto_1

    .line 27
    :cond_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa002()V

    goto :goto_1

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 31
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 34
    :catch_0
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa004(Z)V

    .line 35
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 37
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne p1, v0, :cond_7

    .line 38
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    invoke-virtual {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(I)V

    goto :goto_2

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003()I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 41
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000()Z

    goto :goto_2

    .line 49
    :cond_8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa004(Z)V

    .line 50
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc021zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method
