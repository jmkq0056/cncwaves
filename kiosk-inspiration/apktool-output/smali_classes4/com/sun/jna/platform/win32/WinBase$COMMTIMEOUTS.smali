.class public Lcom/sun/jna/platform/win32/WinBase$COMMTIMEOUTS;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ReadIntervalTimeout",
        "ReadTotalTimeoutMultiplier",
        "ReadTotalTimeoutConstant",
        "WriteTotalTimeoutMultiplier",
        "WriteTotalTimeoutConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COMMTIMEOUTS"
.end annotation


# instance fields
.field public ReadIntervalTimeout:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public ReadTotalTimeoutConstant:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public ReadTotalTimeoutMultiplier:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public WriteTotalTimeoutConstant:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public WriteTotalTimeoutMultiplier:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1772
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
