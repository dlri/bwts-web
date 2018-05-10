package com.dlri.chinacnr.bwts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dlri.chinacnr.bwts.entity.Protocol;
import com.dlri.chinacnr.bwts.service.ProtocolService;

@Controller
@RequestMapping("/protocol")
public class ProtocolController {

	@Autowired
	ProtocolService protocolService;
	
	@RequestMapping("/getAllList")
	public String getAllList(HttpServletRequest request){
		List<Protocol> list=protocolService.getAllList();
		request.setAttribute("list", list);
		for(Protocol pro:list){
		   System.out.println(pro.toString());
		}
		return "/index";
	}
	
	@RequestMapping("/createNewTable")
	public String createNewTable(HttpServletRequest request){
		protocolService.createNewTable("newTest", "t_protocol");
		return "/index";
	}
	
	@RequestMapping("/createDynamicTable")
	public String createDynamicTable(HttpServletRequest request){
		protocolService.createDynamicTable("dyn_RUN001");
		return "/index";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		//protocolService.add("test");
		return "/index";
	}
}
