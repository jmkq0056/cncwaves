.class public Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "AceType",
        "AceFlags",
        "AceSize"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACE_HEADER"
.end annotation


# instance fields
.field public AceFlags:B

.field public AceSize:S

.field public AceType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2645
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(BBS)V
    .locals 0

    .line 2654
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2655
    iput-byte p1, p0, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceType:B

    .line 2656
    iput-byte p2, p0, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceFlags:B

    .line 2657
    iput-short p3, p0, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceSize:S

    .line 2658
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2649
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2650
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->read()V

    return-void
.end method
