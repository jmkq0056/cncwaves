.class public Lcom/sun/jna/platform/unix/X11$XErrorEvent;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "type",
        "display",
        "serial",
        "error_code",
        "request_code",
        "minor_code",
        "resourceid"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XErrorEvent"
.end annotation


# instance fields
.field public display:Lcom/sun/jna/platform/unix/X11$Display;

.field public error_code:B

.field public minor_code:B

.field public request_code:B

.field public resourceid:Lcom/sun/jna/platform/unix/X11$XID;

.field public serial:Lcom/sun/jna/NativeLong;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1875
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
