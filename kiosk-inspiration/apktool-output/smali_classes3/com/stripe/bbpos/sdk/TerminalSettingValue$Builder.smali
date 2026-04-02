.class public final Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TerminalSettingValue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/TerminalSettingValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "()V",
        "hexadecimal",
        "",
        "status",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;",
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
.field public hexadecimal:Ljava/lang/String;

.field public status:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->build()Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .locals 4

    .line 116
    new-instance v0, Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 117
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->status:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    .line 118
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->hexadecimal:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 116
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final hexadecimal(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->hexadecimal:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->status:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    return-object p0
.end method

.method public final status(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;)Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->status:Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;->hexadecimal:Ljava/lang/String;

    return-object p0
.end method
