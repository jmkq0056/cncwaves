package org.seamless.util;

import android.support.v4.media.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Pager implements Serializable {
    private Long numOfRecords;
    private Integer page;
    private Long pageSize;

    public Pager() {
        this.numOfRecords = 0L;
        this.page = 1;
        this.pageSize = 15L;
    }

    public int getFirstPage() {
        return 1;
    }

    public long getIndexRangeBegin() {
        long jLongValue = getPageSize().longValue() * ((long) (getPage().intValue() - 1));
        long jLongValue2 = getNumOfRecords().longValue() - 1;
        if (jLongValue < 0) {
            jLongValue = 0;
        }
        return Math.max(Math.min(jLongValue2, jLongValue), 0L);
    }

    public long getIndexRangeEnd() {
        return Math.min(getIndexRangeBegin() + (getPageSize().longValue() - 1), getNumOfRecords().longValue() - 1);
    }

    public long getLastPage() {
        long jLongValue = this.numOfRecords.longValue() / this.pageSize.longValue();
        if (this.numOfRecords.longValue() % this.pageSize.longValue() == 0) {
            jLongValue--;
        }
        return jLongValue + 1;
    }

    public int getNextPage() {
        return this.page.intValue() + 1;
    }

    public Long getNumOfRecords() {
        return this.numOfRecords;
    }

    public Integer getPage() {
        return this.page;
    }

    public Long getPageSize() {
        return this.pageSize;
    }

    public int getPreviousPage() {
        return this.page.intValue() - 1;
    }

    public boolean isNextPageAvailable() {
        return this.numOfRecords.longValue() - 1 > getIndexRangeEnd();
    }

    public boolean isPreviousPageAvailable() {
        return getIndexRangeBegin() + 1 > getPageSize().longValue();
    }

    public boolean isSeveralPages() {
        return getNumOfRecords().longValue() != 0 && getNumOfRecords().longValue() > getPageSize().longValue();
    }

    public void setNumOfRecords(Long l4) {
        this.numOfRecords = l4;
    }

    public void setPage(Integer num) {
        if (num != null) {
            this.page = num;
        }
    }

    public void setPageSize(Long l4) {
        if (l4 != null) {
            this.pageSize = l4;
        }
    }

    public String toString() {
        StringBuilder sbA = f.a("Pager - Records: ");
        sbA.append(getNumOfRecords());
        sbA.append(" Page size: ");
        sbA.append(getPageSize());
        return sbA.toString();
    }

    public Pager(Long l4) {
        this.numOfRecords = 0L;
        this.page = 1;
        this.pageSize = 15L;
        this.numOfRecords = l4;
    }

    public Pager(Long l4, Integer num) {
        this.numOfRecords = 0L;
        this.page = 1;
        this.pageSize = 15L;
        this.numOfRecords = l4;
        this.page = num;
    }

    public Pager(Long l4, Integer num, Long l5) {
        this.numOfRecords = 0L;
        this.page = 1;
        this.pageSize = 15L;
        this.numOfRecords = l4;
        this.page = num;
        this.pageSize = l5;
    }
}
