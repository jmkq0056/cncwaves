.class public Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE$ByReference;
.super Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;
.source "WinNT.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2569
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;-><init>()V

    return-void
.end method
