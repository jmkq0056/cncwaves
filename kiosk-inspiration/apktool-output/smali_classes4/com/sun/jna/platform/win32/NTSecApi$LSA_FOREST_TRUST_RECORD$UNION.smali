.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION;
.super Lcom/sun/jna/Union;
.source "NTSecApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UNION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_RECORD$UNION$ByReference;
    }
.end annotation


# instance fields
.field public Data:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_BINARY_DATA;

.field public DomainInfo:Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_DOMAIN_INFO;

.field public TopLevelName:Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method
