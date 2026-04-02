.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwInfoChoice",
        "DUMMYUNIONNAME"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_STRONG_SIGN_PARA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$DUMMYUNION;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$ByReference;
    }
.end annotation


# instance fields
.field public DUMMYUNIONNAME:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$DUMMYUNION;

.field public cbSize:I

.field public dwInfoChoice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
