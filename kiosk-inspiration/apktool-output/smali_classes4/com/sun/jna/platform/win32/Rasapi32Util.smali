.class public abstract Lcom/sun/jna/platform/win32/Rasapi32Util;
.super Ljava/lang/Object;
.source "Rasapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
    }
.end annotation


# static fields
.field public static final CONNECTION_STATE_TEXT:Ljava/util/Map;

.field private static final RASP_PppIp:I = 0x8021

.field private static phoneBookMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/Rasapi32Util;->CONNECTION_STATE_TEXT:Ljava/util/Map;

    const/4 v1, 0x0

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Opening the port..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Port has been opened successfully"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Connecting to the device..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The device has connected successfully."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "All devices in the device chain have successfully connected."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Verifying the user name and password..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "An authentication event has occurred."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Requested another validation attempt with a new user."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Server has requested a callback number."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The client has requested to change the password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Registering your computer on the network..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The link-speed calculation phase is starting..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "An authentication request is being acknowledged."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Reauthentication (after callback) is starting."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xe

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The client has successfully completed authentication."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The line is about to disconnect for callback."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Delaying to give the modem time to reset for callback."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Waiting for an incoming call from server."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Projection result information is available."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "User authentication is being initiated or retried."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Client has been called back and is about to resume authentication."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Logging on to the network..."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Subentry has been connected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Subentry has been disconnected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1000

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Terminal state supported by RASPHONE.EXE."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1001

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Retry authentication state supported by RASPHONE.EXE."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1002

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Callback state supported by RASPHONE.EXE."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1003

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Change password state supported by RASPHONE.EXE."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1004

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Displaying authentication UI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2000

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Connected to remote server successfully"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2001

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Disconnected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dialEntry(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;-><init>()V

    .line 260
    sget-object v1, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x7

    .line 261
    :try_start_0
    iput v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->dwMask:I

    .line 262
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p0, v0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;)I

    move-result v2

    if-nez v2, :cond_2

    .line 264
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    new-instance v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;-><init>()V

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szEntryName:[C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szUserName:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szUserName:[C

    iget-object v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szUserName:[C

    array-length v2, v2

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szPassword:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szPassword:[C

    iget-object v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szPassword:[C

    array-length v2, v2

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szDomain:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szDomain:[C

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szDomain:[C

    array-length v0, v0

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    new-instance v9, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 275
    sget-object v3, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/sun/jna/platform/win32/Rasapi32;->RasDial(Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;ILcom/sun/jna/platform/win32/WinRas$RasDialFunc2;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 277
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Rasapi32;->RasHangUp(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    .line 278
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v0

    .line 280
    :cond_1
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0

    return-object p0

    .line 263
    :cond_2
    :try_start_1
    new-instance p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p0, v2}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 264
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static dialEntry(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RasDialFunc2;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;-><init>()V

    .line 293
    sget-object v1, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x7

    .line 294
    :try_start_0
    iput v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->dwMask:I

    .line 295
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p0, v0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;)I

    move-result v2

    if-nez v2, :cond_2

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    new-instance v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;-><init>()V

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szEntryName:[C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szUserName:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szUserName:[C

    iget-object v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szUserName:[C

    array-length v2, v2

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szPassword:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szPassword:[C

    iget-object v2, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szPassword:[C

    array-length v2, v2

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object p0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szDomain:[C

    iget-object v1, v6, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szDomain:[C

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;->szDomain:[C

    array-length v0, v0

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    new-instance v9, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 308
    sget-object v3, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    move-object v8, p1

    invoke-interface/range {v3 .. v9}, Lcom/sun/jna/platform/win32/Rasapi32;->RasDial(Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;ILcom/sun/jna/platform/win32/WinRas$RasDialFunc2;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 310
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasHangUp(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    .line 311
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p1

    .line 313
    :cond_1
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0

    return-object p0

    .line 296
    :cond_2
    :try_start_1
    new-instance p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p0, v2}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 297
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getIPProjection(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;-><init>()V

    .line 197
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 198
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->write()V

    .line 199
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const v3, 0x8021

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4, v1}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetProjectionInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->read()V

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v0
.end method

.method public static getPhoneBookDialingParams(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    new-instance v1, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;-><init>()V

    .line 243
    iget-object v2, v1, Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;->szEntryName:[C

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    new-instance p0, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;-><init>()V

    .line 245
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, p0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetEntryDialParams(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)I

    move-result p0

    if-nez p0, :cond_0

    .line 247
    monitor-exit v0

    return-object v1

    .line 246
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v1

    :catchall_0
    move-exception p0

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPhoneBookEntry(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 212
    sget-object v1, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    new-instance v5, Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;-><init>()V

    .line 214
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 215
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    invoke-interface/range {v2 .. v8}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetEntryProperties(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I

    move-result p0

    if-nez p0, :cond_0

    .line 217
    monitor-exit v1

    return-object v5

    .line 216
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getRasConnection(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 147
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 148
    sget-object v3, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0, v2}, Lcom/sun/jna/platform/win32/Rasapi32;->RasEnumConnections([Lcom/sun/jna/platform/win32/WinRas$RASCONN;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v5, 0x25b

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p0, v3}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p0

    .line 150
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    .line 153
    :cond_2
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinRas$RASCONN;

    move v3, v1

    .line 154
    :goto_1
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    if-ge v3, v5, :cond_3

    new-instance v5, Lcom/sun/jna/platform/win32/WinRas$RASCONN;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinRas$RASCONN;-><init>()V

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_3
    new-instance v3, Lcom/sun/jna/ptr/IntByReference;

    aget-object v5, v0, v1

    iget v5, v5, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->dwSize:I

    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-direct {v3, v5}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 156
    sget-object v5, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-interface {v5, v0, v3, v2}, Lcom/sun/jna/platform/win32/Rasapi32;->RasEnumConnections([Lcom/sun/jna/platform/win32/WinRas$RASCONN;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v3

    if-nez v3, :cond_6

    .line 160
    :goto_2
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 161
    new-instance v3, Ljava/lang/String;

    aget-object v5, v0, v1

    iget-object v5, v5, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szEntryName:[C

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object p0, v0, v1

    iget-object p0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->hrasconn:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v4

    .line 157
    :cond_6
    new-instance p0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p0, v3}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p0
.end method

.method public static getRasConnectionStatusText(I)Ljava/lang/String;
    .locals 2

    .line 134
    sget-object v0, Lcom/sun/jna/platform/win32/Rasapi32Util;->CONNECTION_STATE_TEXT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getRasErrorString(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x400

    .line 120
    new-array v1, v0, [C

    .line 121
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-interface {v2, p0, v1, v0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasGetErrorString(I[CI)I

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 124
    aget-char v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static hangupRasConnection(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasHangUp(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v0
.end method

.method public static hangupRasConnection(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Rasapi32Util;->getRasConnection(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32;->RasHangUp(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw v0
.end method

.method public static setPhoneBookEntry(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;
        }
    .end annotation

    .line 228
    sget-object v1, Lcom/sun/jna/platform/win32/Rasapi32Util;->phoneBookMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v2 .. v8}, Lcom/sun/jna/platform/win32/Rasapi32;->RasSetEntryProperties(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;I[BI)I

    move-result p0

    if-nez p0, :cond_0

    .line 231
    monitor-exit v1

    return-void

    .line 230
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Rasapi32Util$Ras32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 231
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
