package com.stripe.core.connectivity;

import java.net.InetAddress;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectivityDataClasses.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J=\u0010\u0015\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/stripe/core/connectivity/NetworkLinkProperties;", "", "dnsServers", "", "Ljava/net/InetAddress;", "subnetMask", "gateway", "ipAddress", "", "(Ljava/util/List;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)V", "getDnsServers", "()Ljava/util/List;", "getGateway", "()Ljava/net/InetAddress;", "getIpAddress", "()Ljava/lang/String;", "getSubnetMask", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class NetworkLinkProperties {
    private final List<InetAddress> dnsServers;
    private final InetAddress gateway;
    private final String ipAddress;
    private final InetAddress subnetMask;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetworkLinkProperties copy$default(NetworkLinkProperties networkLinkProperties, List list, InetAddress inetAddress, InetAddress inetAddress2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = networkLinkProperties.dnsServers;
        }
        if ((i & 2) != 0) {
            inetAddress = networkLinkProperties.subnetMask;
        }
        if ((i & 4) != 0) {
            inetAddress2 = networkLinkProperties.gateway;
        }
        if ((i & 8) != 0) {
            str = networkLinkProperties.ipAddress;
        }
        return networkLinkProperties.copy(list, inetAddress, inetAddress2, str);
    }

    public final List<InetAddress> component1() {
        return this.dnsServers;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final InetAddress getSubnetMask() {
        return this.subnetMask;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final InetAddress getGateway() {
        return this.gateway;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final NetworkLinkProperties copy(List<? extends InetAddress> dnsServers, InetAddress subnetMask, InetAddress gateway, String ipAddress) {
        Intrinsics.checkNotNullParameter(dnsServers, "dnsServers");
        return new NetworkLinkProperties(dnsServers, subnetMask, gateway, ipAddress);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NetworkLinkProperties)) {
            return false;
        }
        NetworkLinkProperties networkLinkProperties = (NetworkLinkProperties) other;
        return Intrinsics.areEqual(this.dnsServers, networkLinkProperties.dnsServers) && Intrinsics.areEqual(this.subnetMask, networkLinkProperties.subnetMask) && Intrinsics.areEqual(this.gateway, networkLinkProperties.gateway) && Intrinsics.areEqual(this.ipAddress, networkLinkProperties.ipAddress);
    }

    public int hashCode() {
        int iHashCode = this.dnsServers.hashCode() * 31;
        InetAddress inetAddress = this.subnetMask;
        int iHashCode2 = (iHashCode + (inetAddress == null ? 0 : inetAddress.hashCode())) * 31;
        InetAddress inetAddress2 = this.gateway;
        int iHashCode3 = (iHashCode2 + (inetAddress2 == null ? 0 : inetAddress2.hashCode())) * 31;
        String str = this.ipAddress;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "NetworkLinkProperties(dnsServers=" + this.dnsServers + ", subnetMask=" + this.subnetMask + ", gateway=" + this.gateway + ", ipAddress=" + this.ipAddress + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NetworkLinkProperties(List<? extends InetAddress> dnsServers, InetAddress inetAddress, InetAddress inetAddress2, String str) {
        Intrinsics.checkNotNullParameter(dnsServers, "dnsServers");
        this.dnsServers = dnsServers;
        this.subnetMask = inetAddress;
        this.gateway = inetAddress2;
        this.ipAddress = str;
    }

    public final List<InetAddress> getDnsServers() {
        return this.dnsServers;
    }

    public final InetAddress getSubnetMask() {
        return this.subnetMask;
    }

    public final InetAddress getGateway() {
        return this.gateway;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }
}
