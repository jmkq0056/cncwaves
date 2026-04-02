.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbch_size",
        "dbch_devicetype",
        "dbch_reserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_HDR"
.end annotation


# instance fields
.field public dbch_devicetype:I

.field public dbch_reserved:I

.field public dbch_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;->dbch_size:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 121
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/Pointer;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 99
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;->dbch_size:I

    .line 132
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_HDR;->read()V

    return-void
.end method
