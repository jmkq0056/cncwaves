.class public Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION$ByReference;
.super Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;
.source "ShTypes.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;-><init>()V

    return-void
.end method
