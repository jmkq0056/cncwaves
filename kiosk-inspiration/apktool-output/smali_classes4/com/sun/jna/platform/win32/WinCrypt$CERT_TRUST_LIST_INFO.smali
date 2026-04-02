.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_LIST_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "pCtlEntry",
        "pCtlContext"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_TRUST_LIST_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_LIST_INFO$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:I

.field public pCtlContext:Lcom/sun/jna/platform/win32/WinCrypt$CTL_CONTEXT$ByReference;

.field public pCtlEntry:Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
