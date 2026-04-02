.class public Lcom/sun/jna/platform/mac/SystemB$VMMeter;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "v_swtch",
        "v_trap",
        "v_syscall",
        "v_intr",
        "v_soft",
        "v_faults",
        "v_lookups",
        "v_hits",
        "v_vm_faults",
        "v_cow_faults",
        "v_swpin",
        "v_swpout",
        "v_pswpin",
        "v_pswpout",
        "v_pageins",
        "v_pageouts",
        "v_pgpgin",
        "v_pgpgout",
        "v_intrans",
        "v_reactivated",
        "v_rev",
        "v_scan",
        "v_dfree",
        "v_pfree",
        "v_zfod",
        "v_nzfod",
        "v_page_size",
        "v_kernel_pages",
        "v_free_target",
        "v_free_min",
        "v_free_count",
        "v_wire_count",
        "v_active_count",
        "v_inactive_target",
        "v_inactive_count"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMMeter"
.end annotation


# instance fields
.field public v_active_count:I

.field public v_cow_faults:I

.field public v_dfree:I

.field public v_faults:I

.field public v_free_count:I

.field public v_free_min:I

.field public v_free_target:I

.field public v_hits:I

.field public v_inactive_count:I

.field public v_inactive_target:I

.field public v_intr:I

.field public v_intrans:I

.field public v_kernel_pages:I

.field public v_lookups:I

.field public v_nzfod:I

.field public v_page_size:I

.field public v_pageins:I

.field public v_pageouts:I

.field public v_pfree:I

.field public v_pgpgin:I

.field public v_pgpgout:I

.field public v_pswpin:I

.field public v_pswpout:I

.field public v_reactivated:I

.field public v_rev:I

.field public v_scan:I

.field public v_soft:I

.field public v_swpin:I

.field public v_swpout:I

.field public v_swtch:I

.field public v_syscall:I

.field public v_trap:I

.field public v_vm_faults:I

.field public v_wire_count:I

.field public v_zfod:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
