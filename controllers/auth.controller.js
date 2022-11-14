const model = require('../models')
const {User, UserDetail} = model

const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')

module.exports = {
    register: async (req, res) => {
        try {
            const data = await req.body
            const saltRounds = 10

            const hash = bcrypt.hashSync(data.password, saltRounds)
            data.password = hash

            try {
                const user = await User.create({
                    email: data.email,
                    password: data.password,
                    isAdmin: false
                })
    
                UserDetail.create({
                    fullName: data.fullName,
                    image: data.image,
                    countryId: data.countryId,
                    userId: user.id
                })
    
                res.status(201).json({message: "Account Created"})
            } catch (error) {
            res.status(400).json(error)
            }
        } catch (error) {
            res.status(400).json(error)
        }
    },

    login: async (req, res) => {
        try {
            const data = await req.body

            const userData = await User.findOne({
                where: {
                    email: data.email
                }
            })

            if (userData){
                const check = bcrypt.compareSync(data.password, userData.password)

                if (check){
                    const token = jwt.sign(
                        {
                            id: userData.id,
                            fullName: userData.fullName,
                            isAdmin: userData.isAdmin
                        }, 'secret', { expiresIn: '1h' }
                    )

                    res.status(201).json({
                        message: "Login Success",
                        token
                    })
                } else {
                    res.status(401).json({
                        message: "Password does not match"
                    })
                }
            } else {
                res.status(401).json({
                    message: "Email is not registered"
                })
            }
        } catch (error) {
            res.status(400).json({message: error})
        }
    }
}