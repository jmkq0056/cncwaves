.class public interface abstract Lcom/sun/jna/platform/win32/WinCrypt$CryptGetSignerCertificateCallback;
.super Ljava/lang/Object;
.source "WinCrypt.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary$StdCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CryptGetSignerCertificateCallback"
.end annotation


# virtual methods
.method public abstract callback(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/WinCrypt$CERT_INFO;Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;)Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT$ByReference;
.end method
