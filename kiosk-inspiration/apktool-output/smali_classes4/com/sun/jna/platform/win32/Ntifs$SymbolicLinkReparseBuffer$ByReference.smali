.class public Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer$ByReference;
.super Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;
.source "Ntifs.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
