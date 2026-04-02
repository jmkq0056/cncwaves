.class public final Lcom/stripe/ext/MongoModelConfiguration$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MongoModelConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoModelConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/MongoModelConfiguration;",
        "Lcom/stripe/ext/MongoModelConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/ext/MongoModelConfiguration$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/MongoModelConfiguration;",
        "()V",
        "collection_name",
        "",
        "data_owner",
        "dataset_usage",
        "enable_model_version",
        "",
        "Ljava/lang/Boolean;",
        "enable_snapshot_validation",
        "owning_project",
        "presto_enabled",
        "redshift_enabled",
        "ruby_type",
        "schema_name",
        "table_name",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;",
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
.field public collection_name:Ljava/lang/String;

.field public data_owner:Ljava/lang/String;

.field public dataset_usage:Ljava/lang/String;

.field public enable_model_version:Ljava/lang/Boolean;

.field public enable_snapshot_validation:Ljava/lang/Boolean;

.field public owning_project:Ljava/lang/String;

.field public presto_enabled:Ljava/lang/Boolean;

.field public redshift_enabled:Ljava/lang/Boolean;

.field public ruby_type:Ljava/lang/String;

.field public schema_name:Ljava/lang/String;

.field public table_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/stripe/ext/MongoModelConfiguration$Builder;->build()Lcom/stripe/ext/MongoModelConfiguration;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/MongoModelConfiguration;
    .locals 13

    .line 354
    new-instance v0, Lcom/stripe/ext/MongoModelConfiguration;

    .line 355
    iget-object v1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->ruby_type:Ljava/lang/String;

    .line 356
    iget-object v2, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->collection_name:Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->table_name:Ljava/lang/String;

    .line 358
    iget-object v4, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->owning_project:Ljava/lang/String;

    .line 359
    iget-object v5, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->presto_enabled:Ljava/lang/Boolean;

    .line 360
    iget-object v6, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->redshift_enabled:Ljava/lang/Boolean;

    .line 361
    iget-object v7, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->schema_name:Ljava/lang/String;

    .line 362
    iget-object v8, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->enable_snapshot_validation:Ljava/lang/Boolean;

    .line 363
    iget-object v9, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->enable_model_version:Ljava/lang/Boolean;

    .line 364
    iget-object v10, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->data_owner:Ljava/lang/String;

    .line 365
    iget-object v11, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->dataset_usage:Ljava/lang/String;

    .line 366
    invoke-virtual {p0}, Lcom/stripe/ext/MongoModelConfiguration$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 354
    invoke-direct/range {v0 .. v12}, Lcom/stripe/ext/MongoModelConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final collection_name(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->collection_name:Ljava/lang/String;

    return-object p0
.end method

.method public final data_owner(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->data_owner:Ljava/lang/String;

    return-object p0
.end method

.method public final dataset_usage(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->dataset_usage:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_model_version(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->enable_model_version:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final enable_snapshot_validation(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->enable_snapshot_validation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final owning_project(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->owning_project:Ljava/lang/String;

    return-object p0
.end method

.method public final presto_enabled(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->presto_enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final redshift_enabled(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->redshift_enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final ruby_type(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->ruby_type:Ljava/lang/String;

    return-object p0
.end method

.method public final schema_name(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->schema_name:Ljava/lang/String;

    return-object p0
.end method

.method public final table_name(Ljava/lang/String;)Lcom/stripe/ext/MongoModelConfiguration$Builder;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/stripe/ext/MongoModelConfiguration$Builder;->table_name:Ljava/lang/String;

    return-object p0
.end method
