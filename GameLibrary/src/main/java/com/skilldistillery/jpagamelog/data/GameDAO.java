package com.skilldistillery.jpagamelog.data;

import java.util.List;

import com.skilldistillery.jpagamelog.entities.Game;

public interface GameDAO {
	Game findById(int id);
	
	List<Game> findByGenre(String genre);
	
	List<Game> findByKeyword(String keyword);
	
	Game updateGame(Game game);
	
	boolean deleteGame(int id);
	
	List<Game> listAllGames();
	
	Game addGame(Game game);
}
