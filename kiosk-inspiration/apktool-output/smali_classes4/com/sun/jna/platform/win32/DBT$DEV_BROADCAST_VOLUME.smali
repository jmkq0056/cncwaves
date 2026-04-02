.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbcv_size",
        "dbcv_devicetype",
        "dbcv_reserved",
        "dbcv_unitmask",
        "dbcv_flags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_VOLUME"
.end annotation


# instance fields
.field public dbcv_devicetype:I

.field public dbcv_flags:S

.field public dbcv_reserved:I

.field public dbcv_size:I

.field public dbcv_unitmask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;->dbcv_size:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 238
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;->dbcv_size:I

    .line 267
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_VOLUME;->read()V

    return-void
.end method
