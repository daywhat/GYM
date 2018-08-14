package org.exit.gym;

import org.exit.model.dto.MessageVO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
	@RequestMapping("/messages/*")
	public class MessageController{
		@RequestMapping(value="/", method=RequestMethod.POST)
		public ResponseEntity<String> addMessage(@RequestBody MessageVO vo){
		ResponseEntity<String> entity = null;
		
		try {
			System.out.println("MessageController:" + vo);
			entity = new ResponseEntity<>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.OK);
		}
		
		return entity;
		}
}
