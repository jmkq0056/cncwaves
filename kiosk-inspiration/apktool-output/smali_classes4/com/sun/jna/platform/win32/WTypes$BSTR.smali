.class public Lcom/sun/jna/platform/win32/WTypes$BSTR;
.super Lcom/sun/jna/PointerType;
.source "WTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BSTR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 5

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, ""

    return-object v0

    :cond_0
    const-wide/16 v1, -0x4

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    .line 140
    new-instance v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    const-string v1, "UTF-16LE"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-16LE charset is not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    .line 117
    const-string p1, ""

    .line 120
    :cond_0
    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 123
    new-instance v1, Lcom/sun/jna/Memory;

    array-length p1, v4

    add-int/lit8 p1, p1, 0x6

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 124
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->clear()V

    .line 125
    array-length p1, v4

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/sun/jna/Memory;->setInt(JI)V

    .line 126
    array-length v6, v4

    const-wide/16 v2, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Memory;->write(J[BII)V

    const-wide/16 v2, 0x4

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Memory;->share(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->setPointer(Lcom/sun/jna/Pointer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-16LE charset is not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
