package cn.huidu.lcd.transmit.model;

/* JADX INFO: loaded from: classes.dex */
public class ResultData {
    public Object data;
    public String errorMsg;
    public String result;
    public Long timestamp;

    public ResultData() {
    }

    public static ResultData error(String str, String str2) {
        ResultData resultData = new ResultData();
        resultData.result = str;
        resultData.errorMsg = str2;
        return resultData;
    }

    public ResultData(String str) {
        this.result = str;
    }

    public ResultData(String str, Object obj) {
        this.result = str;
        this.data = obj;
    }
}
