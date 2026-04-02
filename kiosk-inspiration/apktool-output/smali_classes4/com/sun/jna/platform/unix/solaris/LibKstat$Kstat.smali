.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;
.super Lcom/sun/jna/Structure;
.source "LibKstat.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ks_crtime",
        "ks_next",
        "ks_kid",
        "ks_module",
        "ks_resv",
        "ks_instance",
        "ks_name",
        "ks_type",
        "ks_class",
        "ks_flags",
        "ks_data",
        "ks_ndata",
        "ks_data_size",
        "ks_snaptime",
        "ks_update",
        "ks_private",
        "ks_snapshot",
        "ks_lock"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kstat"
.end annotation


# instance fields
.field public ks_class:[B

.field public ks_crtime:J

.field public ks_data:Lcom/sun/jna/Pointer;

.field public ks_data_size:J

.field public ks_flags:B

.field public ks_instance:I

.field public ks_kid:I

.field public ks_lock:Lcom/sun/jna/Pointer;

.field public ks_module:[B

.field public ks_name:[B

.field public ks_ndata:I

.field public ks_next:Lcom/sun/jna/Pointer;

.field public ks_private:Lcom/sun/jna/Pointer;

.field public ks_resv:B

.field public ks_snapshot:I

.field public ks_snaptime:J

.field public ks_type:B

.field public ks_update:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x1f

    .line 112
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->ks_module:[B

    .line 118
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->ks_name:[B

    .line 122
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->ks_class:[B

    return-void
.end method


# virtual methods
.method public next()Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->ks_next:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;

    invoke-direct {v0}, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->ks_next:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->useMemory(Lcom/sun/jna/Pointer;)V

    .line 149
    invoke-virtual {v0}, Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;->read()V

    return-object v0
.end method
