.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnectivityDomain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "()V",
        "bluetooth",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
        "usb",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
        "build",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public bluetooth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;

.field public usb:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bluetooth(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->bluetooth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->usb:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;
    .locals 4

    .line 117
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->bluetooth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;

    .line 119
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->usb:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 117
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;Lokio/ByteString;)V

    return-object v0
.end method

.method public final usb(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->usb:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;->bluetooth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;

    return-object p0
.end method
