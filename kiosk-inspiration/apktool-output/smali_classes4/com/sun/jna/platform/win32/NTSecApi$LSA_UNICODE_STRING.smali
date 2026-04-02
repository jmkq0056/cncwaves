.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "MaximumLength",
        "Buffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSA_UNICODE_STRING"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING$ByReference;
    }
.end annotation


# instance fields
.field public Buffer:Lcom/sun/jna/Pointer;

.field public Length:S

.field public MaximumLength:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;->Buffer:Lcom/sun/jna/Pointer;

    iget-short v1, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;->Length:S

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v7

    .line 76
    array-length v0, v7

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v7, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;->Buffer:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    :goto_0
    new-instance v4, Lcom/sun/jna/Memory;

    array-length v0, v7

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {v4, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v8, 0x0

    .line 78
    array-length v9, v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/jna/Memory;->write(J[BII)V

    .line 79
    invoke-virtual {v4, v2, v3}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
