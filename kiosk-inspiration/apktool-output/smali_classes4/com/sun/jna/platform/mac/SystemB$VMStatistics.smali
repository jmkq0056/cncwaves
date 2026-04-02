.class public Lcom/sun/jna/platform/mac/SystemB$VMStatistics;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "free_count",
        "active_count",
        "inactive_count",
        "wire_count",
        "zero_fill_count",
        "reactivations",
        "pageins",
        "pageouts",
        "faults",
        "cow_faults",
        "lookups",
        "hits",
        "purgeable_count",
        "purges",
        "speculative_count"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMStatistics"
.end annotation


# instance fields
.field public active_count:I

.field public cow_faults:I

.field public faults:I

.field public free_count:I

.field public hits:I

.field public inactive_count:I

.field public lookups:I

.field public pageins:I

.field public pageouts:I

.field public purgeable_count:I

.field public purges:I

.field public reactivations:I

.field public speculative_count:I

.field public wire_count:I

.field public zero_fill_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
