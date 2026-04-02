.class public Lcom/sun/jna/platform/win32/NTSecApi$PLSA_UNICODE_STRING;
.super Ljava/lang/Object;
.source "NTSecApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/NTSecApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLSA_UNICODE_STRING"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/NTSecApi$PLSA_UNICODE_STRING$ByReference;
    }
.end annotation


# instance fields
.field public s:Lcom/sun/jna/platform/win32/NTSecApi$LSA_UNICODE_STRING$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
