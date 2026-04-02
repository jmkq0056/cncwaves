.class public abstract Lcom/dantsu/escposprinter/connection/DeviceConnection;
.super Ljava/lang/Object;
.source "DeviceConnection.java"


# instance fields
.field protected data:[B

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    return-void
.end method


# virtual methods
.method public abstract connect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation
.end method

.method public abstract disconnect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
.end method

.method public isConnected()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send(I)V

    return-void
.end method

.method public send(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 56
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    if-lez p1, :cond_0

    int-to-long v0, p1

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 62
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    const-string v0, "Unable to send data to device."

    invoke-direct {p1, v0}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 4

    .line 33
    array-length v0, p1

    iget-object v1, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 34
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget-object v1, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/DeviceConnection;->data:[B

    return-void
.end method
