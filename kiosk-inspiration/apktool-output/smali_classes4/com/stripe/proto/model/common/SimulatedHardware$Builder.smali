.class public final Lcom/stripe/proto/model/common/SimulatedHardware$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SimulatedHardware.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/SimulatedHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/SimulatedHardware;",
        "Lcom/stripe/proto/model/common/SimulatedHardware$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/SimulatedHardware$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/SimulatedHardware;",
        "()V",
        "bbpos_hardware",
        "Lcom/stripe/proto/model/common/BBPosHardware;",
        "cots_hardware",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "verifone_hardware",
        "Lcom/stripe/proto/model/common/VerifoneHardware;",
        "build",
        "common_release"
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
.field public bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

.field public cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

.field public verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bbpos_hardware(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/proto/model/common/SimulatedHardware$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 129
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->build()Lcom/stripe/proto/model/common/SimulatedHardware;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/SimulatedHardware;
    .locals 5

    .line 140
    new-instance v0, Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 142
    iget-object v2, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 143
    iget-object v3, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 144
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 140
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/SimulatedHardware;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cots_hardware(Lcom/stripe/proto/model/common/COTSHardware;)Lcom/stripe/proto/model/common/SimulatedHardware$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    return-object p0
.end method

.method public final verifone_hardware(Lcom/stripe/proto/model/common/VerifoneHardware;)Lcom/stripe/proto/model/common/SimulatedHardware$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/model/common/SimulatedHardware$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    return-object p0
.end method
