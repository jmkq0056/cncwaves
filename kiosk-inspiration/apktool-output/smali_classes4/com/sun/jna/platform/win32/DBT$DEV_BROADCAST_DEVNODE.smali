.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbcd_size",
        "dbcd_devicetype",
        "dbcd_reserved",
        "dbcd_devnode"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_DEVNODE"
.end annotation


# instance fields
.field public dbcd_devicetype:I

.field public dbcd_devnode:I

.field public dbcd_reserved:I

.field public dbcd_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 202
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;->dbcd_size:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 202
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;->dbcd_size:I

    .line 228
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVNODE;->read()V

    return-void
.end method
