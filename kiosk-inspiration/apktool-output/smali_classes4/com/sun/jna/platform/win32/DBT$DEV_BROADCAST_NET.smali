.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbcn_size",
        "dbcn_devicetype",
        "dbcn_reserved",
        "dbcn_resource",
        "dbcn_flags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_NET"
.end annotation


# instance fields
.field public dbcn_devicetype:I

.field public dbcn_flags:I

.field public dbcn_reserved:I

.field public dbcn_resource:I

.field public dbcn_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;->dbcn_size:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 320
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;->dbcn_size:I

    .line 349
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_NET;->read()V

    return-void
.end method
