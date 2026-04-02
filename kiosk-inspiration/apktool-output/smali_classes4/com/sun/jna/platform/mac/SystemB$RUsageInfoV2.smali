.class public Lcom/sun/jna/platform/mac/SystemB$RUsageInfoV2;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ri_uuid",
        "ri_user_time",
        "ri_system_time",
        "ri_pkg_idle_wkups",
        "ri_interrupt_wkups",
        "ri_pageins",
        "ri_wired_size",
        "ri_resident_size",
        "ri_phys_footprint",
        "ri_proc_start_abstime",
        "ri_proc_exit_abstime",
        "ri_child_user_time",
        "ri_child_system_time",
        "ri_child_pkg_idle_wkups",
        "ri_child_interrupt_wkups",
        "ri_child_pageins",
        "ri_child_elapsed_abstime",
        "ri_diskio_bytesread",
        "ri_diskio_byteswritten"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RUsageInfoV2"
.end annotation


# instance fields
.field public ri_child_elapsed_abstime:J

.field public ri_child_interrupt_wkups:J

.field public ri_child_pageins:J

.field public ri_child_pkg_idle_wkups:J

.field public ri_child_system_time:J

.field public ri_child_user_time:J

.field public ri_diskio_bytesread:J

.field public ri_diskio_byteswritten:J

.field public ri_interrupt_wkups:J

.field public ri_pageins:J

.field public ri_phys_footprint:J

.field public ri_pkg_idle_wkups:J

.field public ri_proc_exit_abstime:J

.field public ri_proc_start_abstime:J

.field public ri_resident_size:J

.field public ri_system_time:J

.field public ri_user_time:J

.field public ri_uuid:[B

.field public ri_wired_size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 280
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$RUsageInfoV2;->ri_uuid:[B

    return-void
.end method
