.class public Lcom/sun/jna/platform/unix/Resource$Rlimit;
.super Lcom/sun/jna/Structure;
.source "Resource.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "rlim_cur",
        "rlim_max"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rlimit"
.end annotation


# instance fields
.field public rlim_cur:J

.field public rlim_max:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
