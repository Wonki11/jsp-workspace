package com.kh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.repository.HRepository;

@Service
public class HService {
	
	@Autowired
	private HRepository hRepository;
	// 모두 출력
	
	public List<Hamburger> getAll() {
		return hRepository.findAll();
	}
	
	//저장하기
	public void saveHamburger() {
		hRepository.save(h);
	}

}
