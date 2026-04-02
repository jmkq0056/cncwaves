.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwErrorStatus",
        "dwInfoStatus"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_TRUST_STATUS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS$ByReference;
    }
.end annotation


# instance fields
.field public dwErrorStatus:I

.field public dwInfoStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
