.class public Lcom/sun/jna/platform/win32/WinNT$SECURITY_QUALITY_OF_SERVICE;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Length",
        "ImpersonationLevel",
        "ContextTrackingMode",
        "EffectiveOnly"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SECURITY_QUALITY_OF_SERVICE"
.end annotation


# instance fields
.field public ContextTrackingMode:B

.field public EffectiveOnly:B

.field public ImpersonationLevel:I

.field public Length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3828
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 3862
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_QUALITY_OF_SERVICE;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_QUALITY_OF_SERVICE;->Length:I

    .line 3863
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method
