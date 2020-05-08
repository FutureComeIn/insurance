package com.dxm.insuranceSpring.utils;

import org.apache.ibatis.jdbc.SQL;

import com.dxm.insuranceSpring.pojo.Policyholders;
import com.dxm.insuranceSpring.pojo.Recognizee;
import com.dxm.insuranceSpring.pojo.Warranty;

import ch.qos.logback.core.net.SyslogOutputStream;


public class WarrantySqlUtils {
	/**
	 * 根据多个条件查询投保人信息
	 * @param param
	 * @return
	 */
	public String selectPolicyholders(final Policyholders pc) {
		return new SQL() {
			{
				SELECT("*");
				FROM("t_policyholders");
				if(pc.getPolicyholdersId()!=null && pc.getPolicyholdersId()>0) {
					WHERE("policyholdersId=#{policyholdersId}");
				}
				if(pc.getPolicyholdersName()!=null && !"".equals(pc.getPolicyholdersName())) {
					WHERE("policyholdersName like '%"+pc.getPolicyholdersName()+"%'");
				}
				if(pc.getCardId()!=null && !"".equals(pc.getCardId())) {
					WHERE("cardId=#{cardId}");
				}
			}
		}.toString();
	}
	/**
	 * 根据多个条件查询投保人信息
	 * @param param
	 * @return
	 */
	public String selectCountPolicyholders(final Policyholders pc) {
		return new SQL() {
			{
				SELECT("count(1)");
				FROM("t_policyholders");
				if(pc.getPolicyholdersId()!=null && pc.getPolicyholdersId()>0) {
					WHERE("policyholdersId=#{policyholdersId}");
				}
				if(pc.getPolicyholdersName()!=null && !"".equals(pc.getPolicyholdersName())) {
					WHERE("policyholdersName like '%"+pc.getPolicyholdersName()+"%'");
				}
				if(pc.getCardId()!=null && !"".equals(pc.getCardId())) {
					WHERE("cardId=#{cardId}");
				}
			}
		}.toString();
	}
	/**
	 * 修改投保人信息
	 * @param param
	 * @return
	 */
	public String updatePolicyholders(final Policyholders pc){
		return new SQL(){
			{
				UPDATE("t_policyholders");
				if(pc.getPolicyholdersId()!=null) {
					SET("policyholdersId=#{policyholdersId}");
				}
				if(pc.getPolicyholdersName()!=null) {
					SET("policyholdersName=#{policyholdersName}");
				}
				if(pc.getSex()!=null) {
					SET("sex=#{sex}");
				}
				if(pc.getCardId()!=null) {
					SET("cardId=#{cardId}");
				}
				if(pc.getTel()!=null) {
					SET("tel=#{tel}");
				}
				if(pc.getAddressShen()!=null) {
					SET("addressShen=#{addressShen}");
				}
				if(pc.getAddressShi()!=null) {
					SET("addressShi=#{addressShi}");
				}
				if(pc.getEmail()!=null) {
					SET("email=#{email}");
				}
				WHERE("policyholdersId=#{policyholdersId}");
			}
		}.toString();
	}
	/**
	 * 多个条件查询被保人信息
	 * @param param
	 * @returnselectCountRecognizee
	 */
	public String selectRecognizee(final Recognizee rg) {
		return new SQL() {
			{
				SELECT("*");
				FROM("t_recognizee");
				if(rg.getRecognizeeId()!=null && rg.getRecognizeeId()>0) {
					WHERE("recognizeeId=#{recognizeeId}");
				}
				if(rg.getRecognizeeName()!=null && !"".equals(rg.getRecognizeeName())) {
					WHERE("recognizeeName like '%"+rg.getRecognizeeName()+"%'");
				}
				if(rg.getCardId()!=null && !"".equals(rg.getCardId())) {
					WHERE("cardId=#{cardId}");
				}
			}
		}.toString();
	}
	/**
	 * 多个条件查询被保人信息
	 * @param param
	 * @return
	 */
	public String selectCountRecognizee(final Recognizee rg) {
		System.out.println("11111111="+rg);
		return new SQL() {
			{
				SELECT("count(1)");
				FROM("t_recognizee");
				if(rg.getRecognizeeId()!=null && rg.getRecognizeeId()>0) {
					WHERE("recognizeeId=#{recognizeeId}");
				}
				if(rg.getRecognizeeName()!=null && !"".equals(rg.getRecognizeeName())) {
					WHERE("recognizeeName like '%"+rg.getRecognizeeName()+"%'");
					System.out.println("11111111="+WHERE("recognizeeName like '%"+rg.getRecognizeeName()+"%'"));
				}
				if(rg.getCardId()!=null && !"".equals(rg.getCardId())) {
					WHERE("cardId=#{cardId}");
				}
			}
		}.toString();
	}
	/**
	 * 修改被保人信息
	 * @param rg
	 * @return
	 */
	public String updateRecognizee(final Recognizee rg){
		return new SQL(){
			{
				UPDATE("t_recognizee");
				if(rg.getRecognizeeId()!=null) {
					SET("recognizeeId=#{recognizeeId}");
				}
				if(rg.getRecognizeeName()!=null) {
					SET("recognizeeName=#{recognizeeName}");
				}
				if(rg.getSex()!=null) {
					SET("sex=#{sex}");
				}
				if(rg.getCardId()!=null) {
					SET("cardId=#{cardId}");
				}
				if(rg.getTel()!=null) {
					SET("tel=#{tel}");
				}
				if(rg.getAddressShen()!=null) {
					SET("addressShen=#{addressShen}");
				}
				if(rg.getAddressShi()!=null) {
					SET("addressShi=#{addressShi}");
				}
				if(rg.getEmail()!=null) {
					SET("email=#{email}");
				}
				if(rg.getBankNumber()!=null) {
					SET("bankNumber=#{bankNumber}");
				}
				if(rg.getDriveId()!=null) {
					SET("driveId=#{driveId}");
				}if(rg.getVehicleLicenseId()!=null) {
					SET("vehicleLicenseId=#{vehicleLicenseId}");
				}
				if(rg.getEngineId()!=null) {
					SET("engineId=#{engineId}");
				}
				WHERE("recognizeeId=#{recognizeeId}");
			}
		}.toString();
	}
	/**
	 * 按多个条件查询保单信息
	 * @param wa
	 * @return
	 */
	public String selectWarranty(final Warranty wa) {
		return new SQL() {
			{
				SELECT("*");
				FROM("t_warranty");
				if(wa.getWarrantyId()!=null) {
					WHERE("warrantyId=#{warrantyId}");
				}
				if(wa.getPolicyholdersName()!=null) {
					WHERE("policyholdersName LIKE '%"+wa.getPolicyholdersName()+"%'");
				}
				if(wa.getRecognizeeName()!=null) {
					WHERE("recognizeeName LIKE '%"+wa.getRecognizeeName()+"%'");
				}
				if(wa.getRecognizeeIdCard()!=null) {
					WHERE("recognizeeIdCard LIKE '%"+wa.getRecognizeeIdCard()+"%'");
				}
			}
		}.toString();
	}
	/**
	 * 按多个条件查询保单信息
	 * @param wa
	 * @return
	 */
	public String selecCounttWarranty(final Warranty wa) {
		return new SQL() {
			{
				SELECT("count(1)");
				FROM("t_warranty");
				if(wa.getWarrantyId()!=null && wa.getWarrantyId()>0) {
					WHERE("warrantyId=#{warrantyId}");
				}
				if(wa.getPolicyholdersName()!=null && !"".equals(wa.getPolicyholdersName())) {
					WHERE("policyholdersName LIKE '%"+wa.getPolicyholdersName()+"%'");
				}
				if(wa.getRecognizeeName()!=null) {
					WHERE("recognizeeName LIKE '%"+wa.getRecognizeeName()+"%'");
				}
				if(wa.getRecognizeeIdCard()!=null && !"".equals(wa.getRecognizeeIdCard())) {
					WHERE("recognizeeIdCard LIKE '%"+wa.getRecognizeeIdCard()+"%'");
				}
			}
		}.toString();
	}
	/**
	 * 修改保单信息
	 * @param wa
	 * @return
	 */
	public String updateWarranty(final Warranty wa){
		return new SQL(){
			{
				UPDATE("t_warranty");
				if(wa.getPolicyholdersName()!=null){
					SET("policyholdersName=#{policyholdersName}");
				}
				if(wa.getPolicyholderPhone()!=null){
					SET("policyholderPhone=#{policyholderPhone}");
				}
				if(wa.getRecognizeeName()!=null){
					SET("recognizeeName=#{recognizeeName}");
				}
				if(wa.getRecognizeeIdCard()!=null){
					SET("getRecognizeeIdCard=#{getRecognizeeIdCard}");
			    }
				if(wa.getInsuranceBeginTime()!=null){
					SET("insuranceBeginTime=#{insuranceBeginTime}");
			    }
			    if(wa.getInsuranceEndTime()!=null){
					SET("insuranceEndTime=#{insuranceEndTime}");
				}
			    if(wa.getUserId()!=null){
					SET("userId=#{userId}");
				}
				if(wa.getUsername()!=null){
					SET("username=#{username}");
				}
				if(wa.getCarTypeId()!=null){
					SET("carTypeId=#{carTypeId}");
				}
				if(wa.getCarTypeName()!=null){
					SET("carTypeName=#{carTypeName}");
				}
				if(wa.getInsurancePrice()!=null){
					SET("insurancePrice=#{insurancePrice}");
				}
				if(wa.getWarrantyPrice()!=null){
					SET("warrantyPrice=#{warrantyPrice}");
				}
				if(wa.getSigningDate()!=null){
					SET("signingDate=#{signingDate}");
				}
				if(wa.getPaymentDate()!=null){
					SET("paymentDate=#{paymentDate}");
				}
				if(wa.getSailId()!=null){
					SET("sailId=#{sailId}");
				}
				if(wa.getDriverId()!=null){
					SET("driverId=#{driverId}");
				}
				if(wa.getEngineId()!=null){
					SET("engineId=#{engineId}");
				}
				WHERE("warrantyId=#{warrantyId}");
			}
		}.toString();
	}
	
}
