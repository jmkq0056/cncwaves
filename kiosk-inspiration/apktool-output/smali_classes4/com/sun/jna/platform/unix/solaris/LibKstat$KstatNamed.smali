.class public Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;
.super Lcom/sun/jna/Structure;
.source "LibKstat.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "name",
        "data_type",
        "value"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/solaris/LibKstat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KstatNamed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;
    }
.end annotation


# instance fields
.field public data_type:B

.field public name:[B

.field public value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x1f

    .line 160
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->name:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x1f

    .line 160
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->name:[B

    .line 196
    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->read()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 202
    iget-byte v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->data_type:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;

    const-class v1, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION$STR;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->setType(Ljava/lang/Class;)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed;->value:Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;

    invoke-virtual {v0}, Lcom/sun/jna/platform/unix/solaris/LibKstat$KstatNamed$UNION;->read()V

    return-void
.end method
