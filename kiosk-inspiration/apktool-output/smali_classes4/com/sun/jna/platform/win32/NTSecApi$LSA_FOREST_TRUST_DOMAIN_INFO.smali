.class public Lcom/sun/jna/platform/win32/NTSecApi$LSA_FOREST_TRUST_DOMAIN_INFO;
.super Lcom/sun/jna/Structure;
.source "NTSecApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Sid",
        "DnsName",
        "NetbiosName"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSA_FOREST_TRUST_DOMAIN_INFO"
.end annotation


# instance fields
.field public DnsName:Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;

.field public NetbiosName:Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING;

.field public Sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
