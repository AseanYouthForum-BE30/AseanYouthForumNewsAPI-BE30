const express = require('express')

const router = express.Router()
const authRouter = require('./auth.route')
const countryRouter = require('./country.route')
const userRouter = require('./user.route')
const newsRouter = require('./news.route')

router.get('/', (req, res) => {
    res.send('Hello World')
})

router.use('/auth', authRouter)
router.use('/country', countryRouter)
router.use('/news', newsRouter)
router.use('/user', userRouter)

module.exports = router