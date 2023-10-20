package com.dao;

import com.entity.ShouruxiangqingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.ShouruxiangqingView;

/**
 * 收入详情 Dao 接口
 *
 * @author 
 */
public interface ShouruxiangqingDao extends BaseMapper<ShouruxiangqingEntity> {

   List<ShouruxiangqingView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
