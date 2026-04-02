.class public Lcom/sun/jna/platform/mac/SystemB$Statfs;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "f_bsize",
        "f_iosize",
        "f_blocks",
        "f_bfree",
        "f_bavail",
        "f_files",
        "f_ffree",
        "f_fsid",
        "f_owner",
        "f_type",
        "f_flags",
        "f_fssubtype",
        "f_fstypename",
        "f_mntonname",
        "f_mntfromname",
        "f_reserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Statfs"
.end annotation


# instance fields
.field public f_bavail:J

.field public f_bfree:J

.field public f_blocks:J

.field public f_bsize:I

.field public f_ffree:J

.field public f_files:J

.field public f_flags:I

.field public f_fsid:[I

.field public f_fssubtype:I

.field public f_fstypename:[B

.field public f_iosize:I

.field public f_mntfromname:[B

.field public f_mntonname:[B

.field public f_owner:I

.field public f_reserved:[I

.field public f_type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x2

    .line 330
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$Statfs;->f_fsid:[I

    const/16 v0, 0x10

    .line 336
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$Statfs;->f_fstypename:[B

    const/16 v0, 0x400

    .line 338
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/jna/platform/mac/SystemB$Statfs;->f_mntonname:[B

    .line 340
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$Statfs;->f_mntfromname:[B

    const/16 v0, 0x8

    .line 341
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$Statfs;->f_reserved:[I

    return-void
.end method
