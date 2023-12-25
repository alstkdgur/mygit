package egovframework.example.survey.service.Impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import egovframework.example.survey.mapper.SurveyMapper;
import egovframework.example.survey.service.SurveyService;
import egovframework.example.survey.service.SurveyVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("SurveyService")
public class SurveyServiceImpl  implements SurveyService{
	
	
	
	@Resource(name = "surveyMapper")
    private SurveyMapper surveyMapper;
	
	
	

	 @Override
	    public List<EgovMap> getQuestionList(SurveyVO SurveyVO) {
	        return surveyMapper.selectQuestionList(SurveyVO);
	    }
	
	@Override
	 public List<SurveyVO> getNextQuestions(SurveyVO SurveyVO) {
	      return surveyMapper.getNextQuestions(SurveyVO);
		    }
	
	@Override
	public SurveyVO getResult(SurveyVO SurveyVO) {
        return surveyMapper.selectResult(SurveyVO);
    }
	@Override
    public List<EgovMap> selectMyList(SurveyVO SurveyVO) {
    	
    	 return surveyMapper.selectMyList(SurveyVO);
    }

	@Override
	@Transactional
	public void saveRequest(Map<String, Object> requestMap) {
		surveyMapper.saveRequest(requestMap);
	}
	@Override
	public List<EgovMap> checkListMap(SurveyVO SurveyVO) {
		return  surveyMapper.checkList(SurveyVO);
	}
	
	
}
