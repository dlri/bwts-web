package com.dlri.chinacnr.bwts.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dlri.chinacnr.bwts.entity.DetectionRecord;
import com.dlri.chinacnr.bwts.entity.Page;
import com.dlri.chinacnr.bwts.service.DetectionRecordService;

@Controller
@RequestMapping("/detectionRecord")
public class DetectionRecordController {

	@Autowired
	DetectionRecordService detectionRecordService;
	
	@RequestMapping("/queryDetectionRecordAction")
	public @ResponseBody Map<String, Object> queryDetectionRecordAction(@RequestParam(value="page", required=false) String page, 
            @RequestParam(value="rows", required=false) String rows, HttpServletRequest request){
		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> reMap = new HashMap<String, Object>(); 
		Map<String,Object>map=new HashMap<String, Object>();
		String wheelCode=request.getParameter("wheelCode");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		map.put("wheelCode", wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("repairing", repairing.equals("")?null:repairing);
		map.put("startDate", startDate.equals("")?null:startDate);
		map.put("endDate", endDate.equals("")?null:endDate);
		map.put("firstPage", pageBean.getFirstPage());
        map.put("rows", pageBean.getRows());
		List<DetectionRecord> list=detectionRecordService.queryDetectionRecordByCondition(map);
		System.out.println(list.size()+"===========");
		long total=detectionRecordService.queryDetectionRecordTotal(map);
		reMap.put("rows", list);
		reMap.put("total", total);
		//System.out.println(lis+"==============");
		return reMap;
	}
}
