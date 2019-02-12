package com.zlb.controller;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.type.IntegerTypeHandler;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlb.common.vo.SysResult;
import com.zlb.pojo.ProductAttr;
import com.zlb.pojo.ProductScore;
import com.zlb.pojo.ProductSer;
import com.zlb.pojo.SeriousIllnessProduct;
import com.zlb.service.SeriousIllnessProductService;
/**
 * 重疾产品管理controller
 * @author sicle
 *
 */
@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = Logger.getLogger(ProductController.class);
	@Autowired
	private SeriousIllnessProductService productService;
	/**
	 * 重疾产品页的跳转
	 * @return
	 */
	@RequestMapping("/seriousIllness.html")
	public String doSeriousIllnessIndex() {
		return "sys/serious_illness";
	}
	/**
	 * 期待页的跳转
	 * @return
	 */
	@RequestMapping("/forward.html")
	public String dolookforwardIndex() {
		return "sys/look_forward";
	}
	/**
	 * 产品添加
	 * @param productName
	 * @param companyProp
	 * @param scoreCompany
	 * @param scoreIllnessNum
	 * @param scoreIllnessProportion
	 * @param scoreIllnessTimes
	 * @param scoreMiddleCaseNum
	 * @param scoreMiddleCaseProportion
	 * @param scoreMiddleCaseTimes
	 * @param scoreDeadDuty
	 * @param scoreSeriousIllnessDuty
	 * @param scoreMildCaseNum
	 * @param scoreMildCaseTimes
	 * @param scoreMildCaseProportion
	 * @param attrCompany
	 * @param attrIllnessNum
	 * @param attrIllnessProportion
	 * @param attrIllnessTimes
	 * @param attrMiddleCaseNum
	 * @param attrMiddleCaseProportion
	 * @param attrMiddleCaseTimes
	 * @param attrDeadDuty
	 * @param attrSeriousIllnessDuty
	 * @param attrMildCaseNum
	 * @param attrMildCaseTimes
	 * @param attrMildCaseProportion
	 * @return
	 */
	@RequestMapping(value="/doInsertSeriousIllnessProduct.do", method = RequestMethod.POST)
	@ResponseBody
	public SysResult doInsertSeriousIllnessProduct(String productName,String companyProp,Float scoreCompany, 
			Float scoreIllnessNum,Float scoreIllnessProportion,Float scoreIllnessTimes,
			Float scoreMiddleCaseNum,Float scoreMiddleCaseProportion,Float scoreMiddleCaseTimes,
			Float scoreDeadDuty,Float scoreSeriousIllnessDuty, Float scoreMildCaseNum,
			Float scoreMildCaseTimes,Float scoreMildCaseProportion,String attrCompany,
			String attrIllnessNum,String attrIllnessProportion,String attrIllnessTimes,
			String attrMiddleCaseNum,String attrMiddleCaseProportion,String attrMiddleCaseTimes,
			String attrDeadDuty,String attrSeriousIllnessDuty,String attrMildCaseNum,
			String attrMildCaseTimes,String attrMildCaseProportion) {
		try {
			logger.info("---------新增产品");
			//对产品类进行赋值
			SeriousIllnessProduct product=new SeriousIllnessProduct();
			product.setProductName(productName);
			product.setCompanyProp(companyProp);
			//对产品属性进行赋值
			ProductAttr productAttr=new ProductAttr();
			productAttr.setAttrCompany(attrCompany);
			productAttr.setAttrDeadDuty(attrDeadDuty);
			productAttr.setAttrIllnessNum(attrIllnessNum);
			productAttr.setAttrIllnessProportion(attrIllnessProportion);
			productAttr.setAttrMiddleCaseTimes(attrMiddleCaseTimes);
			productAttr.setAttrMiddleCaseNum(attrMiddleCaseNum);
			productAttr.setAttrMiddleCaseProportion(attrMiddleCaseProportion);
			productAttr.setAttrIllnessTimes(attrIllnessTimes);
			productAttr.setAttrMildCaseNum(attrMildCaseNum);
			productAttr.setAttrMildCaseProportion(attrMildCaseProportion);
			productAttr.setAttrMildCaseTimes(attrMildCaseTimes);
			productAttr.setAttrSeriousIllnessDuty(attrSeriousIllnessDuty);
			//对产品评分进行赋值
			ProductScore productScore=new ProductScore();
			productScore.setScoreCompany(scoreCompany);
			productScore.setScoreDeadDuty(scoreDeadDuty);
			productScore.setScoreIllnessNum(scoreIllnessNum);
			productScore.setScoreIllnessProportion(scoreIllnessProportion);
			productScore.setScoreIllnessTimes(scoreIllnessTimes);
			productScore.setScoreMiddleCaseNum(scoreMiddleCaseNum);
			productScore.setScoreMiddleCaseProportion(scoreMiddleCaseProportion);
			productScore.setScoreMiddleCaseTimes(scoreMiddleCaseTimes);
			productScore.setScoreMildCaseNum(scoreMildCaseNum);
			productScore.setScoreMildCaseTimes(scoreMildCaseTimes);
			productScore.setScoreMildCaseProportion(scoreMildCaseProportion);
			productScore.setScoreSeriousIllnessDuty(scoreSeriousIllnessDuty);
			logger.info("--------"+productAttr);
			logger.info("--------"+productScore);
			int result=productService.insertSeriousIllnessProduct(productAttr,productScore,product);
			if(result==1) {
				return SysResult.build(200, "产品添加成功！");
			}
			return SysResult.build(201, "产品添加失败！");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "产品添加失败！");
	}
	/**
	 * 待上线产品页的跳转
	 * @return
	 */
	@RequestMapping("/seriousIllnessProduct/soonList.html")
	public String doSoonList() {
		return "sys/soon_list";
	}
	/**
	 * 分页查找待上线产品信息
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("/doFindSoonList.do")
	@ResponseBody
	public SysResult doFindSoonList(Integer page,Integer rows) {
		logger.info("-----------doFindSoonList-----------");
		try {
			Map<String, Object> result=productService.findSoonList(page,rows);
			logger.info(result);
			return SysResult.oK(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "查询失败");
	}
	/**
	 * 删除产品操作
	 * @param productId
	 * @param attrId
	 * @param scoreId
	 * @return
	 */
	@RequestMapping("/doDeleteObject.do")
	@ResponseBody
	public SysResult doDeleteObject(Integer productId,Integer attrId,Integer scoreId) {
		logger.info("---------------doDeleteObject------------");
		try {
			productService.deleteObjectById(productId,attrId,scoreId);
			return SysResult.build(200, "删除成功!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "删除失败！");
	}
	/**
	 * 产品上线操作
	 * @param productId
	 * @return
	 */
	@RequestMapping("/changeStaOnline.do")
	@ResponseBody
	public SysResult changeStaOnline(Integer productId) {
		logger.info("---------------changeStaOnline------------");
		try {
			productService.changeStaOnline(productId);
			return SysResult.build(200, "上线成功!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "上线失败！");
	}
	@RequestMapping("/changeStaSoon.do")
	@ResponseBody
	public SysResult changeStaSoon(Integer productId) {
		logger.info("---------------changeStaSoon------------");
		try {
			productService.changeStaSoon(productId);
			return SysResult.build(200, "下线成功!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "下线失败！");
	}
	/**
	 * 已上线产品页的跳转
	 * @return
	 */
	@RequestMapping("/seriousIllnessProduct/onlineList.html")
	public String onlineList() {
		return "sys/online_list";
	}
	/**
	 * 分页查找待上线产品信息
	 * @param page
	 * @param rows
	 * @return
	 */
	
	@RequestMapping("/doFindOnlineList.do")
	@ResponseBody
	public SysResult doFindOnlineList(Integer page,Integer rows) {
		logger.info("-----------doFindOnlineList-----------");
		try {
			Map<String, Object> result=productService.findOnlineList(page,rows);
			logger.info(result);
			return SysResult.oK(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "查询失败");
	}
	/**
	 * 产品更新页的跳转
	 * @return
	 */
	@RequestMapping("/serious_illness_update.html")
	public String updatePage() {
		return "sys/serious_illness_update";
	}
	
	/**
	 * 更新重疾产品
	 * @param productName
	 * @param companyProp
	 * @param scoreCompany
	 * @param scoreIllnessNum
	 * @param scoreIllnessProportion
	 * @param scoreIllnessTimes
	 * @param scoreMiddleCaseNum
	 * @param scoreMiddleCaseProportion
	 * @param scoreMiddleCaseTimes
	 * @param scoreDeadDuty
	 * @param scoreSeriousIllnessDuty
	 * @param scoreMildCaseNum
	 * @param scoreMildCaseTimes
	 * @param scoreMildCaseProportion
	 * @param attrCompany
	 * @param attrIllnessNum
	 * @param attrIllnessProportion
	 * @param attrIllnessTimes
	 * @param attrDeadDuty
	 * @param attrSeriousIllnessDuty
	 * @param attrMildCaseNum
	 * @param attrMiddleCaseNum
	 * @param attrMiddleCaseProportion
	 * @param attrMiddleCaseTimes
	 * @param attrMildCaseTimes
	 * @param attrMildCaseProportion
	 * @param productId
	 * @param attrId
	 * @param scoreId
	 * @return
	 */
	@RequestMapping(value="/doUpdateSeriousIllnessProduct.do", method = RequestMethod.POST)
	@ResponseBody
	public SysResult doUpdateSeriousIllnessProduct(String productName, String companyProp,Float scoreCompany, 
			Float scoreIllnessNum,Float scoreIllnessProportion,Float scoreIllnessTimes,
			Float scoreMiddleCaseNum,Float scoreMiddleCaseProportion,Float scoreMiddleCaseTimes,
			Float scoreDeadDuty,Float scoreSeriousIllnessDuty, Float scoreMildCaseNum,
			Float scoreMildCaseTimes,Float scoreMildCaseProportion,String attrCompany,
			String attrIllnessNum,String attrIllnessProportion,String attrIllnessTimes,
			String attrDeadDuty,String attrSeriousIllnessDuty,String attrMildCaseNum,
			String attrMiddleCaseNum,String attrMiddleCaseProportion,String attrMiddleCaseTimes,
			String attrMildCaseTimes,String attrMildCaseProportion,Integer productId,
			Integer attrId,Integer scoreId) {
		try {
			logger.info("---------doUpdateSeriousIllnessProduct----------");
			//对产品类进行赋值
			SeriousIllnessProduct product=new SeriousIllnessProduct();
			product.setProductId(productId);
			product.setProductName(productName);
			product.setCompanyProp(companyProp);
			product.setScoreId(scoreId);
			product.setAttrId(attrId);
			//对产品属性进行赋值
			ProductAttr productAttr=new ProductAttr();
			productAttr.setAttrId(attrId);
			productAttr.setAttrCompany(attrCompany);
			productAttr.setAttrDeadDuty(attrDeadDuty);
			productAttr.setAttrIllnessNum(attrIllnessNum);
			productAttr.setAttrIllnessProportion(attrIllnessProportion);
			productAttr.setAttrIllnessTimes(attrIllnessTimes);
			productAttr.setAttrMiddleCaseTimes(attrMiddleCaseTimes);
			productAttr.setAttrMiddleCaseNum(attrMiddleCaseNum);
			productAttr.setAttrMiddleCaseProportion(attrMiddleCaseProportion);
			productAttr.setAttrMildCaseNum(attrMildCaseNum);
			productAttr.setAttrMildCaseProportion(attrMildCaseProportion);
			productAttr.setAttrMildCaseTimes(attrMildCaseTimes);
			productAttr.setAttrSeriousIllnessDuty(attrSeriousIllnessDuty);
			//对产品评分进行赋值
			ProductScore productScore=new ProductScore();
			productScore.setScoreId(scoreId);
			productScore.setScoreCompany(scoreCompany);
			productScore.setScoreDeadDuty(scoreDeadDuty);
			productScore.setScoreIllnessNum(scoreIllnessNum);
			productScore.setScoreIllnessProportion(scoreIllnessProportion);
			productScore.setScoreIllnessTimes(scoreIllnessTimes);
			productScore.setScoreMiddleCaseNum(scoreMiddleCaseNum);
			productScore.setScoreMiddleCaseProportion(scoreMiddleCaseProportion);
			productScore.setScoreMiddleCaseTimes(scoreMiddleCaseTimes);
			productScore.setScoreMildCaseNum(scoreMildCaseNum);
			productScore.setScoreMildCaseTimes(scoreMildCaseTimes);
			productScore.setScoreMildCaseProportion(scoreMildCaseProportion);
			productScore.setScoreSeriousIllnessDuty(scoreSeriousIllnessDuty);

			logger.info("--------"+product);
			logger.info("--------"+productAttr);
			logger.info("--------"+productScore);
			productService.updateSeriousIllnessProduct(productAttr,productScore,product);
			return SysResult.build(200, "产品更新成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SysResult.build(201, "产品更新失败！");
	}
}
