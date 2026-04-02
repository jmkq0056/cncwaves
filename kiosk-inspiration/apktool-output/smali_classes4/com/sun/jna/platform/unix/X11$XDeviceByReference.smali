.class public Lcom/sun/jna/platform/unix/X11$XDeviceByReference;
.super Lcom/sun/jna/Structure;
.source "X11.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "device_id",
        "num_classes",
        "classes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDeviceByReference"
.end annotation


# instance fields
.field public classes:Lcom/sun/jna/platform/unix/X11$XInputClassInfoByReference;

.field public device_id:Lcom/sun/jna/platform/unix/X11$XID;

.field public num_classes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
