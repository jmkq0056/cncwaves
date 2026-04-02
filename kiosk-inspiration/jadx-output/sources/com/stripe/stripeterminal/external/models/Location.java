package com.stripe.stripeterminal.external.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Location.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 12\u00060\u0001j\u0002`\u0002:\u000201BW\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010BO\b\u0007\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0017\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rHÆ\u0003JV\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u000b2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u0004HÖ\u0001J\t\u0010'\u001a\u00020\u0006HÖ\u0001J&\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.HÁ\u0001¢\u0006\u0002\b/R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u00062"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Location;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.ID, "", "address", "Lcom/stripe/stripeterminal/external/models/Address;", "displayName", "livemode", "", "metadata", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/Address;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Address;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V", "getAddress", "()Lcom/stripe/stripeterminal/external/models/Address;", "getDisplayName", "()Ljava/lang/String;", "getId", "getLivemode", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMetadata", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Address;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/Location;", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Location implements java.io.Serializable {
    private final Address address;
    private final String displayName;
    private final String id;
    private final Boolean livemode;
    private final Map<String, String> metadata;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE)};

    public Location() {
        this((String) null, (Address) null, (String) null, (Boolean) null, (Map) null, 31, (DefaultConstructorMarker) null);
    }

    public Location(String str) {
        this(str, (Address) null, (String) null, (Boolean) null, (Map) null, 30, (DefaultConstructorMarker) null);
    }

    public Location(String str, Address address) {
        this(str, address, (String) null, (Boolean) null, (Map) null, 28, (DefaultConstructorMarker) null);
    }

    public Location(String str, Address address, String str2) {
        this(str, address, str2, (Boolean) null, (Map) null, 24, (DefaultConstructorMarker) null);
    }

    public Location(String str, Address address, String str2, Boolean bool) {
        this(str, address, str2, bool, (Map) null, 16, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Location copy$default(Location location, String str, Address address, String str2, Boolean bool, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = location.id;
        }
        if ((i & 2) != 0) {
            address = location.address;
        }
        if ((i & 4) != 0) {
            str2 = location.displayName;
        }
        if ((i & 8) != 0) {
            bool = location.livemode;
        }
        if ((i & 16) != 0) {
            map = location.metadata;
        }
        Map map2 = map;
        String str3 = str2;
        return location.copy(str, address, str3, bool, map2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Address getAddress() {
        return this.address;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getLivemode() {
        return this.livemode;
    }

    public final Map<String, String> component5() {
        return this.metadata;
    }

    public final Location copy(String id, Address address, String displayName, Boolean livemode, Map<String, String> metadata) {
        return new Location(id, address, displayName, livemode, metadata);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Location)) {
            return false;
        }
        Location location = (Location) other;
        return Intrinsics.areEqual(this.id, location.id) && Intrinsics.areEqual(this.address, location.address) && Intrinsics.areEqual(this.displayName, location.displayName) && Intrinsics.areEqual(this.livemode, location.livemode) && Intrinsics.areEqual(this.metadata, location.metadata);
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Address address = this.address;
        int iHashCode2 = (iHashCode + (address == null ? 0 : address.hashCode())) * 31;
        String str2 = this.displayName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.livemode;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Map<String, String> map = this.metadata;
        return iHashCode4 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "Location(id=" + this.id + ", address=" + this.address + ", displayName=" + this.displayName + ", livemode=" + this.livemode + ", metadata=" + this.metadata + ')';
    }

    /* JADX INFO: compiled from: Location.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Location$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Location;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Location> serializer() {
            return Location$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Location(int i, String str, Address address, String str2, Boolean bool, Map map, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 1) == 0) {
            this.id = null;
        } else {
            this.id = str;
        }
        if ((i & 2) == 0) {
            this.address = null;
        } else {
            this.address = address;
        }
        if ((i & 4) == 0) {
            this.displayName = null;
        } else {
            this.displayName = str2;
        }
        if ((i & 8) == 0) {
            this.livemode = null;
        } else {
            this.livemode = bool;
        }
        if ((i & 16) == 0) {
            this.metadata = null;
        } else {
            this.metadata = map;
        }
    }

    public Location(String str, Address address, String str2, Boolean bool, Map<String, String> map) {
        this.id = str;
        this.address = address;
        this.displayName = str2;
        this.livemode = bool;
        this.metadata = map;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(Location self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.id != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.id);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.address != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, Address$$serializer.INSTANCE, self.address);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.displayName != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.displayName);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.livemode != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, BooleanSerializer.INSTANCE, self.livemode);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 4) && self.metadata == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 4, kSerializerArr[4], self.metadata);
    }

    public /* synthetic */ Location(String str, Address address, String str2, Boolean bool, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : address, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? null : map);
    }

    public final String getId() {
        return this.id;
    }

    public final Address getAddress() {
        return this.address;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final Boolean getLivemode() {
        return this.livemode;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }
}
