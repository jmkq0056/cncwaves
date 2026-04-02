.class public final Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle$Companion;
.super Ljava/lang/Object;
.source "ResourceIdPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle$Companion;",
        "",
        "()V",
        "ADAPTER",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;",
        "fromValue",
        "value",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const/4 p1, 0x0

    return-object p1

    .line 1587
    :pswitch_0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IOT_MANAGE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1720
    :pswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MRI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1719
    :pswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLING_SUBSCRIPTIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1604
    :pswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TINK_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1718
    :pswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLING_TIME:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1717
    :pswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_WORKFLOW_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1716
    :pswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BOOKS_ORCHESTRATOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1715
    :pswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BNZ_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1714
    :pswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->COSTPLUS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1713
    :pswitch_9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CAPABILITY_POLICY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1586
    :pswitch_a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TERMINALAUTH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1585
    :pswitch_b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IOT_RELAY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1712
    :pswitch_c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CRYPTO_EXCHANGE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1711
    :pswitch_d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ENFORCEMENT_PLATFORM:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1709
    :pswitch_e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CUSTOMER_FRAUD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1708
    :pswitch_f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->KAFKA_CONTROL_PLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1583
    :pswitch_10
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TERMINALAPPSIGNER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1707
    :pswitch_11
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CUSTOMERS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1706
    :pswitch_12
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARTOGRAPHER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1705
    :pswitch_13
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RUBY_SERVICES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1704
    :pswitch_14
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SOLBOOK:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1703
    :pswitch_15
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->AFFIRM_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1702
    :pswitch_16
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HADOOP_DECOM:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1699
    :pswitch_17
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TRAFFIC_TEST_SERVER_HORIZON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1698
    :pswitch_18
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->VINEYARD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1697
    :pswitch_19
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYMENT_RECORDS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1693
    :pswitch_1a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLING_USAGE_EVENT_INGESTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1692
    :pswitch_1b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLING_USAGE_EVENT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1691
    :pswitch_1c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_API:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1690
    :pswitch_1d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ISSUING_AUTHORIZATION_VALIDATOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1689
    :pswitch_1e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HUBBLE_EDGE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1686
    :pswitch_1f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_GROUPS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1685
    :pswitch_20
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->APICORE_SAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1683
    :pswitch_21
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RISK_RULES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1681
    :pswitch_22
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MERGEQ:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1680
    :pswitch_23
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MASTERCARD_SEND_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1679
    :pswitch_24
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->API_AUTH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1678
    :pswitch_25
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLING_WFWORKER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1677
    :pswitch_26
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ISSUING_SPENDING_CONTROLS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1676
    :pswitch_27
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TAILOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1833
    :sswitch_0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->JAVA_TESTBED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1748
    :sswitch_1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BORING_TEST_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1734
    :sswitch_2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FILES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1859
    :sswitch_3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MECHANIC_CONTROL_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1670
    :sswitch_4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYMENT_METHODS_VERSION_TWO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1774
    :sswitch_5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EFI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1749
    :sswitch_6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HENSON_TEST_SUBJECT_HORIZON_SHAREDMSP:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1784
    :sswitch_7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TEST_RANDOM_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1810
    :sswitch_8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MEMENTOSRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1853
    :sswitch_9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WEBAUTHN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1816
    :sswitch_a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DATASTORE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1660
    :sswitch_b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FRAUD_SAFETY_MONITOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1673
    :sswitch_c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SURVEYOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1805
    :sswitch_d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->INVOICING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1659
    :sswitch_e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CLIENT_METADATA_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1843
    :sswitch_f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GPTN_OLAP_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1730
    :sswitch_10
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SECURITY_DEMO_HORIZON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1819
    :sswitch_11
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SEARCH_CONTROL_PLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1818
    :sswitch_12
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SEARCH_INGEST:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1855
    :sswitch_13
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SCENARIO_COLLECTIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1694
    :sswitch_14
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->JAVAEXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1611
    :sswitch_15
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CASHAPP_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1823
    :sswitch_16
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->REVENUE_MANAGEMENT_PAYMENTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1667
    :sswitch_17
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DISPUTE_INTERCHANGE_BOOKKEEPING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1764
    :sswitch_18
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EXPERIENCE_ENGINE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1856
    :sswitch_19
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DATA_ANONYMIZATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1813
    :sswitch_1a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SRR_AUTOMATION_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1812
    :sswitch_1b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SRR_AUTOMATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1815
    :sswitch_1c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->VPS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1814
    :sswitch_1d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->VPS_MGMT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1610
    :sswitch_1e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MOBILEPAY_VIPPS_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1779
    :sswitch_1f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PMONBOARDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1820
    :sswitch_20
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WIDGET_FACTORY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1647
    :sswitch_21
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EVENT_ENRICHMENT_QS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1836
    :sswitch_22
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TRANSMISSION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1835
    :sswitch_23
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SFTP:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1804
    :sswitch_24
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLPAY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1801
    :sswitch_25
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SCENARIOS_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1811
    :sswitch_26
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PROFILES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1760
    :sswitch_27
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ALIPAYPLUS_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1849
    :sswitch_28
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PANDORA_TESTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1609
    :sswitch_29
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SHOPEEPAY_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1700
    :sswitch_2a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TRAFFIC_PERF_TEST_HORIZON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1831
    :sswitch_2b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FEATURES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1726
    :sswitch_2c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SANDBOX_API:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1710
    :sswitch_2d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HENSON_TEST_SUBJECT_HORIZON_LEADER_ELECTED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1841
    :sswitch_2e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OAUTH_CONNECTORS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1840
    :sswitch_2f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DASHPLAT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1756
    :sswitch_30
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_MYSQL:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1688
    :sswitch_31
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->UDIP_TRANSFORMATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1687
    :sswitch_32
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->UDIP_FILE_IMPORT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1682
    :sswitch_33
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CSTT_SERVICE_BAR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1837
    :sswitch_34
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->COSTOPT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1729
    :sswitch_35
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LIQUIDITYENGINE_NEXT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1728
    :sswitch_36
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LIQUIDITYENGINE_V2:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1839
    :sswitch_37
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_USER_LOGIN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1834
    :sswitch_38
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_DATA_PLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1832
    :sswitch_39
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_CONTROL_PLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1652
    :sswitch_3a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RECEIVED_MONEY_IN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1651
    :sswitch_3b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EXCHANGES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1861
    :sswitch_3c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MMS_ORCHESTRATOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1860
    :sswitch_3d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ORIGINATED_MONEY_OUT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1858
    :sswitch_3e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GPTN_ACCOUNTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1684
    :sswitch_3f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FEATURE_FETCHER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1857
    :sswitch_40
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BAAS_AUTH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1854
    :sswitch_41
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIGATO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1852
    :sswitch_42
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BAREBONES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1851
    :sswitch_43
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->STRIPETAX_FILING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1776
    :sswitch_44
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->COMPARTMENTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1817
    :sswitch_45
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CSTT_SERVICE_FOO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1850
    :sswitch_46
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SCB_HTTP_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1701
    :sswitch_47
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DCP_LOADTEST:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1809
    :sswitch_48
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MEMSLO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1808
    :sswitch_49
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MEMLOAD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1830
    :sswitch_4a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FINANCIAL_ACCOUNTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1862
    :sswitch_4b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ONLINEDBONBOARDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1746
    :sswitch_4c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DEPLOYABLE_RESOURCE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1745
    :sswitch_4d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CONSTRAINT_SOLVER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1696
    :sswitch_4e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GSP_AGREEMENTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1695
    :sswitch_4f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GOODS_AND_SERVICES_PLATFORM:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1731
    :sswitch_50
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CASH_PREDICTIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1674
    :sswitch_51
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BANK_ROUTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1826
    :sswitch_52
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WELLS_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1799
    :sswitch_53
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OUTBOUND_TRANSFERS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1722
    :sswitch_54
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ARANEA:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1612
    :sswitch_55
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GOLDMANSACHS_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1829
    :sswitch_56
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LEGAL_ENTITIES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1848
    :sswitch_57
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EVENTBUS_CONTROL_PLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1847
    :sswitch_58
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FINANCIAL_ADDRESSES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1807
    :sswitch_59
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MEMADMIN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1573
    :sswitch_5a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->VENEUR_HORIZON_PROBER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1608
    :sswitch_5b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RECHNUNG_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1838
    :sswitch_5c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->USER_LOGIN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1607
    :sswitch_5d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->KLARNA_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1846
    :sswitch_5e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ACCOUNTS_INTEROP:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1845
    :sswitch_5f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SECURITY_AWS_ISOLATION_GUINEA_PIG:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1844
    :sswitch_60
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ACCOUNTS_DATAPLANE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1842
    :sswitch_61
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IAM_CONTROL_PLANE_SRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1828
    :sswitch_62
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MC_CROSSBORDER_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1827
    :sswitch_63
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->KEYHANDLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1825
    :sswitch_64
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BPI_COORDINATOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1824
    :sswitch_65
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WELLS_ACH_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1822
    :sswitch_66
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GIROCARD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1821
    :sswitch_67
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OLIVERIATRUSTFUNDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1806
    :sswitch_68
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MEMCAR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1803
    :sswitch_69
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BTOB_PAYABLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1802
    :sswitch_6a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PINOT_CONTROL_PLANE_SRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1800
    :sswitch_6b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EVENTBUS_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1798
    :sswitch_6c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OUTBOUND_PAYMENTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1797
    :sswitch_6d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->NOTIFICATIONS_SRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1792
    :sswitch_6e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DIORAMA_ROUTER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1796
    :sswitch_6f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TRANSACTIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1795
    :sswitch_70
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RECEIVED_FLOWS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1794
    :sswitch_71
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GRAPHQL_GATEWAY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1793
    :sswitch_72
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EVENTBUS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1791
    :sswitch_73
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DIORAMA_ASYNC:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1790
    :sswitch_74
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BTG_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1789
    :sswitch_75
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MRI_PLAYGROUND:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1788
    :sswitch_76
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->STRIPETAX_CONTENT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1787
    :sswitch_77
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PROGRAMMABLE_BALANCE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1786
    :sswitch_78
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->STRIPETAX_REPORTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1785
    :sswitch_79
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CONTACTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1783
    :sswitch_7a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MERGEQ_WORKER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1782
    :sswitch_7b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MRI_BRIDGE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1781
    :sswitch_7c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MONSTER_EXPRESS_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1780
    :sswitch_7d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PRODUCT_CATALOG:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1564
    :sswitch_7e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EXAMPLE_NO_LB:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1778
    :sswitch_7f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ONBOARDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1777
    :sswitch_80
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LOGGING_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1775
    :sswitch_81
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ACCOUNTS_UFA:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1773
    :sswitch_82
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DIORAMA:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1772
    :sswitch_83
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FORWARDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1578
    :sswitch_84
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CLEARING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1771
    :sswitch_85
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HDFC_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1770
    :sswitch_86
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->INVOICEBILL:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1769
    :sswitch_87
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BULKIMPORT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1768
    :sswitch_88
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CRYPTO_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1767
    :sswitch_89
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MONGO_SANDBOX:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1766
    :sswitch_8a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PLAYGROUND:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1765
    :sswitch_8b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->QUERY_GATEWAY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1606
    :sswitch_8c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IDEAL_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1763
    :sswitch_8d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TAILOR_APP_SRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1762
    :sswitch_8e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LOADRUNNER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1761
    :sswitch_8f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->UPSTREAM_CONV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1759
    :sswitch_90
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GRABPAY_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1758
    :sswitch_91
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->JURISDICTION_SERVICE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1757
    :sswitch_92
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->INTERVENTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1755
    :sswitch_93
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_SANDBOX_ELECTED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1754
    :sswitch_94
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SIGNALS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1753
    :sswitch_95
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARD_IMAGE_VERIFICATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1752
    :sswitch_96
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MERCHANT_CASH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1751
    :sswitch_97
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_SANDBOX:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1750
    :sswitch_98
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LEDGER_TRACE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1747
    :sswitch_99
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CAPITAL_UNDERWRITING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1744
    :sswitch_9a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SALTO_EXAMPLE_SRV:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1743
    :sswitch_9b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CITI_SDD_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1742
    :sswitch_9c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TRAFFIC_CONTINUOUS_TEST_HORIZON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1741
    :sswitch_9d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->INVOICES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1740
    :sswitch_9e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RPP_TESTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1739
    :sswitch_9f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OLIVEIRA_TRUST_FUNDING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1738
    :sswitch_a0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->REVENUE_RECOVERY_RETRY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1737
    :sswitch_a1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PROMPTPAY_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1736
    :sswitch_a2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RISK_UNDERWRITING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1735
    :sswitch_a3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BR_ANTICIPATIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1733
    :sswitch_a4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->NOTIFICATIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1732
    :sswitch_a5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->OT_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1605
    :sswitch_a6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BTG_PIX_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1727
    :sswitch_a7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CASHFLOWS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1649
    :sswitch_a8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CONSUMER_AUTH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1615
    :sswitch_a9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CLEANSIGS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1572
    :sswitch_aa
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_AVALON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1725
    :sswitch_ab
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SCA_OPTIMIZATIONS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1724
    :sswitch_ac
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYNOW_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1723
    :sswitch_ad
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->AFFOGATO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1603
    :sswitch_ae
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYPAL_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1584
    :sswitch_af
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TERMINALASSETINSPECT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1721
    :sswitch_b0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARDS_NETWORK_TOKENS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1675
    :sswitch_b1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CITI_BPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1672
    :sswitch_b2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SUBMISSION_SCHEDULER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1671
    :sswitch_b3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->IDENTITY_LOOKUP:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1669
    :sswitch_b4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYMENT_METHODS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1664
    :sswitch_b5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_HENSON_ELECTED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1668
    :sswitch_b6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->GATEWAY_SELECTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1666
    :sswitch_b7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SALTO_EXPLANATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1665
    :sswitch_b8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->API_GATEWAY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1663
    :sswitch_b9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_HENSON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1662
    :sswitch_ba
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ATTRIBUTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1661
    :sswitch_bb
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MOVE_CRON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1658
    :sswitch_bc
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SHIELD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1657
    :sswitch_bd
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYFLOWS_PLATFORM:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1656
    :sswitch_be
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RISK_RESERVES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1582
    :sswitch_bf
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TELEMETRY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1655
    :sswitch_c0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->AUTO_DEBIT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1654
    :sswitch_c1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MONEY_IN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1581
    :sswitch_c2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EVENT_CHANNEL:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1653
    :sswitch_c3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ANALYTICS_EVENT_LOGGER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1650
    :sswitch_c4
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FX_RATES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1648
    :sswitch_c5
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CONSUMER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1646
    :sswitch_c6
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_LITMUS_STATELESS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1645
    :sswitch_c7
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_LITMUS_ELECTED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1644
    :sswitch_c8
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MONEYOUT:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1643
    :sswitch_c9
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->LIQUIDITY_ENGINE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1642
    :sswitch_ca
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ACCOUNTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1641
    :sswitch_cb
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ORIGINATED_TRANSFERS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1571
    :sswitch_cc
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_RPC_BENCHMARKING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1580
    :sswitch_cd
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CLIENT_LOGGER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1640
    :sswitch_ce
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WELLS_ACH_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1595
    :sswitch_cf
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->RESOURCE_BUFFER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1639
    :pswitch_28
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BOOKS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1638
    :pswitch_29
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HUBBLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1637
    :pswitch_2a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SALTO_POLICY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1636
    :pswitch_2b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->FP_REPORTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1635
    :pswitch_2c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CANARY_ELECTED:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1634
    :pswitch_2d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARDS_SHIELD:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1633
    :pswitch_2e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARDS_AUTH:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1602
    :pswitch_2f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ECONTEXT_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1601
    :pswitch_30
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BOLETO_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1632
    :pswitch_31
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->NETWORK_COSTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1631
    :pswitch_32
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BOOKKEEPER_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1630
    :pswitch_33
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SALTO_JOBLIB:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1629
    :pswitch_34
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CITADEL:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1628
    :pswitch_35
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYOUTS_CASH_REPORTING:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1627
    :pswitch_36
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYOUTS_VBAN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1626
    :pswitch_37
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYOUTS_INCOMING_TRANSACTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1613
    :pswitch_38
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->INDONESIA_CREDIT_TRANSFERS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1600
    :pswitch_39
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BLIK_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1625
    :pswitch_3a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PRICING_SPEC_MANAGER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1624
    :pswitch_3b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BILLDESK_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1623
    :pswitch_3c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ROLLOUT_CONFIG_TEST_THREE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1622
    :pswitch_3d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ROLLOUT_CONFIG_TEST_TWO:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1621
    :pswitch_3e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ROLLOUT_CONFIG_TEST_ONE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1599
    :pswitch_3f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->WECHATPAY_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1620
    :pswitch_40
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DEPLOY_TEST:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1597
    :pswitch_41
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->AFTERPAY_CLEARPAY_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1598
    :pswitch_42
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BANK_TRANSFERS_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1569
    :pswitch_43
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_DEPLOY:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1619
    :pswitch_44
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->REVENUE_ENGINE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1570
    :pswitch_45
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_SLACK:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1596
    :pswitch_46
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->DUMMY_AUTH_PUSH_FPI:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1618
    :pswitch_47
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BALANCES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1617
    :pswitch_48
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MONETIZATION_COST_INVOICES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1616
    :pswitch_49
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->THREE_D_SECURE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1614
    :pswitch_4a
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->MIRADOR:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1594
    :pswitch_4b
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PMPLATFORM_TXN:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1593
    :pswitch_4c
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PMPLATFORM_RECON:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1592
    :pswitch_4d
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PMPLATFORM_DISTRIBUTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1591
    :pswitch_4e
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->PAYOUTS:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1589
    :pswitch_4f
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->ANTI_ABUSE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1567
    :pswitch_50
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_BENCHMARK:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1562
    :pswitch_51
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EXTERNAL_SERVICE_BUNDLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1588
    :pswitch_52
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TAX:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1574
    :pswitch_53
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BATCH_ACKNOWLEDGE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1577
    :pswitch_54
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BATCH_SUBMISSION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1576
    :pswitch_55
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BATCH_INTERPRETATION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1575
    :pswitch_56
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->BATCH_ASSEMBLER:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1579
    :pswitch_57
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->TERMINAL:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1563
    :pswitch_58
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1561
    :pswitch_59
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1590
    :cond_0
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->CARD_METADATA:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1565
    :cond_1
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_EXAMPLE:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1568
    :cond_2
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->KUBERNETES:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    .line 1566
    :cond_3
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->HORIZON_REMOTE_EXECUTION:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x39
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3e -> :sswitch_cf
        0x3f -> :sswitch_ce
        0x40 -> :sswitch_cd
        0x41 -> :sswitch_cc
        0x42 -> :sswitch_cb
        0x43 -> :sswitch_ca
        0x44 -> :sswitch_c9
        0x45 -> :sswitch_c8
        0x46 -> :sswitch_c7
        0x47 -> :sswitch_c6
        0x48 -> :sswitch_c5
        0x49 -> :sswitch_c4
        0x4a -> :sswitch_c3
        0x4b -> :sswitch_c2
        0x4c -> :sswitch_c1
        0x4d -> :sswitch_c0
        0x4e -> :sswitch_bf
        0x4f -> :sswitch_be
        0x50 -> :sswitch_bd
        0x51 -> :sswitch_bc
        0x52 -> :sswitch_bb
        0x53 -> :sswitch_ba
        0x54 -> :sswitch_b9
        0x55 -> :sswitch_b8
        0x56 -> :sswitch_b7
        0x57 -> :sswitch_b6
        0x58 -> :sswitch_b5
        0x59 -> :sswitch_b4
        0x5a -> :sswitch_b3
        0x5b -> :sswitch_b2
        0x5c -> :sswitch_b1
        0x88 -> :sswitch_b0
        0x89 -> :sswitch_af
        0x8a -> :sswitch_ae
        0x8b -> :sswitch_ad
        0x8c -> :sswitch_ac
        0x8d -> :sswitch_ab
        0x8e -> :sswitch_aa
        0x8f -> :sswitch_a9
        0x90 -> :sswitch_a8
        0x91 -> :sswitch_a7
        0x92 -> :sswitch_a6
        0x93 -> :sswitch_a5
        0x94 -> :sswitch_a4
        0x95 -> :sswitch_a3
        0x96 -> :sswitch_a2
        0x97 -> :sswitch_a1
        0x98 -> :sswitch_a0
        0x99 -> :sswitch_9f
        0x9a -> :sswitch_9e
        0x9b -> :sswitch_9d
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9b
        0x9e -> :sswitch_9a
        0x9f -> :sswitch_99
        0xa0 -> :sswitch_98
        0xa1 -> :sswitch_97
        0xa2 -> :sswitch_96
        0xa3 -> :sswitch_95
        0xa4 -> :sswitch_94
        0xa5 -> :sswitch_93
        0xa6 -> :sswitch_92
        0xa7 -> :sswitch_91
        0xa8 -> :sswitch_90
        0xa9 -> :sswitch_8f
        0xaa -> :sswitch_8e
        0xab -> :sswitch_8d
        0xac -> :sswitch_8c
        0xaf -> :sswitch_8b
        0xb0 -> :sswitch_8a
        0xb1 -> :sswitch_89
        0xb2 -> :sswitch_88
        0xb3 -> :sswitch_87
        0xb4 -> :sswitch_86
        0xb5 -> :sswitch_85
        0xb6 -> :sswitch_84
        0xb7 -> :sswitch_83
        0xb8 -> :sswitch_82
        0xb9 -> :sswitch_81
        0xba -> :sswitch_80
        0xbb -> :sswitch_7f
        0xbc -> :sswitch_7e
        0xbd -> :sswitch_7d
        0xbe -> :sswitch_7c
        0xbf -> :sswitch_7b
        0xc0 -> :sswitch_7a
        0xc1 -> :sswitch_79
        0xc2 -> :sswitch_78
        0xc3 -> :sswitch_77
        0xc4 -> :sswitch_76
        0xc5 -> :sswitch_75
        0xc6 -> :sswitch_74
        0xc7 -> :sswitch_73
        0xc8 -> :sswitch_72
        0xc9 -> :sswitch_71
        0xca -> :sswitch_70
        0xcb -> :sswitch_6f
        0xcc -> :sswitch_6e
        0xcd -> :sswitch_6d
        0xce -> :sswitch_6c
        0xcf -> :sswitch_6b
        0xd0 -> :sswitch_6a
        0xd1 -> :sswitch_69
        0xd2 -> :sswitch_68
        0xd3 -> :sswitch_67
        0xd4 -> :sswitch_66
        0xd5 -> :sswitch_65
        0xd6 -> :sswitch_64
        0xd7 -> :sswitch_63
        0xd8 -> :sswitch_62
        0xd9 -> :sswitch_61
        0xda -> :sswitch_60
        0xdb -> :sswitch_5f
        0xdc -> :sswitch_5e
        0xdd -> :sswitch_5d
        0xde -> :sswitch_5c
        0xdf -> :sswitch_5b
        0xe0 -> :sswitch_5a
        0xe1 -> :sswitch_59
        0xf0 -> :sswitch_58
        0xf1 -> :sswitch_57
        0xf2 -> :sswitch_56
        0xff -> :sswitch_55
        0x100 -> :sswitch_54
        0x104 -> :sswitch_53
        0x118 -> :sswitch_52
        0x11d -> :sswitch_51
        0x122 -> :sswitch_50
        0x127 -> :sswitch_4f
        0x128 -> :sswitch_4e
        0x12b -> :sswitch_4d
        0x12d -> :sswitch_4c
        0x132 -> :sswitch_4b
        0x134 -> :sswitch_4a
        0x14d -> :sswitch_49
        0x14e -> :sswitch_48
        0x158 -> :sswitch_47
        0x162 -> :sswitch_46
        0x16c -> :sswitch_45
        0x172 -> :sswitch_44
        0x189 -> :sswitch_43
        0x18c -> :sswitch_42
        0x190 -> :sswitch_41
        0x191 -> :sswitch_40
        0x198 -> :sswitch_3f
        0x19c -> :sswitch_3e
        0x19d -> :sswitch_3d
        0x19e -> :sswitch_3c
        0x19f -> :sswitch_3b
        0x1a0 -> :sswitch_3a
        0x1a4 -> :sswitch_39
        0x1a5 -> :sswitch_38
        0x1a6 -> :sswitch_37
        0x1b3 -> :sswitch_36
        0x1b4 -> :sswitch_35
        0x1bc -> :sswitch_34
        0x1c3 -> :sswitch_33
        0x1c6 -> :sswitch_32
        0x1c7 -> :sswitch_31
        0x1d0 -> :sswitch_30
        0x1d1 -> :sswitch_2f
        0x1f4 -> :sswitch_2e
        0x200 -> :sswitch_2d
        0x215 -> :sswitch_2c
        0x21d -> :sswitch_2b
        0x22b -> :sswitch_2a
        0x25b -> :sswitch_29
        0x282 -> :sswitch_28
        0x29a -> :sswitch_27
        0x29f -> :sswitch_26
        0x2af -> :sswitch_25
        0x2b8 -> :sswitch_24
        0x2de -> :sswitch_23
        0x2df -> :sswitch_22
        0x2fb -> :sswitch_21
        0x30b -> :sswitch_20
        0x30d -> :sswitch_1f
        0x32b -> :sswitch_1e
        0x34a -> :sswitch_1d
        0x34b -> :sswitch_1c
        0x34c -> :sswitch_1b
        0x34d -> :sswitch_1a
        0x368 -> :sswitch_19
        0x384 -> :sswitch_18
        0x3a5 -> :sswitch_17
        0x3af -> :sswitch_16
        0x3e7 -> :sswitch_15
        0x3e8 -> :sswitch_14
        0x3f3 -> :sswitch_13
        0x400 -> :sswitch_12
        0x401 -> :sswitch_11
        0x42a -> :sswitch_10
        0x438 -> :sswitch_f
        0x439 -> :sswitch_e
        0x466 -> :sswitch_d
        0x46b -> :sswitch_c
        0x49d -> :sswitch_b
        0x533 -> :sswitch_a
        0x55c -> :sswitch_9
        0x587 -> :sswitch_8
        0x58f -> :sswitch_7
        0x590 -> :sswitch_6
        0x5fd -> :sswitch_5
        0x640 -> :sswitch_4
        0x653 -> :sswitch_3
        0x682 -> :sswitch_2
        0x6a2 -> :sswitch_1
        0x6a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x5e
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6e
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
