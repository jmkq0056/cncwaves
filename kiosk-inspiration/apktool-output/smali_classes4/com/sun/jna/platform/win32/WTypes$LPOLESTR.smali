.class public Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;
.super Lcom/sun/jna/PointerType;
.source "WTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LPOLESTR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WTypes$LPOLESTR$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 263
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sget v3, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
