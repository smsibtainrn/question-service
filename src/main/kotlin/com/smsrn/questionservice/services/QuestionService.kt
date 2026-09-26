package com.smsrn.questionservice.services

import com.smsrn.questionservice.entity.Question
import com.smsrn.questionservice.dao.QuestionDao
import com.smsrn.questionservice.entity.QuestionResponse
import com.smsrn.questionservice.entity.QuestionWrapper
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Service

@Service
class QuestionService {

    @Autowired
    lateinit var questionDao: QuestionDao

    fun getQuestions(): ResponseEntity<List<Question>> {

        try {
            return ResponseEntity(questionDao.findAll(), HttpStatus.OK)
        } catch (e: Exception) {
            e.printStackTrace()
        }

        return ResponseEntity(ArrayList(), HttpStatus.BAD_REQUEST)
    }

    fun getQuestionByLanguage(language: String): ResponseEntity<List<Question>> {

        try {
            val questions = questionDao.findAllByLanguage(language)
            return ResponseEntity(questions, HttpStatus.OK)
        } catch (e: Exception) {
            e.printStackTrace()
        }

        return ResponseEntity(ArrayList(), HttpStatus.BAD_REQUEST)
    }

    fun addQuestion(question: Question): ResponseEntity<String> {
        questionDao.save(question)
        return ResponseEntity("Question Added", HttpStatus.CREATED)
    }

    fun updateQuestion(question: Question): ResponseEntity<String> {
        questionDao.save(question)
        return ResponseEntity("Question Updated", HttpStatus.OK)
    }

    fun deleteQuestion(id: Long): ResponseEntity<String> {
        questionDao.deleteById(id)
        return ResponseEntity("Question Deleted", HttpStatus.OK)
    }

    fun getQuestionsForQuiz(
        language: String,
        numberOfQuestions: Int
    ): ResponseEntity<List<Long?>> {
        try {
            val questions = questionDao.findRandomQuestionsByLanguage(language, numberOfQuestions)
            return ResponseEntity(questions, HttpStatus.OK)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return ResponseEntity(HttpStatus.BAD_REQUEST)
    }

    fun getQuestionsFromId(questionIds: List<Long>): ResponseEntity<List<QuestionWrapper>> {
        try {
            val questions = questionDao.findAllById(questionIds)
            val questionList = questions.map {
                QuestionWrapper(
                    id = it.id,
                    question = it.question,
                    optionA = it.optionA,
                    optionB = it.optionB,
                    optionC = it.optionC,
                    optionD = it.optionD
                )
            }
            return ResponseEntity(questionList, HttpStatus.OK)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return ResponseEntity(HttpStatus.BAD_REQUEST)
    }

    fun getScore(questionResponse: List<QuestionResponse>): ResponseEntity<Int> {
        try {
            val questions = questionDao.findAllById(questionResponse.mapNotNull { it.id })
            var score = 0
            questions.forEach { question ->
                val response = questionResponse.find {
                    it.id == question.id
                }
                if (response != null &&
                    response.answer.equals(
                        question.correctAnswer,
                        ignoreCase = true
                    )
                ) {
                    score++
                }
            }
            return ResponseEntity(score, HttpStatus.OK)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return ResponseEntity(HttpStatus.BAD_REQUEST)
    }
}