.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "RecordCount",
        "Entries"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSA_FOREST_TRUST_INFORMATION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION$ByReference;
    }
.end annotation


# instance fields
.field public Entries:Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD$ByReference;

.field public RecordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntries()[Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;->Entries:Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD$ByReference;

    iget v1, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_INFORMATION;->RecordCount:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD$ByReference;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;

    check-cast v0, [Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;

    return-object v0
.end method
