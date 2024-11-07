const Admin = require('../models/Admin');

const verifyUser = async (req, res, next) => {
    if (!req.session.adminId) { // Ganti userId dengan adminId
        return res.status(401).json({ msg: "Silahkan login dulu" });
    }
    try {
        const user = await Admin.findOne({
            where: {
                id: req.session.adminId // Gunakan adminId di sini
            }
        });
        if (!user) {
            return res.status(401).json({ msg: "User tidak ditemukan" });
        }
        req.userId = user.id; // Tetap simpan userId
        req.role = user.role;
        next();
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: "Internal Server Error" });
    }
};
const adminOnly = async (req, res, next) => {
    try {
        const user = await Admin.findOne({
            where: {
                id: req.session.adminId // Menggunakan req.userId yang sudah terverifikasi
            }
        });
        if (!user) {
            return res.status(404).json({ msg: "User tidak ditemukan" });
        }
        if (user.role !== "admin") {
            return res.status(403).json({ msg: "Hanya admin yang dapat mengakses ini" });
        }
        next();
    } catch (error) {
        console.error(error);
        res.status(500).json({ msg: "Internal Server Error" });
    }
};

module.exports = {
    verifyUser,
    adminOnly
};
