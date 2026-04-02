.class public Lcom/sun/jna/platform/unix/X11$XTextProperty;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "value",
        "encoding",
        "format",
        "nitems"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XTextProperty"
.end annotation


# instance fields
.field public encoding:Lcom/sun/jna/platform/unix/X11$Atom;

.field public format:I

.field public nitems:Lcom/sun/jna/NativeLong;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
