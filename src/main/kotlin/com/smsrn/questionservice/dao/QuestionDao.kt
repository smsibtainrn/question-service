package com.smsrn.questionservice.dao

import com.smsrn.questionservice.entity.Question
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.stereotype.Repository

@Repository
interface QuestionDao : JpaRepository<Question, Long> {
    fun findAllByLanguage(language: String): MutableList<Question>

    @Query("SELECT q.id FROM question q where q.language=:language ORDER BY RANDOM() LIMIT :numberOfQuestions", nativeQuery = true)
    fun findRandomQuestionsByLanguage(language: String, numberOfQuestions: Int): List<Long>
}