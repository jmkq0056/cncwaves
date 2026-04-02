.class public Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;
.super Lcom/sun/jna/Structure;
.source "DBT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dbcc_size",
        "dbcc_devicetype",
        "dbcc_reserved",
        "dbcc_classguid",
        "dbcc_name"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DEV_BROADCAST_DEVICEINTERFACE"
.end annotation


# instance fields
.field public dbcc_classguid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public dbcc_devicetype:I

.field public dbcc_name:[C

.field public dbcc_reserved:I

.field public dbcc_size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 378
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 372
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->dbcc_name:[C

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 388
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/Pointer;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 398
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 372
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->dbcc_name:[C

    .line 399
    const-string v0, "dbcc_size"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->dbcc_size:I

    add-int/2addr v0, p1

    .line 401
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->size()I

    move-result p1

    sub-int/2addr v0, p1

    .line 402
    new-array p1, v0, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->dbcc_name:[C

    .line 403
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->read()V

    return-void
.end method


# virtual methods
.method public getDbcc_name()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DBT$DEV_BROADCAST_DEVICEINTERFACE;->dbcc_name:[C

    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
