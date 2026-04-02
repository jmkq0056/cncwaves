.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_PARA;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwFlags",
        "pvExtraPolicyPara"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_CHAIN_POLICY_PARA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_PARA$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:I

.field public dwFlags:I

.field public pvExtraPolicyPara:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
