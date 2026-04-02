.class public Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BSTRByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 159
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->setValue(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;
    .locals 4

    .line 167
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    return-void
.end method
