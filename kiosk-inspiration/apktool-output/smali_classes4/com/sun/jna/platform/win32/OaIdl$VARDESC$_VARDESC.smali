.class public Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$VARDESC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_VARDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC$ByReference;
    }
.end annotation


# instance fields
.field public lpvarValue:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

.field public oInst:Lcom/sun/jna/NativeLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1407
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1408
    const-string v0, "lpvarValue"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->setType(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/NativeLong;)V
    .locals 0

    .line 1429
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1430
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->oInst:Lcom/sun/jna/NativeLong;

    .line 1431
    const-string p1, "oInst"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1413
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1414
    const-string p1, "lpvarValue"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->setType(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;)V
    .locals 0

    .line 1423
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1424
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->lpvarValue:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    .line 1425
    const-string p1, "lpvarValue"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->setType(Ljava/lang/String;)V

    return-void
.end method
