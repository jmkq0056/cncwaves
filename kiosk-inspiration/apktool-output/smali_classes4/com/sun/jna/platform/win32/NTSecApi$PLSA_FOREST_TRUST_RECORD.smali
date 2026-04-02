.class public Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "tr"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLSA_FOREST_TRUST_RECORD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$PLSA_FOREST_TRUST_RECORD$ByReference;
    }
.end annotation


# instance fields
.field public tr:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
