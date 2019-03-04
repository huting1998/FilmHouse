package mapper;

import java.util.List;

import pojo.Film;
import pojo.User;
import pojo.history;

public interface UserMapper {
public int add(User user);
public int delete(int id);
public User get(int id,String name,String password);
public int  getCount(int id,String name,String password);
public boolean update(User user);
public List<history> getHistory(int id);
}
