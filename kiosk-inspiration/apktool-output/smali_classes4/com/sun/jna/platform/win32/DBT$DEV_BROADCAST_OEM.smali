.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbco_size",
        "dbco_devicetype",
        "dbco_reserved",
        "dbco_identifier",
        "dbco_suppfunc"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_OEM"
.end annotation


# instance fields
.field public dbco_devicetype:I

.field public dbco_identifier:I

.field public dbco_reserved:I

.field public dbco_size:I

.field public dbco_suppfunc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;->dbco_size:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 163
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;->dbco_size:I

    .line 192
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_OEM;->read()V

    return-void
.end method
