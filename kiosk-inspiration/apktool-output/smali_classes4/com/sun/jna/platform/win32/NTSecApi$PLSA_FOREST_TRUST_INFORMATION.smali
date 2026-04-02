.class public Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "fti"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLSA_FOREST_TRUST_INFORMATION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_INFORMATION$ByReference;
    }
.end annotation


# instance fields
.field public fti:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
