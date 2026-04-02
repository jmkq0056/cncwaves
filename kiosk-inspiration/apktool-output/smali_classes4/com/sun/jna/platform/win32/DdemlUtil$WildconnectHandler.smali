.class public interface abstract Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;
.super Ljava/lang/Object;
.source "DdemlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WildconnectHandler"
.end annotation


# virtual methods
.method public abstract onWildconnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/jna/platform/win32/Ddeml$HSZ;",
            "Lcom/sun/jna/platform/win32/Ddeml$HSZ;",
            "Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;",
            ">;"
        }
    .end annotation
.end method
