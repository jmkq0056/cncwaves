.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "HealthMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthMetric.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthMetric.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,952:1\n463#2,7:953\n1#3:960\n*S KotlinDebug\n*F\n+ 1 HealthMetric.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1\n*L\n880#1:953,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 796
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/health/health_metric_model.proto"

    .line 790
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.health.HealthMetric"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 40

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    .line 955
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v21, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 899
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 898
    :pswitch_0
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    goto/16 :goto_1

    .line 897
    :pswitch_1
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 896
    :pswitch_2
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_1

    .line 895
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_1

    .line 894
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 893
    :pswitch_5
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 892
    :pswitch_6
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 891
    :pswitch_7
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 890
    :pswitch_8
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 889
    :pswitch_9
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 888
    :pswitch_a
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 887
    :pswitch_b
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 886
    :pswitch_c
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 885
    :pswitch_d
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 884
    :pswitch_e
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 883
    :pswitch_f
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    .line 882
    :pswitch_10
    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_1
    move-object/from16 v4, v21

    goto/16 :goto_0

    .line 959
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v39

    move-object/from16 v3, v21

    .line 902
    new-instance v21, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    .line 903
    move-object/from16 v22, v20

    check-cast v22, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    .line 904
    move-object/from16 v23, v3

    check-cast v23, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    .line 905
    move-object/from16 v24, v5

    check-cast v24, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    .line 906
    move-object/from16 v25, v6

    check-cast v25, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    .line 907
    move-object/from16 v26, v7

    check-cast v26, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    .line 908
    move-object/from16 v27, v8

    check-cast v27, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    .line 909
    move-object/from16 v28, v9

    check-cast v28, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    .line 910
    move-object/from16 v29, v10

    check-cast v29, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    .line 911
    move-object/from16 v30, v11

    check-cast v30, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    .line 912
    move-object/from16 v31, v12

    check-cast v31, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    .line 913
    move-object/from16 v32, v13

    check-cast v32, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    .line 914
    move-object/from16 v33, v14

    check-cast v33, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    .line 915
    move-object/from16 v34, v15

    check-cast v34, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    .line 916
    move-object/from16 v35, v16

    check-cast v35, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    .line 917
    move-object/from16 v36, v17

    check-cast v36, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    .line 918
    move-object/from16 v37, v18

    check-cast v37, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    .line 919
    move-object/from16 v38, v19

    check-cast v38, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    .line 902
    invoke-direct/range {v21 .. v39}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)V

    return-object v21

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 790
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 822
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 823
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 824
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 825
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 826
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 827
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 829
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 830
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 831
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 832
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 833
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 834
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 835
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 836
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 837
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 838
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 790
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 843
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 844
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 845
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 846
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 847
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 848
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 849
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 850
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 851
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 852
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 853
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 854
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 855
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 856
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 857
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 858
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 859
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 790
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 800
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 802
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 804
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 806
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 807
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 811
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 814
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 815
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 790
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;
    .locals 20

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iget-object v0, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->bbpos:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 926
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->payment_collection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 927
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->application:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 928
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->http_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 929
    :goto_3
    iget-object v6, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 930
    :goto_4
    iget-object v7, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->rpc_server:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 931
    :goto_5
    iget-object v8, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->device_config:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    .line 932
    :goto_6
    iget-object v9, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    .line 933
    :goto_7
    iget-object v10, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->analytics:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    .line 934
    :goto_8
    iget-object v11, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->connectivity:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;

    goto :goto_9

    :cond_9
    const/4 v11, 0x0

    .line 935
    :goto_9
    iget-object v12, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->offline:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    .line 936
    :goto_a
    iget-object v13, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->updater_launch_app:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    .line 937
    :goto_b
    iget-object v14, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->server_driven:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    if-eqz v14, :cond_c

    sget-object v15, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v15, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    .line 938
    :goto_c
    iget-object v15, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->tipping:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    if-eqz v15, :cond_d

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v15}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;

    move-object v15, v2

    goto :goto_d

    :cond_d
    const/4 v15, 0x0

    .line 939
    :goto_d
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->forms:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    move-object/from16 v17, v0

    if-eqz v2, :cond_e

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    .line 940
    :goto_e
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->handoff:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    move-object/from16 v18, v0

    if-eqz v2, :cond_f

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    .line 941
    :goto_f
    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->passthrough:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    if-eqz v2, :cond_10

    move-object/from16 v19, v0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;

    move-object/from16 v0, v17

    move-object/from16 v17, v19

    goto :goto_10

    :cond_10
    move-object/from16 v2, v17

    move-object/from16 v17, v0

    move-object v0, v2

    const/4 v2, 0x0

    .line 942
    :goto_10
    sget-object v19, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 v16, v18

    move-object/from16 v18, v2

    move-object v2, v0

    .line 924
    invoke-virtual/range {v1 .. v19}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/application/ApplicationDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/httpserver/HttpServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/rpcserver/RpcServerDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/deviceconfig/DeviceConfigDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/analytics/AnalyticsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updaterlaunchapp/UpdaterLaunchAppDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/serverdriven/ServerDrivenDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/TippingDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/handoff/HandoffDomain;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 790
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;

    move-result-object p1

    return-object p1
.end method
