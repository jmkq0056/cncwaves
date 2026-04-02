.class public interface abstract Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDdeClient"
.end annotation


# virtual methods
.method public abstract abandonTransactions()V
.end method

.method public abstract accessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;
.end method

.method public abstract addData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract connect(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
.end method

.method public abstract connectList(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
.end method

.method public abstract connectList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
.end method

.method public abstract createDataHandle(Lcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract enableCallback(I)Z
.end method

.method public abstract freeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
.end method

.method public abstract freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
.end method

.method public abstract getData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I
.end method

.method public abstract getInstanceIdentitifier()Ljava/lang/Integer;
.end method

.method public abstract getLastError()I
.end method

.method public abstract initialize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract keepStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
.end method

.method public abstract nameService(Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract nameService(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract postAdvise(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
.end method

.method public abstract postAdvise(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryString(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
.end method

.method public abstract registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
.end method

.method public abstract registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
.end method

.method public abstract registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
.end method

.method public abstract registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
.end method

.method public abstract registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
.end method

.method public abstract registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
.end method

.method public abstract registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
.end method

.method public abstract registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
.end method

.method public abstract registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
.end method

.method public abstract registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
.end method

.method public abstract registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
.end method

.method public abstract registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
.end method

.method public abstract registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
.end method

.method public abstract registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
.end method

.method public abstract registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
.end method

.method public abstract unaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
.end method

.method public abstract uninitialize()Z
.end method

.method public abstract unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
.end method

.method public abstract unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
.end method

.method public abstract unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
.end method

.method public abstract unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
.end method

.method public abstract unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
.end method

.method public abstract unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
.end method

.method public abstract unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
.end method

.method public abstract unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
.end method

.method public abstract unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
.end method

.method public abstract unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
.end method

.method public abstract unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
.end method

.method public abstract unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
.end method

.method public abstract unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
.end method

.method public abstract unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
.end method

.method public abstract unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
.end method

.method public abstract unregisterXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
.end method

.method public abstract wrap(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
.end method
