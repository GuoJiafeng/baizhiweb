package com.baizhi.service;

import com.baizhi.entity.BaiZhiOrder;
import com.baizhi.entity.BaiZhiUser;

public interface BaiZhiOrderService {
	public void insert(BaiZhiOrder order);
	Double getPrice(BaiZhiOrder order);
}
