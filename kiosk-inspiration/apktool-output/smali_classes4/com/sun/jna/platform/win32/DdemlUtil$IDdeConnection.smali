.class public interface abstract Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
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
    name = "IDdeConnection"
.end annotation


# virtual methods
.method public abstract abandonTransaction(I)V
.end method

.method public abstract abandonTransactions()V
.end method

.method public abstract advstart(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract advstart(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract advstop(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract advstop(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract clientTransaction(Lcom/sun/jna/Pointer;ILjava/lang/String;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract close()V
.end method

.method public abstract enableCallback(I)Z
.end method

.method public abstract execute(Ljava/lang/String;ILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract getConv()Lcom/sun/jna/platform/win32/Ddeml$HCONV;
.end method

.method public abstract impersonateClient()V
.end method

.method public abstract poke(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract poke(Lcom/sun/jna/Pointer;ILjava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
.end method

.method public abstract queryConvInfo(I)Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method

.method public abstract reconnect()V
.end method

.method public abstract request(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract request(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
.end method

.method public abstract setUserHandle(ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation
.end method
