.class public Lcom/sun/jna/platform/unix/X11$XInputClassInfoByReference;
.super Lcom/sun/jna/Structure;
.source "X11.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "input_class",
        "event_type_base"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XInputClassInfoByReference"
.end annotation


# instance fields
.field public event_type_base:B

.field public input_class:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
