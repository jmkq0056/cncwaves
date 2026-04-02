.class public Lcom/sun/jna/platform/mac/SystemB$Group;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "gr_name",
        "gr_passwd",
        "gr_gid",
        "gr_mem"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field public gr_gid:I

.field public gr_mem:Lcom/sun/jna/ptr/PointerByReference;

.field public gr_name:Ljava/lang/String;

.field public gr_passwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
