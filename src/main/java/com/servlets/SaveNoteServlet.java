package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Sticky_Notes;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Sticky_Notes notes = new Sticky_Notes(title, content, new Date());

			Session s = FactoryProvider.getSessionFactory().openSession();
			Transaction transaction = s.beginTransaction();
			s.save(notes);
			transaction.commit();
			s.close();
			PrintWriter out = response.getWriter();
			out.println("<h1 style = 'text-align:center;'>Note Added Successfully</h1>");
			out.println("<h1 style = 'text-align:center;'><a href= 'All_Notes.jsp'>View All Notes</a></h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
