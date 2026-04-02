.class public Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO$ByReference;
.super Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;
.source "VerRsrc.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
