.class public Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;
.super Lcom/dantsu/escposprinter/connection/DeviceConnection;
.source "TcpConnection.java"


# instance fields
.field private address:Ljava/lang/String;

.field private port:I

.field private socket:Ljava/net/Socket;

.field private timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x1e

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;

    .line 40
    iput-object p1, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->address:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->port:I

    .line 42
    iput p3, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->timeout:I

    return-void
.end method


# virtual methods
.method public bridge synthetic connect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->connect()Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;

    move-result-object v0

    return-object v0
.end method

.method public connect()Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;

    .line 63
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->address:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->timeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 64
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 65
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->disconnect()Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;

    .line 69
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;

    const-string v1, "Unable to connect to TCP device."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic disconnect()Lcom/dantsu/escposprinter/connection/DeviceConnection;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->disconnect()Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;
    .locals 2

    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->data:[B

    .line 79
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->outputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 82
    iput-object v1, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 90
    iput-object v1, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dantsu/escposprinter/connection/tcp/TcpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
