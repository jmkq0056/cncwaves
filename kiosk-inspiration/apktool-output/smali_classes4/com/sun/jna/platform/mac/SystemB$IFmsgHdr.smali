.class public Lcom/sun/jna/platform/mac/SystemB$IFmsgHdr;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ifm_msglen",
        "ifm_version",
        "ifm_type",
        "ifm_addrs",
        "ifm_flags",
        "ifm_index",
        "ifm_data"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFmsgHdr"
.end annotation


# instance fields
.field public ifm_addrs:I

.field public ifm_data:Lcom/sun/jna/platform/mac/SystemB$IFdata;

.field public ifm_flags:I

.field public ifm_index:S

.field public ifm_msglen:S

.field public ifm_type:B

.field public ifm_version:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
