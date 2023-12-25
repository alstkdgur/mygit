package egovframework.example.survey.service;

import java.util.List;

public class SurveyVO {

//	private List<String> selectedTypes;
//    private List<String> selectCheckList;

	private String user_id ="";
	private String username="";
	private String password="";
	private int 	question_id=1;
	private String  question_type="";
	private String question_content="";
	
	private String[] selectCheckList;
	private String[] selectedTypes;
	

	

	

	private String resultTatle="";
	private String resutlContent="";
	private String resultType="";
	private String resultImg="";
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getQuestion_type() {
		return question_type;
	}

	public void setQuestion_type(String question_type) {
		this.question_type = question_type;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public String[] getSelectedTypes() {
		return selectedTypes;
	}

	public void setSelectedTypes(String[] selectedTypes) {
		this.selectedTypes = selectedTypes;
	}

	public String[] getSelectCheckList() {
		return selectCheckList;
	}

	public void setSelectCheckList(String[] selectCheckList) {
		this.selectCheckList = selectCheckList;
	}


	public String getResultTatle() {
		return resultTatle;
	}

	public void setResultTatle(String resultTatle) {
		this.resultTatle = resultTatle;
	}

	public String getResutlContent() {
		return resutlContent;
	}

	public void setResutlContent(String resutlContent) {
		this.resutlContent = resutlContent;
	}

	public String getResultImg() {
		return resultImg;
	}

	public void setResultImg(String resultImg) {
		this.resultImg = resultImg;
	}

	public String getResultType() {
		return resultType;
	}

	public void setResultType(String resultType) {
		this.resultType = resultType;
	}

//	public List<String> getSelectedTypes() {
//		return selectedTypes;
//	}
//
//	public void setSelectedTypes(List<String> selectedTypes) {
//		this.selectedTypes = selectedTypes;
//	}
//
//	public List<String> getSelectCheckList() {
//		return selectCheckList;
//	}
//
//	public void setSelectCheckList(List<String> selectCheckList) {
//		this.selectCheckList = selectCheckList;
//	}
	
}
