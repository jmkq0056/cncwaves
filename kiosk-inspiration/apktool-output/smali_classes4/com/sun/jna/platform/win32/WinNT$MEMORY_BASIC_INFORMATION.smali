.class public Lcom/sun/jna/platform/win32/WinNT$MEMORY_BASIC_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "baseAddress",
        "allocationBase",
        "allocationProtect",
        "regionSize",
        "state",
        "protect",
        "type"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MEMORY_BASIC_INFORMATION"
.end annotation


# instance fields
.field public allocationBase:Lcom/sun/jna/Pointer;

.field public allocationProtect:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public baseAddress:Lcom/sun/jna/Pointer;

.field public protect:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public regionSize:Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

.field public state:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public type:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3777
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
