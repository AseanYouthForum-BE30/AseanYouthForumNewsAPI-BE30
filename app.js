const express = require('express')
const multer = require('multer')

const app = express()
const upload = multer()

const PORT = 3000

const router = require('./routes')

app.use(express.json())
app.use(upload.array())
app.use(router)

app.listen(PORT, () => {
    console.log("Server running on port", PORT)
})