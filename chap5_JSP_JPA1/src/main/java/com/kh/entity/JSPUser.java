package com.kh.entity;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;


@ToString
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
public class JSPUser {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String username;
	private String useremail;
}
