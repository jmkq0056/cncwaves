.class public Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR$ByReference;
.super Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;
.source "OaIdl.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1234
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1238
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1239
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR$ByReference;->read()V

    return-void
.end method
