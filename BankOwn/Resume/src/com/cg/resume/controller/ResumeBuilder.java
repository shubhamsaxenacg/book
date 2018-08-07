package com.cg.resume.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cg.resume.model.ResumeModel;

@WebServlet("/ResumeBuilder")
public class ResumeBuilder extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ResumeBuilder() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResumeModel resumeModel = new ResumeModel();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		resumeModel.setFirstName(request.getParameter("fullname"));
		resumeModel.setLastName(request.getParameter("lastname"));
		resumeModel.setGender(request.getParameter("gender"));
		resumeModel.setQualfication(request.getParameter("highQual"));
		resumeModel.setDate(request.getParameter("bday"));
		resumeModel.setHobby(request.getParameter("hobby"));
		resumeModel.setAddress(request.getParameter("address"));
		resumeModel.setSkills(request.getParameter("skills"));
		resumeModel.setEmail(request.getParameter("email"));
		resumeModel.setWebsite(request.getParameter("website"));
		resumeModel.setContactNo(request.getParameter("contact"));
		resumeModel.setDescription(request.getParameter("description"));
		resumeModel.setPicture(request.getParameter("pic"));
		request.setAttribute("values", resumeModel);
		
		RequestDispatcher rd = request.getRequestDispatcher("New.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
