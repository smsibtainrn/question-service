package com.smsrn.questionservice.entity

data class QuestionWrapper(
    val id: Long? = null,
    val question: String,
    val optionA: String,
    val optionB: String,
    val optionC: String,
    val optionD: String,
)