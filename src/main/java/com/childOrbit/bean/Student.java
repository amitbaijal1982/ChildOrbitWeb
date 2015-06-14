package com.childOrbit.bean;

import java.io.Serializable;

public class Student implements  Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int studentId;
	private String cardNo;
	private String name;
	private String admissionNo;
	private String clas;
	private String section;
	private String classRollNo;
	private String address;
	private String city;
	private String state;
	private String busRouteId;
	private String busStopId;
	private String gender;
	private String dateOfBirth;
	private String fathername;
	private String fmobile;
	private String mothername;
	private String mmobile;
	public Student(){
		
	}
	
	
	public Student( 
			int studentId,
			String cardNo,
			String name,
			String admissionNo, 
			String clas, 
			String section,
			String classRollNo,
			String address,
			String city,
			String state,
			String busRouteId,
			String busStopId,
			String gender,
			String dateOfBirth,
			String fathername,
			String fmobile,
			String mothername,
			String mmobile
			) {
		super();
		this.studentId = studentId;
		this.cardNo = cardNo;
		this.name = name;
		this.admissionNo = admissionNo;
		this.clas = clas;
		this.section = section;
		this.classRollNo = classRollNo;
		this.address = address;
		this.city = city;
		this.state = state;
		this.busRouteId = busRouteId;
		this.busStopId = busStopId;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.fathername = fathername;
		this.fmobile = fmobile;
		this.mothername = mothername;
		this.mmobile = mmobile;
	}



	
	
	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdmissionNo() {
		return admissionNo;
	}

	public void setAdmissionNo(String admissionNo) {
		this.admissionNo = admissionNo;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getClassRollNo() {
		return classRollNo;
	}

	public void setClassRollNo(String classRollNo) {
		this.classRollNo = classRollNo;
	}

	public String getBusRouteId() {
		return busRouteId;
	}

	public void setBusRouteId(String busRouteId) {
		this.busRouteId = busRouteId;
	}

	public String getBusStopId() {
		return busStopId;
	}

	public void setBusStopId(String busStopId) {
		this.busStopId = busStopId;
	}
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	
	
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	
	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}



	public String getMothername() {
		return mothername;
	}



	public void setMothername(String mothername) {
		this.mothername = mothername;
	}



	public String getFmobile() {
		return fmobile;
	}



	public void setFmobile(String fmobile) {
		this.fmobile = fmobile;
	}



	public String getMmobile() {
		return mmobile;
	}



	public void setMmobile(String mmobile) {
		this.mmobile = mmobile;
	}



	/*public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getToken() {
		return token;
	}



	public void setToken(String token) {
		this.token = token;
	}



	public String getDeviceId() {
		return deviceId;
	}



	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}*/

	/*public int getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(int academicYear) {
		this.academicYear = academicYear;
	}*/
	
	
	
}
