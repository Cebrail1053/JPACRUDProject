package com.skilldistillery.jpagamelog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpagamelog.entities.Game;

@Service
@Transactional
public class GameDAOJpaImpl implements GameDAO{
	
	@PersistenceContext
	private EntityManager em;
		
	@Override
	public Game findById(int id) {
		return em.find(Game.class, id);
	}

	@Override
	public List<Game> findByGenre(String genre) {
		String jpql = "SELECT g FROM Game g WHERE g.genre = :genre";
		List<Game> games = em.createQuery(jpql, Game.class)
							 .setParameter("genre", genre)
							 .getResultList();
		return games;
	}

	@Override
	public List<Game> findByKeyword(String keyword) {
		String jpql = "SELECT g FROM Game g WHERE g.title LIKE :word1 OR g.description LIKE :word2";
		List<Game> games = em.createQuery(jpql, Game.class)
							 .setParameter("word1", "%" + keyword + "%")
							 .setParameter("word2", "%" + keyword + "%")
							 .getResultList();
		return games;
	}

	@Override
	public Game updateGame(Game game) {
		Game dbGame = em.find(Game.class, game.getId());
		
		dbGame.setTitle(game.getTitle());
		dbGame.setDescription(game.getDescription());
		dbGame.setGenre(game.getGenre());
		dbGame.setPlatform(game.getPlatform());
		dbGame.setPublisher(game.getPublisher());
		dbGame.setRating(game.getRating());
		dbGame.setPlayScore(game.getPlayScore());
		
		em.flush();
		
		return dbGame;
	}

	@Override
	public boolean deleteGame(int id) {
		boolean deleted = false;
		
		Game deletion = em.find(Game.class, id);
		if(deletion != null) {
			em.remove(deletion);
			deleted = !em.contains(deletion);
		}
		
		return deleted;
	}
	
	@Override
	public Game addGame(Game game) {
		em.persist(game);
		return game;
	}

	@Override
	public List<Game> listAllGames() {
		String jpql = "SELECT g FROM Game g";
		List<Game> games = em.createQuery(jpql, Game.class)
							 .getResultList();
		return games;
	}
}
