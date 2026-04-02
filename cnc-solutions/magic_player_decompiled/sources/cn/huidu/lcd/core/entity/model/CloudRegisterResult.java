package cn.huidu.lcd.core.entity.model;

/* JADX INFO: loaded from: classes.dex */
public class CloudRegisterResult {
    public String clientId;
    public int error;
    public String message;
    public HostPort mqtt;
    public String password;
    public HostPort resources;
    public String username;

    public static class HostPort {
        public String host;
        public int port;
    }

    public CloudRegisterResult() {
    }

    public String getMqttHost() {
        HostPort hostPort = this.mqtt;
        if (hostPort != null) {
            return hostPort.host;
        }
        return null;
    }

    public int getMqttPort() {
        HostPort hostPort = this.mqtt;
        if (hostPort != null) {
            return hostPort.port;
        }
        return 0;
    }

    public String getResourcesHost() {
        HostPort hostPort = this.resources;
        if (hostPort != null) {
            return hostPort.host;
        }
        return null;
    }

    public int getResourcesPort() {
        HostPort hostPort = this.resources;
        if (hostPort != null) {
            return hostPort.port;
        }
        return 0;
    }

    public boolean isRegisterSuccess() {
        HostPort hostPort;
        HostPort hostPort2;
        return (this.error != 0 || this.clientId == null || this.username == null || this.password == null || (hostPort = this.mqtt) == null || hostPort.host == null || hostPort.port <= 0 || (hostPort2 = this.resources) == null || hostPort2.host == null || hostPort2.port <= 0) ? false : true;
    }

    public CloudRegisterResult(int i4) {
        this.error = i4;
    }
}
