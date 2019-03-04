package mapper;

import java.util.List;

import pojo.Film;

public interface FilmMapper {
	public int addFilm(Film film);
	public int deleteFile(int id);
	public List<Film> getAll();
	public List<Film> getMovie();
	public List<Film> getTV();
	public List<Film> getComic();
	public List<Film> getVip();
	public Film getMovieById(int id);
	public List<Film> searchFilm(String name);
	public Film getFilmByID(int id);
	public int updateFilm(Film film);
	public int deleteFilm(int id);
}
