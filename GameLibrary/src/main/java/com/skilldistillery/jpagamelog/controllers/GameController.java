package com.skilldistillery.jpagamelog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpagamelog.data.GameDAO;
import com.skilldistillery.jpagamelog.entities.Game;

@Controller
public class GameController {

	@Autowired
	private GameDAO dao;
	
	@RequestMapping(path={"/", "home.do"}, method=RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("games", dao.listAllGames());
		return "index";
	}
	
	@RequestMapping(path="getGameID.do", method=RequestMethod.GET)
	public String getGameById(int id, Model model) {
		model.addAttribute("game", dao.findById(id));
		return "show";
	}
	
	@RequestMapping(path="getGameGenre.do", method=RequestMethod.GET)
	public String getGameByGenre(String genre, Model model) {
		model.addAttribute("games", dao.findByGenre(genre));
		return "result";
	}
	
	@RequestMapping(path="getGameKeyword.do", method=RequestMethod.GET)
	public String getGameByKeyword(String keyword, Model model) {
		model.addAttribute("games", dao.findByKeyword(keyword));
		return "result";
	}
	
	@RequestMapping(path="updateGame.do", method=RequestMethod.POST)
	public String updateGame(Game game, Model model) {
		model.addAttribute("game", dao.updateGame(game));
		return "show";
	}
	
	@RequestMapping(path="deleteGame.do", method=RequestMethod.POST)
	public String deleteGame(int id) {
		boolean deleted = dao.deleteGame(id);
		if(deleted) {
			return "success";
		}
		return "fail";
	}
	
	@RequestMapping(path="newGame.do", method=RequestMethod.POST)
	public String addGame(Game game, RedirectAttributes redir) {
		dao.addGame(game);
		redir.addFlashAttribute("game", game);
		return "redirect:gameAdded.do";
	}
	
	@RequestMapping(path="gameAdded.do", method=RequestMethod.GET)
	public String gameAdded(Game game) {
		return "show";
	}
	
	@RequestMapping(path="gameForm.do", method=RequestMethod.GET)
	public String addGameForm() {
		return "addGameForm";
	}

	@RequestMapping(path="editForm.do", method=RequestMethod.GET)
	public String editGameForm(int id, Model model) {
		model.addAttribute(dao.findById(id));
		return "editGameForm";
	}
}
