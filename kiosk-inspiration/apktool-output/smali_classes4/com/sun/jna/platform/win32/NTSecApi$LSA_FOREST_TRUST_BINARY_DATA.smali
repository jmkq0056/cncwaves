.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_BINARY_DATA;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "Buffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSA_FOREST_TRUST_BINARY_DATA"
.end annotation


# instance fields
.field public Buffer:Lcom/sun/jna/Pointer;

.field public Length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
