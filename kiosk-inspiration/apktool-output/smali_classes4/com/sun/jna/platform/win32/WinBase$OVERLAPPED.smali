.class public Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Internal",
        "InternalHigh",
        "Offset",
        "OffsetHigh",
        "hEvent"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OVERLAPPED"
.end annotation


# instance fields
.field public Internal:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public InternalHigh:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public Offset:I

.field public OffsetHigh:I

.field public hEvent:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1119
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
