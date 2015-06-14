package com.childOrbit.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.childOrbit.bean.Student;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
 
@Component("studentAction")
@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)// to make the values null of the fields...
public class StudentAction extends ActionSupport{
	static {
		System.setProperty("log4j.configurationFile", "log4j-configuration.xml");
	}
	private static Logger log = LogManager.getLogger(StudentAction.class
			.getName());
	
	
	Student student= new Student();
	
	
	String key ;
	String val;

	public String getKey() {
		return key;
	}


	public void setKey(String key) {
		this.key = key;
	}


	public String getVal() {
		return val;
	}


	public void setVal(String val) {
		this.val = val;
	}


	public Student getStudent() {
		return student;
	}


	public void setStudent(Student student) {
		this.student = student;
	}


	public String add() throws Exception {
		
		
		
		return SUCCESS;
		
	}
	
	
public String save() throws Exception {
	RestTemplate restTemplate = new RestTemplate();
	Gson gson = new Gson();
	 
	// convert java object to JSON format,
	// and returned as JSON formatted string
	String json = gson.toJson(student);
	//Create a list for the message converters

	/*List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();

	//Add the Jackson Message converter
	messageConverters.add(new MappingJackson2HttpMessageConverter());

	//Add the message converters to the restTemplate
	restTemplate.setMessageConverters(messageConverters); 
	*/
//	restTemplate.postForObject("http://localhost:8080/childOrbitServices/student/insert", student, Student.class);

	// set headers
	HttpHeaders headers = new HttpHeaders();
	headers.setContentType(MediaType.APPLICATION_JSON);
	HttpEntity<String> entity = new HttpEntity<String>(json, headers);
System.out.println("***********************"+json);
	// send request and parse result
	ResponseEntity<String> loginResponse = restTemplate
	  .exchange("http://localhost:8080/childOrbitServices/student/insert", HttpMethod.POST, entity, String.class);
	

	if (loginResponse.getStatusCode() == HttpStatus.OK) {
	  System.out.println(loginResponse.getBody());
	 // Teacher st1=gson.fromJson(loginResponse.toString(), Teacher.class);
	  
	} 
		return SUCCESS;
		
	}


public String search() throws Exception {
	RestTemplate restTemplate = new RestTemplate();
	Gson gson = new Gson();
	// send request and parse result
	
	List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();

	//Add the Jackson Message converter
	messageConverters.add(new MappingJackson2HttpMessageConverter());

	//Add the message converters to the restTemplate
	restTemplate.setMessageConverters(messageConverters); 
	 List list = restTemplate
			  .getForObject("http://localhost:8080/childOrbitServices/student/select/"+getKey()+"/"+getVal(), ArrayList.class);
	 if(list.size() < 2)
	 {
	 Map  map=(Map)list.get(0);
	 System.out.println("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"+map);
	 student= new Student((Integer)map.get("studentId"),(String)map.get("cardNo"),(String)map.get("name"),(String) map.get("admissionNo"), (String)map.get("clas"), (String)map.get("section"), (String)map.get("classRollNo")
			 , (String)map.get("address"), (String)map.get("city"), (String)map.get("state") , (String)map.get("busRouteId"), (String)map.get("busStopId"), (String)map.get("gender"), (String)map.get("dateOfBirth"), (String)map.get("fathername"), (String)map.get("fmobile") , (String)map.get("mothername"), (String)map.get("mmobile"));
	 
			
	// set headers
		/*HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>("", headers);
	
		// send request and parse result
		ResponseEntity<String> loginResponse = restTemplate
		  .exchange("http://localhost:8080/childOrbitServices/student/select/name/"+getName(), HttpMethod.GET, entity, String.class);
		

		if (loginResponse.getStatusCode() == HttpStatus.OK) {
		  System.out.println(loginResponse.getBody());
		   student=gson.fromJson(loginResponse.toString(),List<Student> 
		  
		} */
			
		return SUCCESS;
	 }
	 else
	 {
		 return ERROR;
	 }
	}
}