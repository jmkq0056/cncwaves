.class public final Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetPinPadButtonsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;",
        "()V",
        "backspace",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "cancel",
        "eight",
        "enter",
        "five",
        "four",
        "nine",
        "one",
        "seven",
        "six",
        "three",
        "two",
        "zero",
        "build",
        "sdk-protos_release"
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
.field public backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

.field public zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final backspace(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->build()Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;
    .locals 15

    .line 337
    new-instance v0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;

    .line 338
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 339
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 340
    iget-object v3, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 341
    iget-object v4, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 342
    iget-object v5, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 343
    iget-object v6, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 344
    iget-object v7, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 345
    iget-object v8, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 346
    iget-object v9, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 347
    iget-object v10, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 348
    iget-object v11, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->backspace:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 349
    iget-object v12, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 350
    iget-object v13, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    .line 351
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v14

    .line 337
    invoke-direct/range {v0 .. v14}, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest;-><init>(Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lcom/stripe/bbpos/sdk/ButtonCoordinates;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cancel(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->cancel:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final eight(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->eight:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final enter(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->enter:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final five(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->five:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final four(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->four:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final nine(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->nine:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final one(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->one:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final seven(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->seven:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final six(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->six:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final three(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->three:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final two(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->two:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method

.method public final zero(Lcom/stripe/bbpos/sdk/ButtonCoordinates;)Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/SetPinPadButtonsRequest$Builder;->zero:Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    return-object p0
.end method
