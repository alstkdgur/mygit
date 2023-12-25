package egovframework.example.survey.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.psl.dataaccess.util.EgovMap;


public interface SurveyService {


	SurveyVO getResult(SurveyVO surveyVO);


	List<EgovMap> getQuestionList(SurveyVO SurveyVO);


	List<SurveyVO> getNextQuestions(SurveyVO surveyVO);


//	List<EgovMap> selectMyList(Map requestMap);


	List<EgovMap> selectMyList(SurveyVO SurveyVO);


	void saveRequest(Map<String, Object> requestMap);


	List<EgovMap> checkListMap(SurveyVO surveyVO);


}
