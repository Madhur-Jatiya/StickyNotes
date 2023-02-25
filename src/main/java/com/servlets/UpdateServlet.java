package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Sticky_Notes;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Session s = FactoryProvider.getSessionFactory().openSession();
			Sticky_Notes notes = (Sticky_Notes) s.get(Sticky_Notes.class, noteId);
			Transaction transaction = s.beginTransaction();
			notes.setTitle(title);
			notes.setContent(content);
			s.update(notes);
			transaction.commit();
			s.close();
			response.sendRedirect("All_Notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
