.class public Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "genericRead",
        "genericWrite",
        "genericExecute",
        "genericAll"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GENERIC_MAPPING"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING$ByReference;
    }
.end annotation


# instance fields
.field public genericAll:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public genericExecute:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public genericRead:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public genericWrite:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2808
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
