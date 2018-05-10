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
import org.springframework.web.servlet.ModelAndView;

import com.dlri.chinacnr.bwts.entity.DynRecord;
import com.dlri.chinacnr.bwts.entity.Page;
import com.dlri.chinacnr.bwts.service.DynRecordService;

@Controller
@RequestMapping("/record")
public class DynRecordController {
	@Autowired
	private DynRecordService dynRecordService;
	
	@RequestMapping("/list")
	public ModelAndView getAllList(HttpServletRequest request){
		List<DynRecord> list=dynRecordService.getAllList();
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("record/list");
		
		//request.setAttribute("list", list);
		//for(DynRecord pro:list){
		//   System.out.println(pro.toString());
		//}
		return mav;
	}
	
	@RequestMapping("/ajax")
	public @ResponseBody List<DynRecord> ajaxList(HttpServletRequest request){
		List<DynRecord> list=dynRecordService.getAllList();
		return list;
	}
	/*没有用处了*/
	@RequestMapping("/queryDynRecordAction")
	public @ResponseBody List<DynRecord> queryDynRecordAction(HttpServletRequest request){
		Map<String,Object>map=new HashMap<String, Object>();
		String wheelCode=request.getParameter("wheelCode");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		map.put("wheelCode", wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("repairing", repairing.equals("")?null:repairing);
		map.put("startDate", startDate.equals("")?null:startDate);
		map.put("endDate", endDate.equals("")?null:endDate);
		List<DynRecord> list=dynRecordService.queryDynRecordService(map);
		return list;
	}
	
	@RequestMapping("/queryDynRecordTocalAction")
	public @ResponseBody Map<String, Object> queryDynRecordTocalAction(@RequestParam(value="page", required=false) String page, 
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
		List<DynRecord> list=dynRecordService.queryDynRecordService(map);
		long total=dynRecordService.queryDynRecordTotalDao(map);
		reMap.put("rows", list);
		reMap.put("total", total);
		return reMap;
	}
}
