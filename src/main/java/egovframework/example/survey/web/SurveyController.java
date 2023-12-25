package egovframework.example.survey.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.example.survey.service.SurveyService;
import egovframework.example.survey.service.SurveyVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class SurveyController {

	@Resource(name = "SurveyService")
	private SurveyService SurveyService;

	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

//	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
//	@ResponseBody
//	public ModelAndView main(SurveyVO SurveyVO, ModelMap model) {
//
//		List<EgovMap> questionList = SurveyService.getQuestionList(SurveyVO); // 문항 리스트 조회
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("questionList", questionList);
//		mav.setView(new MappingJackson2JsonView());
//		return mav;
//
//	}
	
	@RequestMapping("/resultPage.do")
	public String showResultPage(@RequestParam String resultType, Model model) {
		 if (resultType != null) {
		        SurveyVO surveyVO = new SurveyVO();
		        surveyVO.setResultType(resultType);
		        List<EgovMap> checkList = SurveyService.checkListMap(surveyVO);
		        if (!checkList.isEmpty()) {
		            String resultContent = (String) checkList.get(0).get("resultContent");
		            String[] sentences = resultContent.split("\\.");
		            model.addAttribute("sentences", sentences);
		        }
		        model.addAttribute("checkList", checkList); 
		    }

	    // 최종적으로 결과를 보여줄 JSP 페이지로 이동
	    return "result";
	}
	
	@RequestMapping("/question.do")
	public ModelAndView getQuestion(SurveyVO SurveyVO, ModelMap model) {
		ModelAndView mav = new ModelAndView("question");

		List<EgovMap> questionList = SurveyService.getQuestionList(SurveyVO);
		mav.addObject("questionList", questionList);
		mav.setViewName("question");
		return mav;
	}

	// 다음화면 +선택한유형 저장
	@RequestMapping(value = "/Nextquestion.do", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView getNextQuestion(SurveyVO SurveyVO, ModelMap model) {

		List<EgovMap> questionList = SurveyService.getQuestionList(SurveyVO); // 문항 리스트 조회
		ModelAndView mav = new ModelAndView();

		mav.addObject("questionList", questionList);
		mav.setView(new MappingJackson2JsonView());
		return mav;

	}

	@PostMapping(value = "/CheckResult.do", consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String YourResponseObject(@RequestBody String requestData) throws JsonParseException, JsonMappingException, IOException {
		// requestData는 JSON 문자열이 됨
		ObjectMapper objectMapper = new ObjectMapper();

	
			// JSON 문자열을 Map 또는 원하는 객체로 변환
			Map<String, Object> requestDataMap = objectMapper.readValue(requestData,
					new TypeReference<Map<String, Object>>() {
					});

			// requestDataMap에서 데이터 꺼내서 사용
			List<String> selectedTypes = (List<String>) requestDataMap.get("selectedTypes");
			List<String> selectCheckList = (List<String>) requestDataMap.get("selectCheckList");

			// 데이터를 처리하는 로직을 작성
			int responseCount =selectedTypes.size();
			// COLLECTIONS.객체 생성
//			int eCount = Collections.frequency(selectedTypes, "E");	
//			int iCount = responseCount - eCount; // "I"는 전체 응답 수에서 "E" 빈도를 빼서 계산

//			double ePercentage = (double) eCount / responseCount * 100.0;
//			double iPercentage = (double) iCount / responseCount * 100.0;
			 // 유형별 빈도 계산
		    int eCount = Collections.frequency(selectedTypes, "E");
		    int iCount = Collections.frequency(selectedTypes, "I");
		    
		    // 유형별 비율 계산
		    double ePercentage = (double) eCount / responseCount * 100.0;
		    double iPercentage = (double) iCount / responseCount * 100.0;
		    
			int sCount = Collections.frequency(selectedTypes, "S");
			int nCount = responseCount - sCount; // "S"는 전체 응답 수에서 "N" 빈도를 빼서 계산

			double sPercentage = (double) sCount / responseCount * 100.0;
			double nPercentage = (double) nCount / responseCount * 100.0;

			int tCount = Collections.frequency(selectedTypes, "T");
			int fCount = responseCount - tCount; // "T"는 전체 응답 수에서 "f" 빈도를 빼서 계산

			double tPercentage = (double) tCount / responseCount * 100.0;
			double fPercentage = (double) fCount / responseCount * 100.0;

			int jCount = Collections.frequency(selectedTypes, "J");
			int pCount = responseCount - jCount; // "J"는 전체 응답 수에서 "P" 빈도를 빼서 계산

			double jPercentage = (double) jCount / responseCount * 100.0;
			double pPercentage = (double) pCount / responseCount * 100.0;
			StringBuilder resultBuilder = new StringBuilder();
 			if(ePercentage < iPercentage) {			
				 resultBuilder.append("I");
			}else {
				 resultBuilder.append("E");
				 
				 
				 
			}if(sPercentage < nPercentage) {			
				 resultBuilder.append("N");
			}else {
				 resultBuilder.append("S");
				
				 
				 
			}if(tPercentage < fPercentage) {
				 resultBuilder.append("F");
			}else {				
				 resultBuilder.append("T");
			
				 
				 
			}if(jPercentage < pPercentage) {				
				 resultBuilder.append("P");
			}else {	
				 resultBuilder.append("J");
			}			
			
			
		String resultType = resultBuilder.toString();	
	
		    return resultType;

	}
	
	@RequestMapping(value = "/selectMyList.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView selectMyList(HttpServletRequest request, HttpServletResponse response, SurveyVO SurveyVO)
			throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("question");
		String question_id = request.getParameter("question_id");

		// 데이터 조회 로직 실행
		List<EgovMap> myDataList = SurveyService.selectMyList(SurveyVO);

		mav.addObject("questionList", myDataList);
		return mav;
	}

}
