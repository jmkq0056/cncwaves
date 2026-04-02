.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbcp_size",
        "dbcp_devicetype",
        "dbcp_reserved",
        "dbcp_name"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_PORT"
.end annotation


# instance fields
.field public dbcp_devicetype:I

.field public dbcp_name:[C

.field public dbcp_reserved:I

.field public dbcp_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 283
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->dbcp_size:I

    const/4 v0, 0x1

    .line 292
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->dbcp_name:[C

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 283
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->size()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->dbcp_size:I

    const/4 p1, 0x1

    .line 292
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->dbcp_name:[C

    .line 309
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_PORT;->read()V

    return-void
.end method
