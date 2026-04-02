.class public Lcom/sun/jna/platform/win32/WinGDI$RGNDATA;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "rdh",
        "Buffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RGNDATA"
.end annotation


# instance fields
.field public Buffer:[B

.field public rdh:Lcom/sun/jna/platform/win32/WinGDI$RGNDATAHEADER;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinGDI$RGNDATA;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 61
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinGDI$RGNDATA;->Buffer:[B

    .line 62
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinGDI$RGNDATA;->allocateMemory()V

    return-void
.end method
