.class public Lcom/sun/jna/platform/mac/SystemB$ProcBsdInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pbi_flags",
        "pbi_status",
        "pbi_xstatus",
        "pbi_pid",
        "pbi_ppid",
        "pbi_uid",
        "pbi_gid",
        "pbi_ruid",
        "pbi_rgid",
        "pbi_svuid",
        "pbi_svgid",
        "rfu_1",
        "pbi_comm",
        "pbi_name",
        "pbi_nfiles",
        "pbi_pgid",
        "pbi_pjobc",
        "e_tdev",
        "e_tpgid",
        "pbi_nice",
        "pbi_start_tvsec",
        "pbi_start_tvusec"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcBsdInfo"
.end annotation


# instance fields
.field public e_tdev:I

.field public e_tpgid:I

.field public pbi_comm:[B

.field public pbi_flags:I

.field public pbi_gid:I

.field public pbi_name:[B

.field public pbi_nfiles:I

.field public pbi_nice:I

.field public pbi_pgid:I

.field public pbi_pid:I

.field public pbi_pjobc:I

.field public pbi_ppid:I

.field public pbi_rgid:I

.field public pbi_ruid:I

.field public pbi_start_tvsec:J

.field public pbi_start_tvusec:J

.field public pbi_status:I

.field public pbi_svgid:I

.field public pbi_svuid:I

.field public pbi_uid:I

.field public pbi_xstatus:I

.field public rfu_1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 183
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$ProcBsdInfo;->pbi_comm:[B

    const/16 v0, 0x20

    .line 184
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$ProcBsdInfo;->pbi_name:[B

    return-void
.end method
