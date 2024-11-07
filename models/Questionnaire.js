const { Sequelize } = require("sequelize");
const db = require('../config/Database')
const Admin = require('./Admin')

const {DataTypes} = Sequelize

const Questionnaire = db.define("Questionnaire", {
  statusrumah: {
    type: DataTypes.STRING,
    // allowNull: false,
    allowNull: true,
  },
  nomorUrut: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  nomorRumahPadaPeta: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  namaLengkapKK: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  usia: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  jenisKelamin: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  nomorKK: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  nomorKTP: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  asalKTP: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jumlahKK: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  jumlahPenghuni: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  alamatRumah: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kecamatan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  desaKelurahan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  pendidikanTerakhir: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  pekerjaan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  fungsiBangunan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  penghasilan: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  statusKepemilikanRumah: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  asetRumahDiTempatLain: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  statusKepemilikanTanah: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  asetTanahDiTempatLain: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  sumberPenerangan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  dayaListrik: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  bantuanPerumahan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  modelRumah: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  pondasi: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kolom: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rangkaAtap: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  plafon: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  balok: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  sloof: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  pintuJendelaKonsen: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  ventilasi: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  materialLantaiTerluas: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kondisiLantai: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  materialDindingTerluas: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kondisiDinding: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  materialPenutupAtapTerluas: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kondisiPenutupAtap: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  luasRumah: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  luasTanah: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  buanganAirLimbahRumahTangga: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  saranaPengelolaanLimbahCair: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  pemiliharaanSaranaPengelolaanLimbah: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jenisTempatPembuanganAirTinja: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kepemilikanKamarMandiDanJamban: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jumlahJamban: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  jenisKloset: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jenisTangkiSeptik: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  materialTangkiSeptik: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  alasTangkiSeptik: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lubangPenyedotan: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  posisiTangkiSeptik: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jarakTangkiSeptikDenganSumberAir: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  sumberAirMinum: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  titikKoordinatRumah: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  manualTitikKoordinatRumah: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  tanggalPendataan: {
    type: DataTypes.DATEONLY,
    defaultValue: DataTypes.NOW,
  },
//   namaSurveyor: {
//     type: DataTypes.STRING,
//     allowNull: false,
//   },
adminId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
        model: Admin, // Relasi ke model Admin
        key: 'id'
    }
},
  score: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  kategori: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  tableName: "questionnaire",
  timestamps: false,
});

Questionnaire.belongsTo(Admin, { foreignKey: 'adminId', as: 'surveyor' });
Admin.hasMany(Questionnaire, { foreignKey: 'adminId' });

module.exports = Questionnaire;
