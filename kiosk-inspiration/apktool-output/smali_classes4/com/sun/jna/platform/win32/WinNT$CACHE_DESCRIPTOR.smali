.class public Lcom/sun/jna/platform/win32/WinNT$CACHE_DESCRIPTOR;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "level",
        "associativity",
        "lineSize",
        "size",
        "type"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CACHE_DESCRIPTOR"
.end annotation


# instance fields
.field public associativity:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public level:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public lineSize:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public size:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3342
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
