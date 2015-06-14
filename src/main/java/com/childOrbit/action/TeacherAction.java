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

import com.childOrbit.bean.Teacher;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

@Component("teacherAction")
@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)// to make the values null of the fields...
public class TeacherAction extends ActionSupport{
	static {
		System.setProperty("log4j.configurationFile", "log4j-configuration.xml");
	}
	private static Logger log = LogManager.getLogger(TeacherAction.class
			.getName());
	Teacher teacher = new Teacher();
	String key ;
	String val;
	
	List<SearchBean>  searchList;

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
	
	public Teacher getTeacher() {
		return teacher;
	}




	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}




	public String save() throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		Gson gson = new Gson();
		 
		// convert java object to JSON format,
		// and returned as JSON formatted string
		String json = gson.toJson(teacher);
		//Create a list for the message converters

		/*List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();

		//Add the Jackson Message converter
		messageConverters.add(new MappingJackson2HttpMessageConverter());

		//Add the message converters to the restTemplate
		restTemplate.setMessageConverters(messageConverters); 
		*/
//		restTemplate.postForObject("http://localhost:8080/childOrbitServices/student/insert", student, Student.class);

		// set headers
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(json, headers);
	System.out.println("***********************"+json);
		// send request and parse result
		ResponseEntity<String> loginResponse = restTemplate
		  .exchange("http://localhost:8080/childOrbitServices/insert/teacher", HttpMethod.POST, entity, String.class);
		

		if (loginResponse.getStatusCode() == HttpStatus.OK) {
		  System.out.println(loginResponse.getBody());
		 // Teacher st1=gson.fromJson(loginResponse.toString(), Teacher.class);
		  
		} 
			return SUCCESS;
			
		}

	public String search() throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
		messageConverters.add(new MappingJackson2HttpMessageConverter());
		restTemplate.setMessageConverters(messageConverters); 
		 List<Teacher> list = restTemplate
				  .getForObject("http://localhost:8080/childOrbitServices/search/teacher/"+getKey()+"/"+getVal(), ArrayList.class);
		 System.out.println("!!!!!!!!!!!!!!!!!!!!!"+list.size());
		 log.trace(list.size());
		 if(list.size()<2)
		 {
		 Map map=(Map)list.get(0);
		 
		 teacher= new Teacher((Integer)map.get("teacherId"),(String)map.get("name"),
				 (String)map.get("dateOfBirth"),
				 (String)map.get("gender"), 
				 (String)map.get("address"),
				 (String)map.get("state") ,(String)map.get("city"),
				 (String)map.get("mobile") ,(String)map.get("alternateMobile") ,
				 (String)map.get("busRouteId"), (String)map.get("busStopId"),  
				 (String)map.get("dateOfJoining"), (String)map.get("photo"));
				
			return SUCCESS;
		 }
		 else
		 {
			 return ERROR;
		 }
		}
}
