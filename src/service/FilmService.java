package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.FilmMapper;
import pojo.Film;


@Service
public class FilmService {
	@Autowired
FilmMapper filmMapper;
public List<Film> getAll(){
	return filmMapper.getAll();
}	
public List<Film> getMovie(){
	return filmMapper.getMovie();
}	
public List<Film> getTV(){
	return filmMapper.getTV();
}
public List<Film> getComic(){
	return filmMapper.getComic();
}
public List<Film> getVip(){
	return filmMapper.getVip();
}
public Film getMovieById(int id) {
	return filmMapper.getMovieById(id);
}
public List<Film> searchFilm(String name){
	return filmMapper.searchFilm(name);
}
public Film getFilmByID(int id) {
	return filmMapper.getFilmByID(id);
}
public int updateFilm(Film film) {
	return filmMapper.updateFilm(film);
}
public int deleteFilm(int id) {
	return filmMapper.deleteFilm(id);
}
public int addFilm(Film film) {
	return filmMapper.addFilm(film);
}
}
