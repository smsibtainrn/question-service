package com.smsrn.questionservice.entity

import jakarta.persistence.*

@Entity
data class Question(

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,

    @Column(nullable = false, length = 50)
    val language: String,

    @Column(nullable = false, length = 20)
    val difficulty: String,

    @Column(nullable = false)
    val question: String,

    @Column(name = "option_a", nullable = false)
    val optionA: String,

    @Column(name = "option_b", nullable = false)
    val optionB: String,

    @Column(name = "option_c", nullable = false)
    val optionC: String,

    @Column(name = "option_d", nullable = false)
    val optionD: String,

    @Column(name = "correct_answer", nullable = false)
    val correctAnswer: String
)