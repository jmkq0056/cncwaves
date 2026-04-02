.class public Lcom/sun/jna/platform/win32/Ddeml$MONCONVSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "fConnect",
        "dwTime",
        "hTask",
        "hszSvc",
        "hszTopic",
        "hConvClient",
        "hConvServer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONCONVSTRUCT"
.end annotation


# instance fields
.field public cb:Lcom/sun/jna/platform/win32/WinDef$UINT;

.field public dwTime:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public fConnect:Lcom/sun/jna/platform/win32/WinDef$BOOL;

.field public hConvClient:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hConvServer:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hszSvc:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszTopic:Lcom/sun/jna/platform/win32/Ddeml$HSZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
