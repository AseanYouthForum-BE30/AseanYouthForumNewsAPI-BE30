const express = require('express')
const { check, validationResult } = require('express-validator')
const multer = require('multer')

const newsRouter = express.Router()

const { getAllNewsByUser, createNewsByUser, getNewsByIdUser, updateNewsByIdUser, deleteNewsByIdUser, getNeedProceedNews, putNeedProceedNews, getProceededNews, putProceededNews } = require('../controllers/news.controller')

newsRouter.get('/', getAllNewsByUser)
newsRouter.post('/', multer().single("image"), [
    check("title")
        .isLength({ min: 1 })
        .withMessage("Title Must Not Empty"),
    check("content")
        .isLength({ min: 1 })
        .withMessage("Content Must Not Empty"),
    check("summary")
        .isLength({ min: 1 })
        .withMessage("Summary Must Not Empty"),
], (req, res, next) => {
    const error = validationResult(req).formatWith(({ msg }) => msg)

    const hasError = !error.isEmpty()

    if(hasError){
        res.status(422).json({error: error.array()})
    } else {
        next()
    }
}, createNewsByUser)
newsRouter.get('/needProceed', getNeedProceedNews)
newsRouter.get('/proceeded', getProceededNews)
newsRouter.put('/proceed/:id', putNeedProceedNews)
newsRouter.put('/unproceed/:id', putProceededNews)
newsRouter.get('/:id', getNewsByIdUser)
newsRouter.put('/:id', multer().single("image"), [
    check("title")
        .isLength({ min: 1 })
        .withMessage("Title Must Not Empty"),
    check("content")
        .isLength({ min: 1 })
        .withMessage("Content Must Not Empty"),
    check("summary")
        .isLength({ min: 1 })
        .withMessage("Summary Must Not Empty"),
], (req, res, next) => {
    const error = validationResult(req).formatWith(({ msg }) => msg)

    const hasError = !error.isEmpty()

    if(hasError){
        res.status(422).json({error: error.array()})
    } else {
        next()
    }
}, updateNewsByIdUser)
newsRouter.delete('/:id', deleteNewsByIdUser)

module.exports = newsRouter