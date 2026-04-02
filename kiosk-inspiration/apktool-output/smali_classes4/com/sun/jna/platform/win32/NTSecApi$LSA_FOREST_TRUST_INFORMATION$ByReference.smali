.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION$ByReference;
.super Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;
.source "NTSecApi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;-><init>()V

    return-void
.end method
