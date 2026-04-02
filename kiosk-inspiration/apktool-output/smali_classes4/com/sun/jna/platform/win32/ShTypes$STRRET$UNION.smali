.class public Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;
.super Lcom/sun/jna/Union;
.source "ShTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShTypes$STRRET;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UNION"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION$ByReference;
    }
.end annotation


# instance fields
.field public cStr:[B

.field public pOleStr:Lcom/sun/jna/platform/win32/WTypes$LPWSTR;

.field public uOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    const/16 v0, 0x104

    .line 52
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;->cStr:[B

    return-void
.end method
