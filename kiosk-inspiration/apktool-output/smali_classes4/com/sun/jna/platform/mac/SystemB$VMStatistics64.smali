.class public Lcom/sun/jna/platform/mac/SystemB$VMStatistics64;
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
        "purges",
        "purgeable_count",
        "speculative_count",
        "decompressions",
        "compressions",
        "swapins",
        "swapouts",
        "compressor_page_count",
        "throttled_count",
        "external_page_count",
        "internal_page_count",
        "total_uncompressed_pages_in_compressor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMStatistics64"
.end annotation


# instance fields
.field public active_count:I

.field public compressions:J

.field public compressor_page_count:I

.field public cow_faults:J

.field public decompressions:J

.field public external_page_count:I

.field public faults:J

.field public free_count:I

.field public hits:J

.field public inactive_count:I

.field public internal_page_count:I

.field public lookups:J

.field public pageins:J

.field public pageouts:J

.field public purgeable_count:I

.field public purges:J

.field public reactivations:J

.field public speculative_count:I

.field public swapins:J

.field public swapouts:J

.field public throttled_count:I

.field public total_uncompressed_pages_in_compressor:J

.field public wire_count:I

.field public zero_fill_count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
