.class public Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD$ByReference;
.super Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;
.source "NTSecApi.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;-><init>()V

    return-void
.end method
