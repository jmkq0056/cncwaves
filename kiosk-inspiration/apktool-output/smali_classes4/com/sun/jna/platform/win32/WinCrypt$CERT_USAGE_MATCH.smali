.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwType",
        "Usage"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_USAGE_MATCH"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH$ByReference;
    }
.end annotation


# instance fields
.field public Usage:Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;

.field public dwType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
