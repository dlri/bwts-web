package com.dlri.chinacnr.bwts.controller;

import java.util.ArrayList;
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
import com.dlri.chinacnr.bwts.entity.RecordTotal;
import com.dlri.chinacnr.bwts.entity.Statistical;
import com.dlri.chinacnr.bwts.manager.Method;
import com.dlri.chinacnr.bwts.service.DetectionRecordService;

@Controller
@RequestMapping("/detectionRecord")
public class DetectionRecordController {

	@Autowired
	DetectionRecordService detectionRecordService;
	
	@RequestMapping("/queryRecordAction")
	public @ResponseBody Map<String, Object> queryDetectionRecordAction(@RequestParam(value="page", required=false) String page, 
            @RequestParam(value="rows", required=false) String rows, HttpServletRequest request){
		System.out.println("==================="+page+"=========="+rows);
		if(rows.equals("NaN")){
			rows="10";
		}
		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> reMap = new HashMap<String, Object>(); 
		Map<String,Object>map=new HashMap<String, Object>();
		String workShop=request.getParameter("workShop");
		String placement=request.getParameter("placement");
		String equipment=request.getParameter("equipment");
		String wheelCode=request.getParameter("wheelCode");
		String gearboxNum=request.getParameter("gearboxNum");
		String gearboxNog=request.getParameter("gearboxNog");
		String gearboxNop=request.getParameter("gearboxNop");
		String bearingNo=request.getParameter("bearingNo");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String tBedName = request.getParameter("tBedName");
		map.put("workShop", workShop==null||workShop.equals("请选择")?null:"%"+workShop+"%");
		map.put("placement", placement==null||placement.equals("请选择")?null:"%"+placement+"%");
		map.put("equipment", equipment==null||equipment.equals("请选择")?null:"%"+equipment+"%");
		map.put("wheelCode", wheelCode==null||wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("gearboxNum", gearboxNum==null||gearboxNum.equals("")?null:"%"+gearboxNum+"%");
		map.put("gearboxNog", gearboxNog==null||gearboxNog.equals("")?null:"%"+gearboxNog+"%");
		map.put("gearboxNop", gearboxNop==null||gearboxNop.equals("")?null:"%"+gearboxNop+"%");
		map.put("bearingNo", bearingNo==null||bearingNo.equals("")?null:"%"+bearingNo+"%");
		map.put("repairing", repairing==null||repairing.equals("全部")?null:repairing);
		map.put("startDate", startDate==null||startDate.equals("")?null:startDate);
		map.put("endDate", endDate==null||endDate.equals("")?null:endDate);
		map.put("firstPage", pageBean.getFirstPage());
		map.put("tBedName", tBedName==null||tBedName.equals("")||tBedName.equals("请选择") ? null : tBedName);
        RecordTotal total=detectionRecordService.queryDetectionRecordTotal(map);
        System.out.println(total.getSumDetails()+"====getSumDetails======");
        if(total.getTotal()!=0){
        	if(total.getSumDetails()/total.getTotal()==4){
            	map.put("rows", pageBean.getRows()*4);
            }else{
            	map.put("rows", pageBean.getRows()*8);
            }
        }else{
        	map.put("rows", pageBean.getRows());
        }
        
        
		List<DetectionRecord> list=detectionRecordService.queryDetectionRecordByCondition(map);
		System.out.println(list.size()+"=====DetectionDecord======");
		
		reMap.put("rows", list);
		reMap.put("total", total.getTotal());
		//System.out.println(lis+"==============");
		return reMap;
	}
	
	@RequestMapping("/queryLastTimeRecordAction")
	public @ResponseBody List<DetectionRecord> queryRecordByLastTimeAction( HttpServletRequest request){
		return detectionRecordService.queryRecordByLastTime();
	}
	
	@RequestMapping("/trendingAction")
	public @ResponseBody Map<String, Object> trendingAction(@RequestParam(value="page", required=false) String page, 
            @RequestParam(value="rows", required=false) String rows, HttpServletRequest request){
		System.out.println("==================="+page+"=========="+rows);
		if(rows.equals("NaN")){
			rows="10";
		}
		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> reMap = new HashMap<String, Object>(); 
		Map<String,Object>map=new HashMap<String, Object>();
		String wheelCode=request.getParameter("wheelCode");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String tBedName = request.getParameter("tBedName");
		map.put("wheelCode", wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("repairing", repairing.equals("全部")?null:repairing);
		map.put("startDate", startDate.equals("")?null:startDate);
		map.put("endDate", endDate.equals("")?null:endDate);
		map.put("firstPage", pageBean.getFirstPage());
		map.put("tBedName", tBedName.equals("") ? null : tBedName);
        RecordTotal total=detectionRecordService.queryDetectionRecordTotal(map);
        System.out.println(total.getSumDetails()+"====getSumDetails======");
        if(total.getTotal()!=0){
        	if(total.getSumDetails()/total.getTotal()==4){
            	map.put("rows", pageBean.getRows()*4);
            }else{
            	map.put("rows", pageBean.getRows()*8);
            }
        }else{
        	map.put("rows", pageBean.getRows());
        }
        
        
		List<DetectionRecord> list=detectionRecordService.queryDetectionRecordByCondition(map);
		System.out.println(list.size()+"=====DetectionDecord======");
		double floatArray[] = new double[list.size()];
		double floatArrayT[] = new double[list.size()+5];
		for(int i=0;i<list.size();i++){
			DetectionRecord dr=list.get(i);
			System.out.println("=====ttt:"+dr.getDetailsList().get(1).getValidValue());
			floatArray[i]=dr.getDetailsList().get(1).getValidValue();
		}
		Method me=new Method();
		floatArrayT=me.TimeSerCalculator(floatArray, 0.5, 5);
		List rList=new ArrayList();
		rList.add(floatArray);
		rList.add(floatArrayT);
		reMap.put("rows", rList);
		reMap.put("total", total.getTotal());
		//System.out.println(lis+"==============");
		return reMap;
	}
	
	
	@RequestMapping("/queryStatisticalAction")
	public @ResponseBody Map<String, Object> queryStatisticalAction(HttpServletRequest request){
		Map<String, Object> reMap = new HashMap<String, Object>(); 
		Map<String,Object>map=new HashMap<String, Object>();
		String workShop=request.getParameter("workShop");
		String placement=request.getParameter("placement");
		String equipment=request.getParameter("equipment");
		String wheelCode=request.getParameter("wheelCode");
		String gearboxNum=request.getParameter("gearboxNum");
		String gearboxNog=request.getParameter("gearboxNog");
		String gearboxNop=request.getParameter("gearboxNop");
		String bearingNo=request.getParameter("bearingNo");
		String repairing=request.getParameter("repairing");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String tBedName = request.getParameter("tBedName");
		//String evaluation=request.getParameter("evaluation");
		map.put("workShop", workShop==null||workShop.equals("请选择")?null:"%"+workShop+"%");
		map.put("placement", placement==null||placement.equals("请选择")?null:"%"+placement+"%");
		map.put("equipment", equipment==null||equipment.equals("请选择")?null:"%"+equipment+"%");
		map.put("wheelCode", wheelCode==null||wheelCode.equals("")?null:"%"+wheelCode+"%");
		map.put("gearboxNum", gearboxNum==null||gearboxNum.equals("")?null:"%"+gearboxNum+"%");
		map.put("gearboxNog", gearboxNog==null||gearboxNog.equals("")?null:"%"+gearboxNog+"%");
		map.put("gearboxNop", gearboxNop==null||gearboxNop.equals("")?null:"%"+gearboxNop+"%");
		map.put("bearingNo", bearingNo==null||bearingNo.equals("")?null:"%"+bearingNo+"%");
		map.put("repairing", repairing==null||repairing.equals("全部")?null:repairing);
		map.put("startDate", startDate==null||startDate.equals("")?null:startDate);
		map.put("endDate", endDate==null||endDate.equals("")?null:endDate);
		map.put("tBedName", tBedName==null||tBedName.equals("")||tBedName.equals("请选择") ? null : tBedName);
		map.put("evaluation","合格");
		List<Statistical> list=detectionRecordService.queryStatistialRecordByCondition(map);
		System.out.println(list.size()+"=====Statistical======"+startDate+"---"+endDate);
		
		reMap.put("rows", list);
		map.put("evaluation","不合格");
		List<Statistical> listN=detectionRecordService.queryStatistialRecordByCondition(map);
		reMap.put("listN", listN);
		//System.out.println(lis+"==============");
		return reMap;
	}
}
