const Admin = require('../models/Admin')
const argon2 = require("argon2");
const axios = require("axios");

const logIn = async (req, res) => {
    const { username, password } = req.body;
    if (!username || !password) {
        return res.status(400).json({ msg: "Please enter both email and password" });
    }
    try {
        const admin = await Admin.findOne({ where: { username } });
        if (!admin) {
            return res.status(404).json({ msg: "Akun anda belum terdaftar" });
        }

        const match = await argon2.verify(admin.password, password);
        if (!match) {
            return res.status(400).json({ msg: 'Password anda salah' });
        }

        req.session.adminId = admin.id;
      
        req.session.adminRole = admin.role;
        console.log("log:", req.session.adminId);
        console.log("log:", req.session.adminRole);

        await req.session.save();

        const responseData = {
            id: admin.id,
            username: admin.username,
            email: admin.email,
            role: admin.role
        };
        res.status(200).json(responseData);
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: error.message });
    }
};


const Me = async (req, res) => {
    console.log("Session adminId:", req.session.adminId);
    if (!req.session.adminId)
         { 
        return res.status(401).json({ msg: "Mohon login ke akun Anda!" });
    }
    try {
        const admin = await Admin.findOne({
            attributes: ['id', 'username', 'email', 'role'],
            where: { id: req.session.adminId } 
        });

        if (!admin){
            req.session.destroy();
         return res.status(404).json({ msg: "User tidak ditemukan" });
        }
        res.status(200).json(admin);
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: error.message });
    }
};
const logOut = async (req, res) => {
    req.session.destroy((err) => {
        if (err) return res.status(400).json({ msg: "Tidak dapat logout" });
        res.status(200).json({ msg: "Anda telah logout" });
    });
};
const register = async (req, res) => {
    const { username, email, password } = req.body;
  
    // Validasi input
    if (!username || !email || !password) {
        return res.status(400).json({ msg: "Silakan masukkan semua data yang diperlukan" });
    }
  
    try {
        // Cek apakah email sudah terdaftar
        const existingUser = await Admin.findOne({ where: { email } });
        if (existingUser) {
            return res.status(400).json({ msg: "Email sudah terdaftar" });
        }
  
        // Hash password
        const hashedPassword = await argon2.hash(password);
  
        // Buat pengguna baru dengan role sebagai "surveyor"
        const newUser = await Admin.create({
            username,
            email,
            password: hashedPassword,
            role: 'surveyor' // Menetapkan role "surveyor" secara otomatis
        });
  
        // Respon sukses
        const responseData = {
            id: newUser.id,
            username: newUser.username,
            email: newUser.email,
            role: newUser.role
        };
        res.status(201).json(responseData);
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: error.message });
    }
  };

  const getuser = async (req,res) =>{
    try {
        const response = await Admin.findAll({
            attributes: ['id', 'username', 'email', 'role'],
        })
        return res.status(200).json(response)
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: error.message });
    }
  }
  
  const resetPassword = async (req, res) => {
    const { email, username, newPassword } = req.body;
    if (!email || !username || !newPassword) {
        return res.status(400).json({ msg: "Silakan masukkan email, username, dan password baru" });
    }
  
    try {
        const user = await Admin.findOne({
            where: { email, username }
        });
        
        if (!user) {
            return res.status(404).json({ msg: "User tidak ditemukan" });
        }
        const hashedPassword = await argon2.hash(newPassword);
        await user.update({ password: hashedPassword });
        res.status(200).json({ msg: "Password berhasil direset" });
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: error.message });
    }
};
module.exports = { logIn, Me, logOut ,register,getuser, resetPassword};
