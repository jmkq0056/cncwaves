.class public Lcom/stripe/bbpos/bbdevice/CAPK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public checksum:Ljava/lang/String;

.field public exponent:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public modulus:Ljava/lang/String;

.field public rid:Ljava/lang/String;

.field public size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->location:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->rid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->modulus:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->checksum:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->size:Ljava/lang/String;

    return-void
.end method
