.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0014\u0010\u0017\u001a\u00020\u00002\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "()V",
        "address",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;",
        "custom_text",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;",
        "email",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;",
        "numeric",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;",
        "phone",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;",
        "signature",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;",
        "skipped",
        "text",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;",
        "toggles",
        "",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
        "type",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;",
        "build",
        "terminal_release"
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
.field public address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

.field public custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

.field public email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

.field public numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

.field public phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

.field public required:Z

.field public selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

.field public signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

.field public skipped:Z

.field public text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

.field public toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 627
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 660
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final address(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    const/4 p1, 0x0

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 761
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;
    .locals 14

    .line 765
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;

    .line 766
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    .line 767
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    .line 768
    iget-boolean v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->required:Z

    .line 769
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 770
    iget-object v5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 771
    iget-object v6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 772
    iget-object v7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 773
    iget-object v8, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 774
    iget-object v9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 775
    iget-object v10, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    .line 776
    iget-boolean v11, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->skipped:Z

    .line 777
    iget-object v12, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->toggles:Ljava/util/List;

    .line 778
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v13

    .line 765
    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;-><init>(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_text(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;

    return-object p0
.end method

.method public final email(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    const/4 p1, 0x0

    .line 723
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 724
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 725
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final numeric(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    const/4 p1, 0x0

    .line 745
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 746
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final phone(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final required(Z)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 673
    iput-boolean p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->required:Z

    return-object p0
.end method

.method public final selection(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    const/4 p1, 0x0

    .line 690
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 692
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final signature(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    const/4 p1, 0x0

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final skipped(Z)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 678
    iput-boolean p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->skipped:Z

    return-object p0
.end method

.method public final text(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->text:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;

    const/4 p1, 0x0

    .line 734
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->selection:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->signature:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;

    .line 736
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->phone:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;

    .line 737
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->email:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;

    .line 738
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;

    .line 739
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->address:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;

    return-object p0
.end method

.method public final toggles(Ljava/util/List;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;",
            ">;)",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;->type:Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;

    return-object p0
.end method
