.class public Lcom/sun/jna/platform/win32/WTypes$VARTYPE;
.super Lcom/sun/jna/platform/win32/WinDef$USHORT;
.source "WTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARTYPE"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 294
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$USHORT;-><init>(J)V

    return-void
.end method
