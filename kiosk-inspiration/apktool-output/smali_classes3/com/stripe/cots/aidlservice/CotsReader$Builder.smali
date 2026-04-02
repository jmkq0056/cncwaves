.class public final Lcom/stripe/cots/aidlservice/CotsReader$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "Lcom/stripe/cots/aidlservice/CotsReader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsReader$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "()V",
        "errorCode",
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        "errorMessage",
        "",
        "isSimulated",
        "",
        "serial",
        "build",
        "proto_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

.field public errorMessage:Ljava/lang/String;

.field public isSimulated:Z

.field public serial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->serial:Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    iput-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 128
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->build()Lcom/stripe/cots/aidlservice/CotsReader;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsReader;
    .locals 6

    .line 153
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsReader;

    .line 154
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->serial:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    .line 156
    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorMessage:Ljava/lang/String;

    .line 157
    iget-boolean v4, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->isSimulated:Z

    .line 158
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/stripe/cots/aidlservice/CotsReader;-><init>(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final errorCode(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Lcom/stripe/cots/aidlservice/CotsReader$Builder;
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    return-object p0
.end method

.method public final errorMessage(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsReader$Builder;
    .locals 1

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final isSimulated(Z)Lcom/stripe/cots/aidlservice/CotsReader$Builder;
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->isSimulated:Z

    return-object p0
.end method

.method public final serial(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsReader$Builder;
    .locals 1

    const-string v0, "serial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsReader$Builder;->serial:Ljava/lang/String;

    return-object p0
.end method
