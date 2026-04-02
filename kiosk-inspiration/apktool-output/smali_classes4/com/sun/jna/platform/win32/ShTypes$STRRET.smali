.class public Lcom/sun/jna/platform/win32/ShTypes$STRRET;
.super Lcom/sun/jna/Structure;
.source "ShTypes.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "uType",
        "u"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STRRET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;
    }
.end annotation


# static fields
.field public static final TYPE_CSTR:I = 0x2

.field public static final TYPE_OFFSET:I = 0x1

.field public static final TYPE_WSTR:I


# instance fields
.field public u:Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;

.field public uType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 73
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->read()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 79
    iget v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->uType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->u:Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;

    const-string v1, "pOleStr"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->u:Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;

    const-string v1, "cStr"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->u:Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;

    const-string v1, "uOffset"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;->setType(Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/ShTypes$STRRET;->u:Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/ShTypes$STRRET$UNION;->read()V

    return-void
.end method
