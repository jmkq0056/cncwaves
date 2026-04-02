package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.bbpos.bbdevice001.SerialPort;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc027zz {
    private aaa003zz aaa000;
    private int aaa001;
    SerialPort aaa002;
    private OutputStream aaa003;
    private InputStream aaa004;

    ccc027zz(aaa003zz aaa003zzVar) {
        this.aaa000 = aaa003zzVar;
    }

    private void aaa000(String str) {
    }

    synchronized void aaa000(boolean z, int i) {
        if (this.aaa002 == null) {
            if (i <= 0) {
                i = BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus ? 460800 : (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_GO) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) ? 3000000 : 115200;
            }
            try {
                try {
                    this.aaa002 = new SerialPort(new File("/dev/ttyBBposUart"), i, 0);
                } catch (Exception unused) {
                    if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyMT2"), 115200, 0);
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyMT2"), i, 0);
                        }
                    } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus) {
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHSL0"), 460800, 0);
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHSL0"), i, 0);
                        }
                    } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                        aaa000("[connect] open /dev/ttyS1, 115200");
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyS1"), 115200, 0);
                            aaa000("[connect] open success /dev/ttyS1, 115200");
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyS1"), i, 0);
                        }
                    } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_TOUCH) {
                        aaa000("[connect] WisePOS Touch");
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHS2"), 115200, 0);
                            aaa000("[connect] open success /dev/ttyHS2, 115200");
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHS2"), i, 0);
                        }
                    } else if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) {
                        aaa000("[connect] WisePOS SML");
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHS2"), 3000000, 0);
                            aaa000("[connect] open success /dev/ttyHS2, 3000000");
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyHS2"), i, 0);
                        }
                    } else if (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_GO)) {
                        aaa000("[connect] WisePOS Go");
                        if (i == 0) {
                            this.aaa002 = new SerialPort(new File("/dev/ttyBBposUart"), 115200, 0);
                            aaa000("[connect] open success /dev/ttyBBposUart, 115200");
                        } else {
                            this.aaa002 = new SerialPort(new File("/dev/ttyBBposUart"), i, 0);
                        }
                    } else if (i == 0) {
                        this.aaa002 = new SerialPort(new File("/dev/ttyMT1"), 115200, 0);
                    } else {
                        this.aaa002 = new SerialPort(new File("/dev/ttyMT1"), i, 0);
                    }
                }
                SerialPort serialPort = this.aaa002;
                if (serialPort != null) {
                    this.aaa003 = serialPort.getOutputStream();
                    this.aaa004 = this.aaa002.getInputStream();
                }
                aaa000(3);
                if (!z) {
                    this.aaa000.aaa000(this.aaa004, this.aaa003);
                }
            } catch (IOException e) {
                aaa000("[connect] IOException : " + e);
                this.aaa000.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_SERIAL, "Open serial port failed. IOException (error code - 3104)");
            } catch (SecurityException e2) {
                aaa000("[connect] SecurityException : " + e2);
                this.aaa000.aaa000(aaa003zz.aaa002zz.FAIL_TO_START_SERIAL, "Open serial port failed. SecurityException (error code - 3103)");
            }
        }
    }

    synchronized OutputStream aaa001() {
        return this.aaa003;
    }

    synchronized int aaa002() {
        SerialPort serialPort;
        try {
            try {
                new SerialPort(new File("/dev/ttyBBposUart"), BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus ? 460800 : (BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_GO) || BBDeviceController.aaa000(BBDeviceController.aaa006zz.WisePOS_SML)) ? 3000000 : 115200, 0).close();
            } catch (Exception unused) {
                if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
                    serialPort = new SerialPort(new File("/dev/ttyMT2"), 115200, 0);
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOSPlus) {
                    serialPort = new SerialPort(new File("/dev/ttyHSL0"), 460800, 0);
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
                    aaa000("[isSerialPortCanOpen] open /dev/ttyS1, 115200");
                    serialPort = new SerialPort(new File("/dev/ttyS1"), 115200, 0);
                    aaa000("[isSerialPortCanOpen] open success /dev/ttyS1, 115200");
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_TOUCH) {
                    aaa000("[isSerialPortCanOpen] WisePOS Touch");
                    serialPort = new SerialPort(new File("/dev/ttyHS2"), 115200, 0);
                    aaa000("[isSerialPortCanOpen] open success /dev/ttyHS2, 115200");
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SML) {
                    aaa000("[isSerialPortCanOpen] WisePOS SML");
                    serialPort = new SerialPort(new File("/dev/ttyHS2"), 3000000, 0);
                    aaa000("[isSerialPortCanOpen] open success /dev/ttyHS2, 3000000");
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_GO) {
                    aaa000("[isSerialPortCanOpen] WisePOS Go");
                    serialPort = new SerialPort(new File("/dev/ttyBBposUart"), 3000000, 0);
                    aaa000("[isSerialPortCanOpen] open success /dev/ttyBBposUart, 3000000");
                } else {
                    serialPort = new SerialPort(new File("/dev/ttyMT1"), 115200, 0);
                }
                serialPort.close();
                return 0;
            }
        } catch (IOException e) {
            aaa000("[isSerialPortCanOpen] IOException : " + e);
            return 2;
        } catch (SecurityException e2) {
            aaa000("[isSerialPortCanOpen] SecurityException : " + e2);
            return 1;
        }
        return 0;
    }

    private synchronized void aaa000(int i) {
        this.aaa001 = i;
    }

    synchronized void aaa000(boolean z) {
        aaa000("[stop]");
        if (this.aaa001 == 0) {
            return;
        }
        SerialPort serialPort = this.aaa002;
        if (serialPort != null) {
            serialPort.close();
            this.aaa002 = null;
        }
        aaa000(0);
        if (!z) {
            this.aaa000.aaa064();
        }
    }

    synchronized InputStream aaa000() {
        return this.aaa004;
    }
}
