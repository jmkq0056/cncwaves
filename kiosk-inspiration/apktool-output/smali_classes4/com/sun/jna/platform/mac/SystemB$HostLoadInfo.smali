.class public Lcom/sun/jna/platform/mac/SystemB$HostLoadInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "avenrun",
        "mach_factor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostLoadInfo"
.end annotation


# instance fields
.field public avenrun:[I

.field public mach_factor:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 97
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/jna/platform/mac/SystemB$HostLoadInfo;->avenrun:[I

    .line 98
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/mac/SystemB$HostLoadInfo;->mach_factor:[I

    return-void
.end method
