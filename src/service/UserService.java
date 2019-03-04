package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.UserMapper;
import pojo.Film;
import pojo.User;
import pojo.history;

@Service
public class UserService {
	@Autowired
 UserMapper userMapper;
public User get(int id,String name,String password) {
	return userMapper.get(id, name, password);
}
public int getCount(int id,String name,String password) {
	return userMapper.getCount(id, name, password);
}
public int add(User user) {
	return userMapper.add(user);
}
public boolean updateuser(User user) {
	boolean r = userMapper.update(user);
	System.out.println("servers"+r);
	return r;
}
public List<history> getHistory(int id) {
	
	return userMapper.getHistory(id);
}
}
