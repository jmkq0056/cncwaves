.class public Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "Wdm.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "LastWriteTime",
        "TitleIndex",
        "NameLength",
        "Name"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Wdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEY_BASIC_INFORMATION"
.end annotation


# instance fields
.field public LastWriteTime:J

.field public Name:[C

.field public NameLength:I

.field public TitleIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    add-int/lit8 p1, p1, -0x10

    .line 69
    iput p1, p0, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->NameLength:I

    .line 70
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->Name:[C

    .line 71
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->allocateMemory()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 76
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->read()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->Name:[C

    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 90
    iget v0, p0, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->NameLength:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->Name:[C

    .line 91
    const-string v0, "Name"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Wdm$KEY_BASIC_INFORMATION;->readField(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
