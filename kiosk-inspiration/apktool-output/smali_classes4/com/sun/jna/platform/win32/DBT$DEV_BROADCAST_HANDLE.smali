.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbch_size",
        "dbch_devicetype",
        "dbch_reserved",
        "dbch_handle",
        "dbch_hdevnotify",
        "dbch_eventguid",
        "dbch_nameoffset",
        "dbch_data"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_HANDLE"
.end annotation


# instance fields
.field public dbch_data:[B

.field public dbch_devicetype:I

.field public dbch_eventguid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public dbch_handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public dbch_hdevnotify:Lcom/sun/jna/platform/win32/WinUser$HDEVNOTIFY;

.field public dbch_nameoffset:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public dbch_reserved:I

.field public dbch_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;->dbch_size:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 423
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;->dbch_size:I

    .line 461
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HANDLE;->read()V

    return-void
.end method
