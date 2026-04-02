package com.stripe.stripeterminal.external.models;

import com.stripe.proto.model.common.BBPosHardware;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.model.common.SimulatedHardware;
import com.stripe.proto.model.common.VerifoneHardware;
import com.stripe.serialnumber.MPOSDeviceMetadata;
import com.stripe.serialnumber.SmartPOSDeviceMetadata;
import com.stripe.stripeterminal.external.json.DeviceTypeSerializer;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: DeviceType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0087\u0081\u0002\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001(B-\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'¨\u0006)"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DeviceType;", "", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "deviceName", "", "serialPrefixes", "", "hardwareModel", "Lcom/stripe/proto/model/common/HardwareModel;", "simulatedHardware", "Lcom/stripe/proto/model/common/SimulatedHardware;", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/SimulatedHardware;)V", "getDeviceName", "()Ljava/lang/String;", "getHardwareModel$annotations", "()V", "getHardwareModel", "()Lcom/stripe/proto/model/common/HardwareModel;", "getSerialPrefixes", "()Ljava/util/List;", "getSimulatedHardware$annotations", "getSimulatedHardware", "()Lcom/stripe/proto/model/common/SimulatedHardware;", "CHIPPER_1X", "CHIPPER_2X", "STRIPE_M2", "TAP_TO_PAY_DEVICE", "VERIFONE_P400", "WISECUBE", "WISEPAD_3", "WISEPAD_3S", "WISEPOS_E", "WISEPOS_E_DEVKIT", "ETNA", "STRIPE_S700", "STRIPE_S700_DEVKIT", "STRIPE_S710", "STRIPE_S710_DEVKIT", "UNKNOWN", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = DeviceTypeSerializer.class)
public final class DeviceType implements java.io.Serializable {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceType[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final DeviceType CHIPPER_1X;
    public static final DeviceType CHIPPER_2X;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DeviceType ETNA;
    public static final DeviceType STRIPE_M2;
    public static final DeviceType STRIPE_S700;
    public static final DeviceType STRIPE_S700_DEVKIT;
    public static final DeviceType STRIPE_S710;
    public static final DeviceType STRIPE_S710_DEVKIT;
    public static final DeviceType TAP_TO_PAY_DEVICE;
    public static final DeviceType UNKNOWN;
    public static final DeviceType VERIFONE_P400;
    public static final DeviceType WISECUBE;
    public static final DeviceType WISEPAD_3;
    public static final DeviceType WISEPAD_3S;
    public static final DeviceType WISEPOS_E;
    public static final DeviceType WISEPOS_E_DEVKIT;
    private final String deviceName;
    private final HardwareModel hardwareModel;
    private final List<String> serialPrefixes;
    private final SimulatedHardware simulatedHardware;

    private static final /* synthetic */ DeviceType[] $values() {
        return new DeviceType[]{CHIPPER_1X, CHIPPER_2X, STRIPE_M2, TAP_TO_PAY_DEVICE, VERIFONE_P400, WISECUBE, WISEPAD_3, WISEPAD_3S, WISEPOS_E, WISEPOS_E_DEVKIT, ETNA, STRIPE_S700, STRIPE_S700_DEVKIT, STRIPE_S710, STRIPE_S710_DEVKIT, UNKNOWN};
    }

    public static EnumEntries<DeviceType> getEntries() {
        return $ENTRIES;
    }

    public static /* synthetic */ void getHardwareModel$annotations() {
    }

    public static /* synthetic */ void getSimulatedHardware$annotations() {
    }

    public static DeviceType valueOf(String str) {
        return (DeviceType) Enum.valueOf(DeviceType.class, str);
    }

    public static DeviceType[] values() {
        return (DeviceType[]) $VALUES.clone();
    }

    /* JADX INFO: compiled from: DeviceType.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/DeviceType$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) DeviceType.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<DeviceType> serializer() {
            return get$cachedSerializer();
        }
    }

    private DeviceType(String str, int i, String str2, List list, HardwareModel hardwareModel, SimulatedHardware simulatedHardware) {
        this.deviceName = str2;
        this.serialPrefixes = list;
        this.hardwareModel = hardwareModel;
        this.simulatedHardware = simulatedHardware;
    }

    public final String getDeviceName() {
        return this.deviceName;
    }

    public final List<String> getSerialPrefixes() {
        return this.serialPrefixes;
    }

    public final HardwareModel getHardwareModel() {
        return this.hardwareModel;
    }

    public final SimulatedHardware getSimulatedHardware() {
        return this.simulatedHardware;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object[] objArr = 0 == true ? 1 : 0;
        CHIPPER_1X = new DeviceType("CHIPPER_1X", 0, MPOSDeviceMetadata.Chipper1X.getApiDeviceType(), CollectionsKt.toList(MPOSDeviceMetadata.Chipper1X.getSerialPrefixes()), new HardwareModel(null, null, null, BBPosHardware.CHIPPER1X, null, null, null, null, null, 503, null), new SimulatedHardware(objArr, BBPosHardware.CHIPPER1X, null, 0 == true ? 1 : 0, 13, 0 == true ? 1 : 0));
        String apiDeviceType = MPOSDeviceMetadata.Chipper2X.getApiDeviceType();
        List list = CollectionsKt.toList(MPOSDeviceMetadata.Chipper2X.getSerialPrefixes());
        Object[] objArr2 = 0 == true ? 1 : 0;
        Object[] objArr3 = 0 == true ? 1 : 0;
        Object[] objArr4 = 0 == true ? 1 : 0;
        Object[] objArr5 = 0 == true ? 1 : 0;
        Object[] objArr6 = 0 == true ? 1 : 0;
        Object[] objArr7 = 0 == true ? 1 : 0;
        Object[] objArr8 = 0 == true ? 1 : 0;
        CHIPPER_2X = new DeviceType("CHIPPER_2X", 1, apiDeviceType, list, new HardwareModel(objArr2, null, objArr6, BBPosHardware.CHIPPER2X, null, objArr3, objArr4, objArr5, null, 503, null), new SimulatedHardware(objArr8, BBPosHardware.CHIPPER2X, null, 0 == true ? 1 : 0, 13, objArr7));
        String apiDeviceType2 = MPOSDeviceMetadata.StripeM2.getApiDeviceType();
        List list2 = CollectionsKt.toList(MPOSDeviceMetadata.StripeM2.getSerialPrefixes());
        Object[] objArr9 = 0 == true ? 1 : 0;
        Object[] objArr10 = 0 == true ? 1 : 0;
        Object[] objArr11 = 0 == true ? 1 : 0;
        Object[] objArr12 = 0 == true ? 1 : 0;
        Object[] objArr13 = 0 == true ? 1 : 0;
        Object[] objArr14 = 0 == true ? 1 : 0;
        Object[] objArr15 = 0 == true ? 1 : 0;
        STRIPE_M2 = new DeviceType("STRIPE_M2", 2, apiDeviceType2, list2, new HardwareModel(objArr11, null, objArr13, BBPosHardware.STRIPEM2, null, objArr9, objArr10, objArr12, null, 503, null), new SimulatedHardware(objArr15, BBPosHardware.STRIPEM2, null, 0 == true ? 1 : 0, 13, objArr14));
        List listEmptyList = CollectionsKt.emptyList();
        Object[] objArr16 = 0 == true ? 1 : 0;
        Object[] objArr17 = 0 == true ? 1 : 0;
        Object[] objArr18 = 0 == true ? 1 : 0;
        Object[] objArr19 = 0 == true ? 1 : 0;
        Object[] objArr20 = 0 == true ? 1 : 0;
        Object[] objArr21 = 0 == true ? 1 : 0;
        Object[] objArr22 = 0 == true ? 1 : 0;
        TAP_TO_PAY_DEVICE = new DeviceType("TAP_TO_PAY_DEVICE", 3, "mobile_phone_reader", listEmptyList, new HardwareModel(objArr18, null, objArr20, BBPosHardware.BBPOS_MODEL_NOT_SET, null, objArr16, objArr17, objArr19, null, 503, null), new SimulatedHardware(objArr22, BBPosHardware.BBPOS_MODEL_NOT_SET, null, 0 == true ? 1 : 0, 13, objArr21));
        List listEmptyList2 = CollectionsKt.emptyList();
        Object[] objArr23 = 0 == true ? 1 : 0;
        Object[] objArr24 = 0 == true ? 1 : 0;
        Object[] objArr25 = 0 == true ? 1 : 0;
        Object[] objArr26 = 0 == true ? 1 : 0;
        Object[] objArr27 = 0 == true ? 1 : 0;
        Object[] objArr28 = 0 == true ? 1 : 0;
        HardwareModel hardwareModel = new HardwareModel(objArr25, VerifoneHardware.P400, objArr28, objArr26, null, objArr23, objArr24, objArr27, null, 509, null);
        Object[] objArr29 = 0 == true ? 1 : 0;
        Object[] objArr30 = 0 == true ? 1 : 0;
        VERIFONE_P400 = new DeviceType("VERIFONE_P400", 4, "verifone_P400", listEmptyList2, hardwareModel, new SimulatedHardware(VerifoneHardware.P400, 0 == true ? 1 : 0, objArr30, 0 == true ? 1 : 0, 14, objArr29));
        String apiDeviceType3 = MPOSDeviceMetadata.Wisecube.getApiDeviceType();
        List list3 = CollectionsKt.toList(MPOSDeviceMetadata.Wisecube.getSerialPrefixes());
        Object[] objArr31 = 0 == true ? 1 : 0;
        Object[] objArr32 = 0 == true ? 1 : 0;
        Object[] objArr33 = 0 == true ? 1 : 0;
        Object[] objArr34 = 0 == true ? 1 : 0;
        Object[] objArr35 = 0 == true ? 1 : 0;
        Object[] objArr36 = 0 == true ? 1 : 0;
        Object[] objArr37 = 0 == true ? 1 : 0;
        WISECUBE = new DeviceType("WISECUBE", 5, apiDeviceType3, list3, new HardwareModel(null, objArr34, objArr32, BBPosHardware.WISECUBE, null, objArr31, objArr33, objArr35, null, 503, null), new SimulatedHardware(objArr37, BBPosHardware.WISECUBE, null, 0 == true ? 1 : 0, 13, objArr36));
        String apiDeviceType4 = MPOSDeviceMetadata.WisePad3.getApiDeviceType();
        List list4 = CollectionsKt.toList(MPOSDeviceMetadata.WisePad3.getSerialPrefixes());
        Object[] objArr38 = 0 == true ? 1 : 0;
        Object[] objArr39 = 0 == true ? 1 : 0;
        Object[] objArr40 = 0 == true ? 1 : 0;
        Object[] objArr41 = 0 == true ? 1 : 0;
        Object[] objArr42 = 0 == true ? 1 : 0;
        Object[] objArr43 = 0 == true ? 1 : 0;
        Object[] objArr44 = 0 == true ? 1 : 0;
        WISEPAD_3 = new DeviceType("WISEPAD_3", 6, apiDeviceType4, list4, new HardwareModel(objArr39, null, objArr42, BBPosHardware.WISEPAD3, null, objArr38, objArr40, objArr41, null, 503, null), new SimulatedHardware(objArr44, BBPosHardware.WISEPAD3, null, 0 == true ? 1 : 0, 13, objArr43));
        DefaultConstructorMarker defaultConstructorMarker = null;
        Object[] objArr45 = 0 == true ? 1 : 0;
        Object[] objArr46 = 0 == true ? 1 : 0;
        Object[] objArr47 = 0 == true ? 1 : 0;
        Object[] objArr48 = 0 == true ? 1 : 0;
        Object[] objArr49 = 0 == true ? 1 : 0;
        WISEPAD_3S = new DeviceType("WISEPAD_3S", 7, MPOSDeviceMetadata.WisePad3S.getApiDeviceType(), CollectionsKt.toList(MPOSDeviceMetadata.WisePad3S.getSerialPrefixes()), new HardwareModel(objArr47, null, objArr49, BBPosHardware.WISEPAD3S, null, objArr45, objArr46, objArr48, null, 503, defaultConstructorMarker), new SimulatedHardware(null, BBPosHardware.WISEPAD3S, null, null, 13, null));
        String apiDeviceType5 = SmartPOSDeviceMetadata.WisePosE.getApiDeviceType();
        List list5 = CollectionsKt.toList(SmartPOSDeviceMetadata.WisePosE.getSerialPrefixes());
        Object[] objArr50 = 0 == true ? 1 : 0;
        Object[] objArr51 = 0 == true ? 1 : 0;
        Object[] objArr52 = 0 == true ? 1 : 0;
        WISEPOS_E = new DeviceType("WISEPOS_E", 8, apiDeviceType5, list5, new HardwareModel(objArr51, null, null, BBPosHardware.WISEPOS_E, null, null, null, null, objArr50, 503, null), new SimulatedHardware(objArr52, BBPosHardware.WISEPOS_E, null, 0 == true ? 1 : 0, 13, 0 == true ? 1 : 0));
        String apiDeviceType6 = SmartPOSDeviceMetadata.WisePosEDevKit.getApiDeviceType();
        List list6 = CollectionsKt.toList(SmartPOSDeviceMetadata.WisePosEDevKit.getSerialPrefixes());
        Object[] objArr53 = 0 == true ? 1 : 0;
        Object[] objArr54 = 0 == true ? 1 : 0;
        Object[] objArr55 = 0 == true ? 1 : 0;
        Object[] objArr56 = 0 == true ? 1 : 0;
        Object[] objArr57 = 0 == true ? 1 : 0;
        Object[] objArr58 = 0 == true ? 1 : 0;
        Object[] objArr59 = 0 == true ? 1 : 0;
        Object[] objArr60 = 0 == true ? 1 : 0;
        WISEPOS_E_DEVKIT = new DeviceType("WISEPOS_E_DEVKIT", 9, apiDeviceType6, list6, new HardwareModel(objArr55, null, objArr58, BBPosHardware.WISEPOS_E_DEVKIT, null, objArr56, objArr57, objArr53, null, 503, objArr54), new SimulatedHardware(objArr60, BBPosHardware.WISEPOS_E_DEVKIT, null, 0 == true ? 1 : 0, 13, objArr59));
        String apiDeviceType7 = SmartPOSDeviceMetadata.Etna.getApiDeviceType();
        List list7 = CollectionsKt.toList(SmartPOSDeviceMetadata.Etna.getSerialPrefixes());
        Object[] objArr61 = 0 == true ? 1 : 0;
        Object[] objArr62 = 0 == true ? 1 : 0;
        Object[] objArr63 = 0 == true ? 1 : 0;
        Object[] objArr64 = 0 == true ? 1 : 0;
        Object[] objArr65 = 0 == true ? 1 : 0;
        Object[] objArr66 = 0 == true ? 1 : 0;
        Object[] objArr67 = 0 == true ? 1 : 0;
        Object[] objArr68 = 0 == true ? 1 : 0;
        ETNA = new DeviceType("ETNA", 10, apiDeviceType7, list7, new HardwareModel(objArr64, null, objArr66, BBPosHardware.SHOPIFY_ETNA, null, objArr63, objArr62, objArr65, null, 503, objArr61), new SimulatedHardware(objArr68, BBPosHardware.SHOPIFY_ETNA, null, 0 == true ? 1 : 0, 13, objArr67));
        String apiDeviceType8 = SmartPOSDeviceMetadata.S700.getApiDeviceType();
        List list8 = CollectionsKt.toList(SmartPOSDeviceMetadata.S700.getSerialPrefixes());
        Object[] objArr69 = 0 == true ? 1 : 0;
        Object[] objArr70 = 0 == true ? 1 : 0;
        Object[] objArr71 = 0 == true ? 1 : 0;
        Object[] objArr72 = 0 == true ? 1 : 0;
        Object[] objArr73 = 0 == true ? 1 : 0;
        Object[] objArr74 = 0 == true ? 1 : 0;
        Object[] objArr75 = 0 == true ? 1 : 0;
        Object[] objArr76 = 0 == true ? 1 : 0;
        STRIPE_S700 = new DeviceType("STRIPE_S700", 11, apiDeviceType8, list8, new HardwareModel(objArr72, null, objArr74, BBPosHardware.STRIPE_S700, null, objArr70, objArr71, objArr73, null, 503, objArr69), new SimulatedHardware(objArr76, BBPosHardware.STRIPE_S700, null, 0 == true ? 1 : 0, 13, objArr75));
        String apiDeviceType9 = SmartPOSDeviceMetadata.S700DevKit.getApiDeviceType();
        List list9 = CollectionsKt.toList(SmartPOSDeviceMetadata.S700DevKit.getSerialPrefixes());
        Object[] objArr77 = 0 == true ? 1 : 0;
        Object[] objArr78 = 0 == true ? 1 : 0;
        Object[] objArr79 = 0 == true ? 1 : 0;
        Object[] objArr80 = 0 == true ? 1 : 0;
        Object[] objArr81 = 0 == true ? 1 : 0;
        Object[] objArr82 = 0 == true ? 1 : 0;
        Object[] objArr83 = 0 == true ? 1 : 0;
        Object[] objArr84 = 0 == true ? 1 : 0;
        STRIPE_S700_DEVKIT = new DeviceType("STRIPE_S700_DEVKIT", 12, apiDeviceType9, list9, new HardwareModel(objArr80, null, objArr82, BBPosHardware.STRIPE_S700_DEVKIT, null, objArr78, objArr79, objArr81, null, 503, objArr77), new SimulatedHardware(objArr84, BBPosHardware.STRIPE_S700_DEVKIT, null, 0 == true ? 1 : 0, 13, objArr83));
        String apiDeviceType10 = SmartPOSDeviceMetadata.S710.getApiDeviceType();
        List list10 = CollectionsKt.toList(SmartPOSDeviceMetadata.S710.getSerialPrefixes());
        Object[] objArr85 = 0 == true ? 1 : 0;
        Object[] objArr86 = 0 == true ? 1 : 0;
        Object[] objArr87 = 0 == true ? 1 : 0;
        Object[] objArr88 = 0 == true ? 1 : 0;
        Object[] objArr89 = 0 == true ? 1 : 0;
        Object[] objArr90 = 0 == true ? 1 : 0;
        Object[] objArr91 = 0 == true ? 1 : 0;
        Object[] objArr92 = 0 == true ? 1 : 0;
        STRIPE_S710 = new DeviceType("STRIPE_S710", 13, apiDeviceType10, list10, new HardwareModel(objArr88, null, objArr90, BBPosHardware.STRIPE_S710, null, objArr86, objArr87, objArr89, null, 503, objArr85), new SimulatedHardware(objArr92, BBPosHardware.STRIPE_S710, null, 0 == true ? 1 : 0, 13, objArr91));
        String apiDeviceType11 = SmartPOSDeviceMetadata.S710DevKit.getApiDeviceType();
        List list11 = CollectionsKt.toList(SmartPOSDeviceMetadata.S710DevKit.getSerialPrefixes());
        Object[] objArr93 = 0 == true ? 1 : 0;
        Object[] objArr94 = 0 == true ? 1 : 0;
        Object[] objArr95 = 0 == true ? 1 : 0;
        Object[] objArr96 = 0 == true ? 1 : 0;
        Object[] objArr97 = 0 == true ? 1 : 0;
        Object[] objArr98 = 0 == true ? 1 : 0;
        Object[] objArr99 = 0 == true ? 1 : 0;
        STRIPE_S710_DEVKIT = new DeviceType("STRIPE_S710_DEVKIT", 14, apiDeviceType11, list11, new HardwareModel(objArr95, null, objArr97, BBPosHardware.STRIPE_S710_DEVKIT, null, objArr93, objArr94, objArr96, null, 503, null), new SimulatedHardware(objArr99, BBPosHardware.STRIPE_S710_DEVKIT, null, 0 == true ? 1 : 0, 13, objArr98));
        Object[] objArr100 = 0 == true ? 1 : 0;
        Object[] objArr101 = 0 == true ? 1 : 0;
        Object[] objArr102 = 0 == true ? 1 : 0;
        Object[] objArr103 = 0 == true ? 1 : 0;
        Object[] objArr104 = 0 == true ? 1 : 0;
        UNKNOWN = new DeviceType("UNKNOWN", 15, "", CollectionsKt.emptyList(), new HardwareModel(objArr102, null, objArr104, BBPosHardware.BBPOS_MODEL_NOT_SET, null, objArr100, objArr101, objArr103, null, 503, defaultConstructorMarker), new SimulatedHardware(null, BBPosHardware.BBPOS_MODEL_NOT_SET, null, null, 13, null));
        DeviceType[] deviceTypeArr$values = $values();
        $VALUES = deviceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(deviceTypeArr$values);
        INSTANCE = new Companion(0 == true ? 1 : 0);
        $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new Function0<KSerializer<Object>>() { // from class: com.stripe.stripeterminal.external.models.DeviceType.Companion.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return DeviceTypeSerializer.INSTANCE;
            }
        });
    }
}
