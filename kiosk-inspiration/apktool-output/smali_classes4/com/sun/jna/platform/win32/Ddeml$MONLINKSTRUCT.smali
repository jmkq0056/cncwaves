.class public Lcom/sun/jna/platform/win32/Ddeml$MONLINKSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "dwTime",
        "hTask",
        "fEstablished",
        "fNoData",
        "hszSvc",
        "hszTopic",
        "hszItem",
        "wFmt",
        "fServer",
        "hConvServer",
        "hConvClient"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONLINKSTRUCT"
.end annotation


# instance fields
.field public cb:I

.field public dwTime:I

.field public fEstablished:Lcom/sun/jna/platform/win32/WinDef$BOOL;

.field public fNoData:Lcom/sun/jna/platform/win32/WinDef$BOOL;

.field public fServer:Lcom/sun/jna/platform/win32/WinDef$BOOL;

.field public hConvClient:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hConvServer:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hszItem:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszSvc:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszTopic:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public wFmt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
