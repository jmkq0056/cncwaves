.class public Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;
.super Lcom/sun/jna/platform/win32/OaIdl$DISPID;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MEMBERID"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    return-void
.end method
