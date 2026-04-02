.class public Lcom/sun/jna/platform/win32/OaIdl$DISPID;
.super Lcom/sun/jna/platform/win32/WinDef$LONG;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DISPID"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    return-void
.end method
