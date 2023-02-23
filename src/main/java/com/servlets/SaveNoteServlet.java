package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Sticky_Notes;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("Title");
			String content = request.getParameter("content");
			
			Sticky_Notes notes = new Sticky_Notes(title,content,new Date());
			System.out.println(notes.getTitle() + " " + notes.getContent());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
