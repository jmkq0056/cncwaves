.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;
.super Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
.source "IpReaderController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIpReaderController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IpReaderController.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,863:1\n16#2:864\n1#3:865\n*S KotlinDebug\n*F\n+ 1 IpReaderController.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController\n*L\n122#1:864\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00be\u00012\u00020\u0001:\u0002\u00be\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001bJ!\u0010/\u001a\u0002H0\"\u0004\u0008\u0000\u001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H00\'H\u0002\u00a2\u0006\u0002\u00102J!\u00103\u001a\u0002H0\"\u0004\u0008\u0000\u001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002H00\'H\u0002\u00a2\u0006\u0002\u00102J\u0008\u00104\u001a\u00020(H\u0016J\u0008\u00105\u001a\u00020(H\u0016J\u0008\u00106\u001a\u00020(H\u0016J\u0008\u00107\u001a\u00020(H\u0016J\u0008\u00108\u001a\u00020(H\u0016J\u0010\u00109\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010=\u001a\u00020(2\u0006\u0010:\u001a\u00020;H\u0016J:\u0010>\u001a\u00020(\"\u0012\u0008\u0000\u0010?*\u000c\u0012\u0004\u0012\u0002H?\u0012\u0002\u0008\u00030@2\u0006\u0010:\u001a\u00020;2\u0014\u0010A\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H?\u0018\u00010B0\'H\u0002J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0016J$\u0010F\u001a\u00020(2\u001a\u0010A\u001a\u0016\u0012\u0004\u0012\u00020H\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020I\u0018\u00010B0GH\u0002J\u0018\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020NH\u0016J$\u0010O\u001a\u00020(2\u001a\u0010A\u001a\u0016\u0012\u0004\u0012\u00020P\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020Q\u0018\u00010B0GH\u0002J\u0008\u0010R\u001a\u00020(H\u0016J@\u0010S\u001a\u00020(2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\u0010\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010`\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0080@\u00a2\u0006\u0004\u0008a\u0010bJ \u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020%H\u0016J)\u0010j\u001a\u00020D2\u0006\u0010E\u001a\u00020D2\u0008\u0010k\u001a\u0004\u0018\u00010l2\u0008\u0010m\u001a\u0004\u0018\u00010%H\u0016\u00a2\u0006\u0002\u0010nJ\u0010\u0010o\u001a\u00020K2\u0006\u0010p\u001a\u00020KH\u0016J\u001e\u0010q\u001a\u00020(2\u0006\u0010r\u001a\u00020\u001f2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0018\u0010t\u001a\u00020K2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020xH\u0016J\r\u0010y\u001a\u00020(H\u0001\u00a2\u0006\u0002\u0008zJ\u0008\u0010{\u001a\u00020(H\u0016J*\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u001f0}2\u0006\u0010~\u001a\u00020%2\u0008\u0010\u007f\u001a\u0004\u0018\u00010%2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0016J\t\u0010\u0082\u0001\u001a\u00020(H\u0016J\n\u0010\u0083\u0001\u001a\u00030\u0084\u0001H\u0016J\u001a\u0010\u0085\u0001\u001a\u00020(2\u0008\u0010\u0086\u0001\u001a\u00030\u0081\u0001H\u0082@\u00a2\u0006\u0003\u0010\u0087\u0001J\u0011\u0010\u0088\u0001\u001a\u00020\u001d2\u0006\u0010r\u001a\u00020\u001fH\u0002J\t\u0010\u0089\u0001\u001a\u00020[H\u0002J$\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0006\u0010r\u001a\u00020\u001f2\u0006\u0010~\u001a\u00020%2\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0014J\u001b\u0010\u008e\u0001\u001a\u00020D2\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u00012\u0006\u0010w\u001a\u00020xH\u0014J\t\u0010\u0091\u0001\u001a\u00020(H\u0016JH\u0010\u0092\u0001\u001a\u00020(2\u0007\u0010\u0093\u0001\u001a\u00020%2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\u0013\u0010\u0098\u0001\u001a\u00020(2\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J\u0013\u0010\u009b\u0001\u001a\u00030\u0084\u00012\u0007\u0010M\u001a\u00030\u009c\u0001H\u0016J[\u0010\u009d\u0001\u001a\u00020(2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u00012\t\u0010\u00a0\u0001\u001a\u0004\u0018\u00010%2\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010%2\u0006\u0010V\u001a\u00020W2\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\u00d7\u0001\u0010\u00a2\u0001\u001a\u00020(2\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0G2\u0007\u0010\u00a3\u0001\u001a\u00020W2\u0007\u0010\u00a4\u0001\u001a\u00020W2\u0007\u0010\u00a5\u0001\u001a\u00020W2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010%2\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u009f\u00012\u0010\u0010\u00a7\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u00a8\u0001\u0018\u00010}2\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010%2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0006\u0010V\u001a\u00020W2\t\u0010E\u001a\u0005\u0018\u00010\u00aa\u00012\u0007\u0010\u00ab\u0001\u001a\u00020W2\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ad\u00012\t\u0010\u00ae\u0001\u001a\u0004\u0018\u00010%2\n\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u0001H\u0016J|\u0010\u00b1\u0001\u001a\u00020(2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010%2\u0006\u0010V\u001a\u00020W2\u0007\u0010\u00a4\u0001\u001a\u00020W2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u00b2\u00012\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ad\u00012\n\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u00012\u0007\u0010p\u001a\u00030\u00b3\u00012\u0014\u0010\u0096\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020(0G2\u0012\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020[\u0012\u0004\u0012\u00020(0GH\u0016J\t\u0010\u00b4\u0001\u001a\u00020(H\u0002J\r\u0010\u00b5\u0001\u001a\u00020(*\u00020[H\u0002J/\u0010\u00b6\u0001\u001a\u0002H0\"\u0012\u0008\u0000\u00100*\u000c\u0012\u0004\u0012\u0002H0\u0012\u0002\u0008\u00030@*\n\u0012\u0004\u0012\u0002H0\u0018\u00010BH\u0002\u00a2\u0006\u0003\u0010\u00b7\u0001J$\u0010\u00b8\u0001\u001a\u0018\u0012\u0005\u0012\u00030\u00ba\u0001\u0012\u0005\u0012\u00030\u00bb\u0001\u0012\u0005\u0012\u00030\u00bc\u00010\u00b9\u0001*\u00030\u00bd\u0001H\u0002R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010+\u001a\u00020,*\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.\u00a8\u0006\u00bf\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "jackrabbitApiResolver",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "requestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        "apiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "readerActivator",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        "offlineStatsListener",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "readerEventsHandler",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
        "jackrabbitClient",
        "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "activateJob",
        "Lkotlinx/coroutines/Job;",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "heartbeatJob",
        "jackrabbitApiClient",
        "lastReaderConfigHash",
        "",
        "onUnexpectedDisconnect",
        "Lkotlin/Function0;",
        "",
        "paymentJob",
        "readerEventsJob",
        "readerEventsApi",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "getReaderEventsApi",
        "(Lcom/stripe/proto/api/sdk/JackRabbitApi;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "assertClientSideCancellationIsSupported",
        "T",
        "block",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "assertClientSideCreationIsSupported",
        "cancelCollectData",
        "cancelCollectInputs",
        "cancelCollectInteracRefundMethod",
        "cancelCollectPaymentMethod",
        "cancelCollectSetupIntentPaymentMethod",
        "cancelConfirmInteracRefund",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmPaymentIntent",
        "cancelConfirmSetupIntent",
        "cancelConfirmation",
        "M",
        "Lcom/squareup/wire/Message;",
        "cancelFun",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "cancelPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "cancelPaymentMethodCollect",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodResponse;",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "intent",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "cancelSetupIntentPaymentCollect",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;",
        "clearReaderDisplay",
        "collectData",
        "type",
        "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
        "enableCustomerCancellation",
        "",
        "onDataCollected",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "collectInputs",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "kmpCollectInputsParameters",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "collectInputsSuspendUntilComplete",
        "collectInputsSuspendUntilComplete$common_publish",
        "(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmInteracRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "reason",
        "confirmPayment",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmSetupIntent",
        "setupIntent",
        "connectReader",
        "reader",
        "disconnectCallback",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "disableHeartbeat",
        "disableHeartbeat$common_publish",
        "disconnectReader",
        "discoverReaders",
        "",
        "connectionToken",
        "location",
        "timeoutInSeconds",
        "",
        "finishConfirmPayment",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "handleUnAckedReaderEvents",
        "count",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "maintainConnectivity",
        "noActiveReaderException",
        "onActivateReader",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "onCreatePaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "onPaymentMethodCollectedForPaymentIntent",
        "resumeCollectPaymentMethod",
        "intentId",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "onPaymentCollected",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "startInteracRefund",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "chargeId",
        "paymentIntentId",
        "startPaymentCollection",
        "skipTipping",
        "manualEntry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "computedPriorities",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripeAccountId",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "requestDynamicCurrencyConversion",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "surchargeNotice",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "startSetupIntentPaymentCollection",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "tearDownConnection",
        "disconnectIfCommunicationError",
        "ensureConnectedJackrabbitResponse",
        "(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;",
        "getKmpHelpers",
        "Lkotlin/Triple;",
        "Lio/ktor/client/HttpClient;",
        "Lokhttp3/HttpUrl;",
        "Lio/ktor/http/URLProtocol;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
        "Companion",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$Companion;

.field public static final HEARTBEAT_INTERVAL_MS:J = 0x3a98L

.field private static final MAX_CONNECTION_FAILURES:I = 0x2

.field private static final MINIMUM_CLIENT_SIDE_CANCEL_SW_VERSION:J = 0x203248L

.field private static final MINIMUM_CLIENT_SIDE_CREATE_SW_VERSION:J = 0x200b84L

.field private static final READER_COMMUNICATION_ERROR_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activateJob:Lkotlinx/coroutines/Job;

.field private final apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

.field private final apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private heartbeatJob:Lkotlinx/coroutines/Job;

.field private jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

.field private final jackrabbitApiResolver:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;"
        }
    .end annotation
.end field

.field private final jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

.field private lastReaderConfigHash:Ljava/lang/String;

.field private final loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

.field private final offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

.field private onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private paymentJob:Lkotlinx/coroutines/Job;

.field private final readerActivator:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

.field private final readerEventsHandler:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;

.field private readerEventsJob:Lkotlinx/coroutines/Job;

.field private final requestContextProvider:Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

.field private final terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$Companion;

    const/4 v0, 0x2

    .line 856
    new-array v0, v0, [Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_SSL_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->READER_COMMUNICATION_ERROR_CODES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jackrabbitApiResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerActivator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineStatsListener"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerEventsHandler"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jackrabbitClient"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    const-class v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p12, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 109
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 110
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiResolver:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    .line 111
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->requestContextProvider:Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    .line 112
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    .line 113
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 114
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 115
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 116
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerActivator:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    .line 117
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    .line 118
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerEventsHandler:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;

    .line 119
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 120
    iput-object p12, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    return-void
.end method

.method public static final synthetic access$disconnectIfCommunicationError(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->disconnectIfCommunicationError(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public static final synthetic access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivateJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->activateJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    return-object p0
.end method

.method public static final synthetic access$getCoroutineScope$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    return-object p0
.end method

.method public static final synthetic access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    return-object p0
.end method

.method public static final synthetic access$getJackrabbitClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    return-object p0
.end method

.method public static final synthetic access$getLastReaderConfigHash$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->lastReaderConfigHash:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOfflineStatsListener$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    return-object p0
.end method

.method public static final synthetic access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPaymentJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getReaderActivator$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerActivator:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    return-object p0
.end method

.method public static final synthetic access$handleUnAckedReaderEvents(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->handleUnAckedReaderEvents(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setActivateJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->activateJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setLastReaderConfigHash$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->lastReaderConfigHash:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$tearDownConnection(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->tearDownConnection()V

    return-void
.end method

.method private final assertClientSideCancellationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-wide/32 v0, 0x203248

    .line 841
    invoke-virtual {p0, v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertReaderVersionAtLeast(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final assertClientSideCreationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-wide/32 v0, 0x200b84

    .line 838
    invoke-virtual {p0, v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertReaderVersionAtLeast(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final cancelConfirmation(Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;>;)V"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final cancelPaymentMethodCollect(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentMethodCollect$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentMethodCollect$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final cancelSetupIntentPaymentCollect(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntentPaymentCollect$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntentPaymentCollect$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final disconnectIfCommunicationError(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    .line 832
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->READER_COMMUNICATION_ERROR_CODES:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 833
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 824
    :try_start_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 826
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->disconnectIfCommunicationError(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 827
    throw p1
.end method

.method private final getKmpHelpers(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lkotlin/Triple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ")",
            "Lkotlin/Triple<",
            "Lio/ktor/client/HttpClient;",
            "Lokhttp3/HttpUrl;",
            "Lio/ktor/http/URLProtocol;",
            ">;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 845
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/kmpcore/jackrabbitclient/GetKtorHttpClientKt;->getKtorHttpClient(Lokhttp3/OkHttpClient;)Lio/ktor/client/HttpClient;

    move-result-object v0

    .line 846
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getBaseUrlProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    .line 848
    const-string v2, "http"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol$Companion;->getHTTP()Lio/ktor/http/URLProtocol;

    move-result-object v1

    goto :goto_0

    .line 849
    :cond_0
    const-string v2, "https"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol$Companion;->getHTTPS()Lio/ktor/http/URLProtocol;

    move-result-object v1

    goto :goto_0

    .line 850
    :cond_1
    sget-object v1, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v1}, Lio/ktor/http/URLProtocol$Companion;->getHTTPS()Lio/ktor/http/URLProtocol;

    move-result-object v1

    .line 852
    :goto_0
    new-instance v2, Lkotlin/Triple;

    invoke-direct {v2, v0, p1, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 844
    :cond_2
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method private final getReaderEventsApi(Lcom/stripe/proto/api/sdk/JackRabbitApi;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;
    .locals 1

    .line 754
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$readerEventsApi$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    check-cast v0, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    return-object v0
.end method

.method private final handleUnAckedReaderEvents(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;

    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 746
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 747
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getReaderEventsApi(Lcom/stripe/proto/api/sdk/JackRabbitApi;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 748
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerEventsHandler:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;

    iput-object p0, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$handleUnAckedReaderEvents$1;->label:I

    invoke-interface {v2, p2, p1, v0}, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;->notifyUnAckedEvents(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lkotlinx/coroutines/Job;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    move-object p1, p0

    .line 747
    :goto_2
    iput-object p2, p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerEventsJob:Lkotlinx/coroutines/Job;

    .line 750
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final maintainConnectivity(Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 700
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method private final noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 816
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 817
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 816
    const-string v2, "No active reader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final tearDownConnection()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    .line 145
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 146
    :cond_0
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    .line 147
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 148
    :cond_1
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 149
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->activateJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 150
    :cond_2
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->activateJob:Lkotlinx/coroutines/Job;

    .line 151
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerEventsJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_3

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 152
    :cond_3
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->readerEventsJob:Lkotlinx/coroutines/Job;

    .line 153
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    .line 154
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    invoke-interface {v0}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;->clear()V

    .line 155
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-virtual {v0}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->tearDownConnection()V

    return-void
.end method


# virtual methods
.method public cancelCollectData()V
    .locals 13

    .line 684
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getKmpHelpers(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/ktor/client/HttpClient;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/ktor/http/URLProtocol;

    .line 687
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 688
    new-instance v4, Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v1, v6}, Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 690
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v6

    .line 691
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v7

    .line 692
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    .line 693
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    .line 694
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v10

    .line 695
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v11

    .line 687
    invoke-virtual/range {v3 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->cancelCollectData(Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;)V

    return-void

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public cancelCollectInputs()V
    .locals 13

    .line 224
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getKmpHelpers(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/ktor/client/HttpClient;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/ktor/http/URLProtocol;

    .line 227
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 228
    new-instance v4, Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v6, v1, v6}, Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    .line 233
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    .line 234
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v10

    .line 235
    invoke-virtual {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v11

    .line 227
    invoke-virtual/range {v3 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->cancelCollectInputs(Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;)V

    return-void

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public cancelCollectInteracRefundMethod()V
    .locals 1

    .line 307
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectInteracRefundMethod$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectInteracRefundMethod$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelPaymentMethodCollect(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public cancelCollectPaymentMethod()V
    .locals 1

    .line 426
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectPaymentMethod$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectPaymentMethod$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelPaymentMethodCollect(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public cancelCollectSetupIntentPaymentMethod()V
    .locals 1

    .line 432
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelSetupIntentPaymentCollect(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public cancelConfirmInteracRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmInteracRefund$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmInteracRefund$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelConfirmation(Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmPaymentIntent$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelConfirmation(Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelConfirmation(Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertClientSideCancellationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertClientSideCancellationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public clearReaderDisplay()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-interface {v1}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->clearReaderDisplay()Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->clearReaderDisplay(Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    return-void
.end method

.method public collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDataCollected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 645
    invoke-direct {p0, v3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getKmpHelpers(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/client/HttpClient;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lio/ktor/http/URLProtocol;

    .line 647
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lio/ktor/client/HttpClient;Lcom/stripe/jvmcore/crpcclient/CrpcClient;Lokhttp3/HttpUrl;Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 2

    const-string v0, "kmpCollectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputs$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputs$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object p1
.end method

.method public final collectInputsSuspendUntilComplete$common_publish(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;

    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v12, v0

    iget-object p2, v12, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 198
    iget v1, v12, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v12, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getClient()Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 202
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getKmpHelpers(Lcom/stripe/jvmcore/crpcclient/CrpcClient;)Lkotlin/Triple;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/client/HttpClient;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lio/ktor/http/URLProtocol;

    .line 204
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitClient:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 206
    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move-object v2, v3

    move-object v3, v5

    .line 208
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->port()I

    move-result v4

    move v8, v7

    .line 210
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    .line 211
    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v9

    .line 212
    invoke-virtual {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object p2

    .line 204
    iput-object p0, v12, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->L$0:Ljava/lang/Object;

    iput v8, v12, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectInputsSuspendUntilComplete$1;->label:I

    move-object v8, v6

    move v6, v4

    move-object v4, v8

    move-object v10, p1

    move-object v8, v9

    move-object v9, p2

    invoke-virtual/range {v1 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    .line 198
    :goto_1
    check-cast p2, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    .line 217
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KmpCollectInputsResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object p2

    .line 201
    :cond_4
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 2

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-interface {v1, p1, p2, p3}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;

    move-result-object p1

    .line 449
    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->confirmInteracRefund(Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 453
    :goto_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;

    .line 454
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult;

    move-result-object p1

    .line 455
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Success;

    if-eqz p2, :cond_1

    .line 456
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Success;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Success;->getRefund()Lcom/stripe/stripeterminal/external/models/Refund;

    move-result-object p1

    return-object p1

    .line 459
    :cond_1
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Error;

    if-eqz p2, :cond_2

    .line 460
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Error;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmInteracRefundResponseExtensions$ConfirmInteracRefundResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 8

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    .line 478
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getNonCardPaymentMethod()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, v0

    goto :goto_2

    .line 480
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getIpPaymentMethod()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v3, v7

    .line 483
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-result-object p1

    move-object v6, p1

    goto :goto_3

    :cond_3
    move-object v6, v7

    :goto_3
    move-object v4, p2

    move-object v5, p3

    .line 477
    invoke-interface/range {v1 .. v6}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-result-object p1

    .line 487
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;

    .line 485
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->confirmPayment(Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, v7

    .line 486
    :goto_4
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    .line 487
    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;

    move-result-object p1

    .line 491
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;->getOfflineStats()Lcom/stripe/proto/api/sdk/OfflineStats;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;->updateStats(Lcom/stripe/proto/api/sdk/OfflineStats;)V

    .line 493
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;

    if-nez p2, :cond_7

    .line 497
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;

    if-eqz p2, :cond_6

    .line 498
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object p2

    sget-object p3, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_ACTION:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-ne p2, p3, :cond_5

    const/4 p2, 0x1

    .line 499
    invoke-static {v7, p2, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p3

    .line 501
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 508
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->handlePaymentIntentNextActions(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;

    move-result-object v5

    .line 509
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 500
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/HandlePaymentIntentNextActionJob;

    .line 511
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;

    invoke-direct {p1, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$2;

    invoke-direct {p1, p3, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 500
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/HandlePaymentIntentNextActionJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    .line 511
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/HandlePaymentIntentNextActionJob;->launch()Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 500
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 512
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$3;

    invoke-direct {p1, p3, v7}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$confirmPayment$2$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, p1, p2, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1

    .line 514
    :cond_5
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 494
    :cond_7
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 4

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 558
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    .line 559
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    move-result-object v1

    .line 558
    :cond_0
    invoke-interface {v2, v3, v1}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->confirmSetupIntent(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;

    move-result-object p1

    .line 557
    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->confirmSetupIntent(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v1

    .line 564
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;

    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;->getOfflineStats()Lcom/stripe/proto/api/sdk/OfflineStats;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;->updateStats(Lcom/stripe/proto/api/sdk/OfflineStats;)V

    .line 569
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    if-nez v0, :cond_3

    .line 573
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Success;

    if-eqz v0, :cond_2

    .line 574
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Success;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Success;->getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 570
    :cond_3
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "disconnectCallback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$connectReader$1;

    invoke-direct {p1, p0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$connectReader$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$createSetupIntent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$createSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertClientSideCreationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public final disableHeartbeat$common_publish()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 609
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public disconnectReader()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->tearDownConnection()V

    return-void
.end method

.method public discoverReaders(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 165
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    sget-object v0, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p3, Lcom/stripe/jvmcore/restclient/RestConfig;

    :goto_1
    move-object v5, p3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    .line 159
    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->listAllReaders$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;->getReaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public finishConfirmPayment()V
    .locals 0

    return-void
.end method

.method public getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    .line 185
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertReaderSettingsIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object v0
.end method

.method protected onActivateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiResolver:Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/JackRabbitApi;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_1

    .line 248
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getFailIfInUse()Z

    move-result p3

    invoke-interface {v1, p2, p3}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->activateTerminal(Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object p2

    .line 247
    invoke-virtual {v0, p2}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->activateTerminal(Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 252
    sget-object p3, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    invoke-virtual {p3, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponseForActivateReader(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    .line 254
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->requestContextProvider:Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;->setToken(Ljava/lang/String;)V

    .line 256
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->offlineStatsListener:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v1, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-interface {p3, v0, v1}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;->saveStats(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;)V

    .line 258
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->maintainConnectivity(Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->heartbeatJob:Lkotlinx/coroutines/Job;

    return-object p2

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method protected onCreatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertClientSideCreationIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 0

    return-void
.end method

.method public resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    .line 539
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 545
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    if-eqz p2, :cond_0

    .line 547
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-result-object v0

    .line 545
    :cond_0
    invoke-interface {v1, p1, v0}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    move-result-object v6

    .line 550
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 538
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;

    .line 551
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$resumeCollectPaymentMethod$1$1;

    invoke-direct {p1, p4, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$resumeCollectPaymentMethod$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v4, p3

    .line 538
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    .line 551
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->launch()Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 538
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 537
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 552
    :cond_2
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .locals 2

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-interface {v1, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->setReaderDisplay(Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 173
    :goto_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->ensureConnectedJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    return-void
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$setReaderSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$setReaderSettings$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->assertReaderSettingsIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object p1
.end method

.method public startInteracRefund(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    if-eqz v7, :cond_0

    .line 372
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 378
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    invoke-interface {v0, p1, p3, p2, p4}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->collectInteracRefundMethod(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;

    move-result-object v6

    .line 385
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 371
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectRefundPaymentJob;

    .line 386
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startInteracRefund$1$1;

    invoke-direct {p1, p6, p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startInteracRefund$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v4, p5

    .line 371
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectRefundPaymentJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    .line 386
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectRefundPaymentJob;->launch()Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 371
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 370
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method

.method public startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p17

    const-string v4, "amount"

    move-object/from16 v6, p1

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onPaymentCollected"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onFailure"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 333
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 339
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    if-eqz v2, :cond_0

    .line 348
    sget-object v9, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v9, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-result-object v2

    move-object v14, v2

    goto :goto_0

    :cond_0
    move-object v14, v7

    :goto_0
    if-eqz p15, :cond_1

    .line 352
    invoke-static/range {p15 .. p15}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehaviorProto(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, v7

    :goto_1
    if-eqz v3, :cond_2

    .line 354
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v3}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/proto/model/rest/AllowRedisplay;

    move-result-object v7

    :cond_2
    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v19, p16

    move-object/from16 v20, v7

    move-object v2, v8

    move/from16 v7, p4

    move/from16 v8, p5

    .line 339
    invoke-interface/range {v5 .. v20}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->collectPaymentMethod(Lcom/stripe/currency/Amount;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    move-result-object v3

    .line 357
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 332
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectPaymentJob;

    .line 358
    new-instance v7, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startPaymentCollection$1$1;

    invoke-direct {v7, v1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startPaymentCollection$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object/from16 p6, p2

    move-object/from16 p4, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v4

    move-object/from16 p5, v5

    move-object/from16 p3, v6

    move-object/from16 p7, v7

    .line 332
    invoke-direct/range {p3 .. p9}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectPaymentJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    move-object/from16 v1, p3

    .line 358
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectPaymentJob;->launch()Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 332
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 331
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    if-eqz v7, :cond_4

    return-void

    .line 359
    :cond_4
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v1

    throw v1
.end method

.method public startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    const-string v4, "setupIntent"

    move-object/from16 v5, p7

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onPaymentCollected"

    move-object/from16 v6, p8

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onFailure"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 403
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 409
    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->apiRequestFactory:Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    if-eqz v1, :cond_0

    .line 413
    sget-object v10, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v10, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    if-eqz p5, :cond_1

    .line 414
    invoke-static/range {p5 .. p5}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehaviorProto(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-result-object v10

    move-object/from16 v29, v10

    goto :goto_1

    :cond_1
    move-object/from16 v29, v7

    :goto_1
    if-eqz v2, :cond_2

    .line 415
    sget-object v7, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v7, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/proto/model/rest/AllowRedisplay;

    move-result-object v7

    :cond_2
    move-object v2, v7

    if-nez p1, :cond_3

    .line 417
    const-string v7, ""

    goto :goto_2

    :cond_3
    move-object/from16 v7, p1

    :goto_2
    const v27, 0x1ffffe

    const/16 v28, 0x0

    move-object v6, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    move-object/from16 v30, v25

    const/16 v25, 0x0

    move-object/from16 v31, v26

    const/16 v26, 0x0

    invoke-static/range {v5 .. v28}, Lcom/stripe/proto/model/rest/SetupIntent;->copy$default(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v16

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object v13, v1

    move-object v15, v2

    move-object/from16 v14, v29

    move-object/from16 v9, v30

    .line 409
    invoke-interface/range {v9 .. v16}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->collectSetupIntentPaymentMethod(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/model/rest/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    move-result-object v1

    .line 420
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 402
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;

    .line 421
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startSetupIntentPaymentCollection$1$1;

    invoke-direct {v6, v3, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$startSetupIntentPaymentCollection$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 p4, p8

    move-object/from16 p6, v1

    move-object/from16 p3, v2

    move-object/from16 p7, v4

    move-object/from16 p1, v5

    move-object/from16 p5, v6

    move-object/from16 p2, v31

    .line 402
    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V

    move-object/from16 v1, p1

    .line 421
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->launch()Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 402
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->paymentJob:Lkotlinx/coroutines/Job;

    .line 401
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-eqz v7, :cond_5

    return-void

    .line 422
    :cond_5
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->noActiveReaderException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v1

    throw v1
.end method
