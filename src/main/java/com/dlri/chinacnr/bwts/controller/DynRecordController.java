package com.dlri.chinacnr.bwts.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
/*
	@RequestMapping("/list")
	public ModelAndView getAllList(HttpServletRequest request) {
		List<DynRecord> list = dynRecordService.getAllList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("record/list");
		return mav;
	}

	@RequestMapping("/ajax")
	public @ResponseBody List<DynRecord> ajaxList(HttpServletRequest request) {
		List<DynRecord> list = dynRecordService.getAllList();
		return list;
	}
*/

	@RequestMapping("/queryDynRecordTocalAction")
	public @ResponseBody Map<String, Object> queryDynRecordTocalAction(
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "rows", required = false) String rows, HttpServletRequest request) {

		Page pageBean = new Page(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> reMap = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		String wheelCode = request.getParameter("wheelCode");
		String repairing = request.getParameter("repairing");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String tBedName = request.getParameter("tBedName");
		map.put("wheelCode", wheelCode.equals("") ? null : "%" + wheelCode + "%");
		map.put("repairing", repairing.equals("") ? null : repairing);
		map.put("tBedName", tBedName.equals("") ? null : tBedName);
		map.put("startDate", startDate.equals("") ? null : startDate);
		map.put("endDate", endDate.equals("") ? null : endDate);
		map.put("firstPage", pageBean.getFirstPage());
		map.put("rows", pageBean.getRows());
		List<DynRecord> list = dynRecordService.queryDynRecordService(map);
		long total = dynRecordService.queryDynRecordTotalDao(map);
		reMap.put("rows", list);
		reMap.put("total", total);
		return reMap;
	}

	@RequestMapping("/show")
	public String show(HttpServletRequest request) {
		String testBedNum = request.getParameter("testBedNum");
		System.out.println("testBedNum:" + testBedNum);
		request.setAttribute("testBedNum", testBedNum);
		return "/showRecord";
	}

	@RequestMapping(value = { "download" }, method = { RequestMethod.GET })
	public void download(HttpServletRequest request, HttpServletResponse response, @RequestHeader String referer) {
		System.out.println(referer.substring(0,referer.lastIndexOf("/")+1));
		String fileName = request.getParameter("fileName");
		String filePath = request.getParameter("filePath");
		try {
			fileName=URLEncoder.encode(fileName,"utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		String url =referer.substring(0,referer.lastIndexOf("/")+1)+"pdf/" + filePath+"/"+ fileName;
		System.out.println("======ÏÂÔØµÄÂ·¾¶========url:" + url);
		HttpURLConnection conn = null;
		InputStream is = null;
		OutputStream os = null;
		BufferedInputStream bis = null;
		BufferedOutputStream bos=null;
		response.setContentType("application/x-download");
		String browserType = request.getHeader("User-Agent").toLowerCase();
		if (browserType.indexOf("msie") >= 0) {
			try {
				fileName = URLEncoder.encode(fileName, "utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else {
			try {
				fileName = new String(fileName.getBytes(), "ISO-8859-1");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		// response.setContentType("");
		try {
			URL httpUrl = new URL(url);
			conn = (HttpURLConnection)httpUrl.openConnection();
			conn.setDoInput(true);
			conn.setDoOutput(true);
			conn.setUseCaches(false);
			conn.connect();
			is = conn.getInputStream();
			bis = new BufferedInputStream(is);
			os = response.getOutputStream();
			bos=new BufferedOutputStream(os);
			IOUtils.copy(bis, bos);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (os != null) {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (bis != null) {
				try {
					bis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (is != null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
