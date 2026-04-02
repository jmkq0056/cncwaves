.class public Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;
.super Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;
.source "BaseTSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/BaseTSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIZE_T"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;-><init>(J)V

    return-void
.end method
