.class public Lcom/sun/jna/platform/mac/SystemB$HostCpuLoadInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cpu_ticks"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostCpuLoadInfo"
.end annotation


# instance fields
.field public cpu_ticks:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x4

    .line 92
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$HostCpuLoadInfo;->cpu_ticks:[I

    return-void
.end method
