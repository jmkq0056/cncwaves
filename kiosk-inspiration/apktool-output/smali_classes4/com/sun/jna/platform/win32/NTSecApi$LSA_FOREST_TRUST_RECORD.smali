.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Flags",
        "ForestTrustType",
        "Time",
        "u"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSA_FOREST_TRUST_RECORD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;,
        Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$ByReference;
    }
.end annotation


# instance fields
.field public Flags:I

.field public ForestTrustType:I

.field public Time:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public u:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 2

    .line 167
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 169
    iget v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;->ForestTrustType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;->u:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_BINARY_DATA;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;->u:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_DOMAIN_INFO;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;->u:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;

    const-class v1, Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;->setType(Ljava/lang/Class;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;->u:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;->read()V

    return-void
.end method
