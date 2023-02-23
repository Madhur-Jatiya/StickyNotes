package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Sticky_Notes;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getSessionFactory().openSession();
			Transaction transaction = s.beginTransaction();
			Sticky_Notes notes = (Sticky_Notes) s.get(Sticky_Notes.class, noteId);
			s.delete(notes);
			transaction.commit();
			s.close();
			response.sendRedirect("All_Notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
