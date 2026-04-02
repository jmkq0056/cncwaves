.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatCtl;
.super Lcom/sun/jna/Structure;
.source "LibKstat.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "kc_chain_id",
        "kc_chain",
        "kc_kd"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KstatCtl"
.end annotation


# instance fields
.field public kc_chain:Lcom/sun/jna/platform/unix/solaris/LibKstat$Kstat;

.field public kc_chain_id:I

.field public kc_kd:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
