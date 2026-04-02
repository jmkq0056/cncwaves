.class public Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;
.super Lcom/sun/jna/platform/win32/WinDef$DWORD;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HREFTYPE"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1831
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1835
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    return-void
.end method
