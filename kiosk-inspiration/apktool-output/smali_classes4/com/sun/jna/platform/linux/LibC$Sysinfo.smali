.class public Lcom/sun/jna/platform/linux/LibC$Sysinfo;
.super Lcom/sun/jna/Structure;
.source "LibC.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "uptime",
        "loads",
        "totalram",
        "freeram",
        "sharedram",
        "bufferram",
        "totalswap",
        "freeswap",
        "procs",
        "totalhigh",
        "freehigh",
        "mem_unit",
        "_f"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/linux/LibC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sysinfo"
.end annotation


# static fields
.field private static final PADDING_SIZE:I


# instance fields
.field public _f:[B

.field public bufferram:Lcom/sun/jna/NativeLong;

.field public freehigh:Lcom/sun/jna/NativeLong;

.field public freeram:Lcom/sun/jna/NativeLong;

.field public freeswap:Lcom/sun/jna/NativeLong;

.field public loads:[Lcom/sun/jna/NativeLong;

.field public mem_unit:I

.field public procs:S

.field public sharedram:Lcom/sun/jna/NativeLong;

.field public totalhigh:Lcom/sun/jna/NativeLong;

.field public totalram:Lcom/sun/jna/NativeLong;

.field public totalswap:Lcom/sun/jna/NativeLong;

.field public uptime:Lcom/sun/jna/NativeLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    mul-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x10

    sput v0, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->PADDING_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [Lcom/sun/jna/NativeLong;

    iput-object v0, p0, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->loads:[Lcom/sun/jna/NativeLong;

    .line 64
    sget v0, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->PADDING_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->_f:[B

    return-void
.end method


# virtual methods
.method protected getFieldList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    sget v1, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->PADDING_SIZE:I

    if-nez v1, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 81
    const-string v3, "_f"

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getFieldOrder()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/sun/jna/Structure;->getFieldOrder()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    sget v1, Lcom/sun/jna/platform/linux/LibC$Sysinfo;->PADDING_SIZE:I

    if-nez v1, :cond_0

    .line 93
    const-string v1, "_f"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
