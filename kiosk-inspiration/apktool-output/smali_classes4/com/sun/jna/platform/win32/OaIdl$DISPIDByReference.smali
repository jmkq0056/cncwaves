.class public Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DISPIDByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 299
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;-><init>(Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V
    .locals 1

    .line 303
    sget v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->setValue(Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/OaIdl$DISPID;
    .locals 4

    .line 312
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V
    .locals 3

    .line 308
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
