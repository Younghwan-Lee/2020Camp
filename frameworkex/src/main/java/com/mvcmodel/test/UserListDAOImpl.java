package com.mvcmodel.test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("userListDAO")
public class UserListDAOImpl implements UserListDAO {
	@Override
	public List<UserListResponseDTO> getUserListdao() {
		System.out.println("dao call");
		
		List<UserListResponseDTO> userlist = new ArrayList<UserListResponseDTO>();
		
		UserListResponseDTO list = new UserListResponseDTO();
		list.setUserName("홍길동");
		list.setUserAge("26");
		list.setUserAddress("경기도 수원시");
		list.setUserImage("peopleimage.jpg");
		userlist.add(list);
		
		UserListResponseDTO list2 = new UserListResponseDTO();
		list2.setUserName("임꺽정");
		list2.setUserAge("30");
		list2.setUserAddress("경기도 안양시");
		list2.setUserImage("peopleimage.jpg");
		userlist.add(list2);
		
		UserListResponseDTO list3 = new UserListResponseDTO();
		list3.setUserName("김철수");
		list3.setUserAge("28");
		list3.setUserAddress("경기도 오산시");
		list3.setUserImage("peopleimage.jpg");
		userlist.add(list3);
		
		return userlist;
	}
}
