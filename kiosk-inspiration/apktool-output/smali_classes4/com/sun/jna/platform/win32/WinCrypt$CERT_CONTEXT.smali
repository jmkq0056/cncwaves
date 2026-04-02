.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwCertEncodingType",
        "pbCertEncoded",
        "cbCertEncoded",
        "pCertInfo",
        "hCertStore"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_CONTEXT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT$ByReference;
    }
.end annotation


# instance fields
.field public cbCertEncoded:I

.field public dwCertEncodingType:I

.field public hCertStore:Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;

.field public pCertInfo:Lcom/sun/jna/platform/win32/WinCrypt$CERT_INFO$ByReference;

.field public pbCertEncoded:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
