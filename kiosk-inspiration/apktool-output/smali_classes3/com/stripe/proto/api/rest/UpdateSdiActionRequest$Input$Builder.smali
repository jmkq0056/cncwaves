.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "()V",
        "custom_text",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;",
        "email",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
        "numeric",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;",
        "phone",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;",
        "signature",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;",
        "skipped",
        "text",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;",
        "toggles",
        "",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
        "type",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;",
        "build",
        "internal_release"
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
.field public custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

.field public email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

.field public numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

.field public phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

.field public required:Z

.field public selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

.field public signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

.field public skipped:Z

.field public text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

.field public toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 611
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 613
    sget-object v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    iput-object v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 643
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;
    .locals 13

    .line 731
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;

    .line 732
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    .line 733
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    .line 734
    iget-boolean v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->required:Z

    .line 735
    iget-boolean v4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->skipped:Z

    .line 736
    iget-object v5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 737
    iget-object v6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 738
    iget-object v7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 739
    iget-object v8, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 740
    iget-object v9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 741
    iget-object v10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    .line 742
    iget-object v11, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->toggles:Ljava/util/List;

    .line 743
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 731
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;-><init>(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_text(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;

    return-object p0
.end method

.method public final email(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    const/4 p1, 0x0

    .line 693
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 694
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 696
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    return-object p0
.end method

.method public final numeric(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    const/4 p1, 0x0

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    return-object p0
.end method

.method public final phone(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    const/4 p1, 0x0

    .line 723
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 724
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 725
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    return-object p0
.end method

.method public final required(Z)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 656
    iput-boolean p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->required:Z

    return-object p0
.end method

.method public final selection(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    const/4 p1, 0x0

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    return-object p0
.end method

.method public final signature(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    const/4 p1, 0x0

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    return-object p0
.end method

.method public final skipped(Z)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 661
    iput-boolean p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->skipped:Z

    return-object p0
.end method

.method public final text(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->text:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;

    const/4 p1, 0x0

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->selection:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->signature:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->email:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->numeric:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->phone:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;

    return-object p0
.end method

.method public final toggles(Ljava/util/List;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;",
            ">;)",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 667
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;->type:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;

    return-object p0
.end method
