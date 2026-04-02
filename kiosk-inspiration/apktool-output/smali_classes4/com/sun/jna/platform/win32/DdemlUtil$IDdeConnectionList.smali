.class public interface abstract Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
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
    name = "IDdeConnectionList"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getHandle()Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;
.end method

.method public abstract queryNextServer(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
.end method
