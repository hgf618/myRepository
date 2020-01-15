package com.dfby.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dfby.dao.MessageMapper;
import com.dfby.domain.Message;
import com.dfby.service.MessageServiceI;

@Service("messageService")
public class MessageService implements MessageServiceI {
	
	@Autowired
	private MessageMapper messageMapper;
	
	public List<Message> getAllMessage2() {
		// TODO Auto-generated method stub
		return messageMapper.getAllMessage2();
	}

}
