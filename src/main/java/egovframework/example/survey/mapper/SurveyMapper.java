package egovframework.example.survey.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.ui.ModelMap;

import egovframework.example.survey.service.SurveyVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("surveyMapper")
public interface SurveyMapper {

//	List<Map<String, String[]>> selectList(Map requestMap);

	SurveyVO selectResult(SurveyVO surveyVO);

	List<EgovMap> selectQuestionList(SurveyVO surveyVO);

	List<SurveyVO> getNextQuestions(SurveyVO surveyVO);

	List<EgovMap>   selectMyList(SurveyVO surveyVO);

	void saveRequest(Map<String, Object> requestMap);

	List<EgovMap> checkList(SurveyVO surveyVO);



}
