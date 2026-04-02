.class final Lcom/stripe/bbpos/bbdevice/ota/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/stripe/bbpos/bbdevice/ota/b0;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/stripe/bbpos/bbdevice/ota/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b0;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ota/b0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/stripe/bbpos/bbdevice/ota/b0;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b0;->a(Lcom/stripe/bbpos/bbdevice/ota/b0;)I

    move-result p1

    return p1
.end method
