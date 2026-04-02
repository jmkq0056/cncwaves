.class public Lcom/sun/jna/platform/win32/WinNT$LUID;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "LowPart",
        "HighPart"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LUID"
.end annotation


# instance fields
.field public HighPart:I

.field public LowPart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1134
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
