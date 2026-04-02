.class public Lcom/sun/jna/platform/win32/Sspi$SECURITY_INTEGER;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwLower",
        "dwUpper"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SECURITY_INTEGER"
.end annotation


# instance fields
.field public dwLower:I

.field public dwUpper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
