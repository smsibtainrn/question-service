package com.smsrn.questionservice.controller

import com.smsrn.questionservice.dao.QuestionDao
import com.smsrn.questionservice.entity.Question
import com.smsrn.questionservice.entity.QuestionResponse
import com.smsrn.questionservice.entity.QuestionWrapper
import com.smsrn.questionservice.services.QuestionService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.core.env.Environment
import org.springframework.core.env.get
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.PutMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("question")
class QuestionControlller {

    @Autowired
    private lateinit var questionService: QuestionService

    @Autowired
    private lateinit var environment: Environment

    @GetMapping("")
    fun getQuestions(): ResponseEntity<List<Question>> {
        return questionService.getQuestions()
    }

    @GetMapping("/{language}")
    fun getQuestionByLanguage(@PathVariable language: String): ResponseEntity<List<Question>> {
        return questionService.getQuestionByLanguage(language)
    }

    @PostMapping("")
    fun addQuestion(@RequestBody question: Question): ResponseEntity<String> {
        return questionService.addQuestion(question)
    }

    /*@PutMapping("")
    fun updateQuestion(@RequestBody question: Question): ResponseEntity<String> {
        return questionService.updateQuestion(question)
    }*/

    @DeleteMapping("/{id}")
    fun deleteQuestion(@PathVariable id: Long): ResponseEntity<String> {
        return questionService.deleteQuestion(id)
    }

    @PutMapping("")
    fun getQuestions(@RequestBody question: Question): ResponseEntity<String> {
        return questionService.updateQuestion(question)
    }

    @GetMapping("/generate")
    fun getQuestionsForQuiz(
        @RequestParam language: String,
        @RequestParam numberOfQuestions: Int,
    ): ResponseEntity<List<Long?>> {
        return questionService.getQuestionsForQuiz(language, numberOfQuestions)
    }

    @PostMapping("/getQuestions")
    fun getQuestionsFromId(@RequestBody questionIds: List<Long>): ResponseEntity<List<QuestionWrapper>> {
        println(environment["local.server.port"])
        return questionService.getQuestionsFromId(questionIds)
    }

    @PostMapping("/getScore")
    fun getScore(
        @RequestBody questionResponse: List<QuestionResponse>
    ): ResponseEntity<Int> {
        return questionService.getScore(questionResponse)
    }
}