package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import Model.Details;

@Controller
public class User {
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public @ResponseBody Details postUserData(@RequestBody Details details) throws IOException {
		
		  System.out.println("Name         :"+details.getFname());
		  System.out.println("Date of Birth:"+details.getDate()); 
		  System.out.println("Age          :"+details.getAge());
		  System.out.println("Gender       :"+details.getGender());
		  System.out.println("E-mail       :"+details.getEmail());
		  System.out.println("Path of File :"+details.getMyfile());
		 
		return details;
		
	}
	
	@RequestMapping(value = "/formDetails")
	public String getFormDetails() {
		return "formDetails";
	}
}
