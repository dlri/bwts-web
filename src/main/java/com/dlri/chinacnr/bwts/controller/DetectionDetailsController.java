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

import com.dlri.chinacnr.bwts.entity.DetectionDetails;
import com.dlri.chinacnr.bwts.entity.Page;
import com.dlri.chinacnr.bwts.service.DetectionDetailsService;

@Controller
@RequestMapping("/detectionDetails")
public class DetectionDetailsController {

	@Autowired
	DetectionDetailsService detectionDetailsService;
	
	@RequestMapping("/queryDetailsAction")
	public @ResponseBody Map<String, Object> queryDetectionDetailsAction(@RequestParam(value="page", required=false) String page, 
            @RequestParam(value="rows", required=false) String rows, HttpServletRequest request){
		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> reMap = new HashMap<String, Object>(); 
		Map<String,Object>map=new HashMap<String, Object>();
		String wheelCode=request.getParameter("wheelCode");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String tBedName=request.getParameter("tBedName");
		String channelName=request.getParameter("channelName");
		map.put("wheelCode", wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("repairing", repairing.equals("")?null:repairing);
		map.put("startDate", startDate.equals("")?null:startDate);
		map.put("endDate", endDate.equals("")?null:endDate);
		map.put("tBedName", tBedName);
		map.put("channelName", channelName);
		map.put("firstPage", pageBean.getFirstPage());
        map.put("rows", pageBean.getRows());
        System.out.println("===========");
		List<DetectionDetails> list=detectionDetailsService.queryDetectionDetailsByCondition(map);
		System.out.println(list.size()+"===========");
		//long total=detectionDetailsService.queryDetectionDetailsTotal(map);
		reMap.put("rows", list);
		reMap.put("total", 99);
		//System.out.println(lis+"==============");
		return reMap;
	}
}
