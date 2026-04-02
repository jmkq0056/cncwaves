.class public Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;
.super Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;
.source "OaIdl.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;)V
    .locals 1

    .line 449
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;-><init>(Lcom/sun/jna/Pointer;)V

    .line 450
    iget p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;->value:I

    return-void
.end method
