const { Sequelize } = require("sequelize");
const db = require('../config/Database')
const Admin = require('./Admin')

const {DataTypes} = Sequelize

const DataRecap = db.define("DataRecap", {
  nomorUrut: { type: DataTypes.STRING, allowNull: false },
  nomorRumahPadaPeta: { type: DataTypes.STRING, allowNull: false },
  namaLengkapKK: { type: DataTypes.STRING, allowNull: false },
  usia: { type: DataTypes.INTEGER, allowNull: false },
  jenisKelamin: { type: DataTypes.STRING, allowNull: false },
  nomorKK: { type: DataTypes.STRING, allowNull: false },
  nomorKTP: { type: DataTypes.STRING, allowNull: false },
  asalKTP: { type: DataTypes.STRING, allowNull: false },
  jumlahKKDalamRumah: { type: DataTypes.INTEGER, allowNull: false },
  jumlahPenghuni: { type: DataTypes.INTEGER, allowNull: false },
  alamatRumah: { type: DataTypes.STRING, allowNull: false },
  kecamatan: { type: DataTypes.STRING, allowNull: false },
  desaKelurahan: { type: DataTypes.STRING, allowNull: false },
  pendidikanTerakhir: { type: DataTypes.STRING, allowNull: false },
  pekerjaan: { type: DataTypes.STRING, allowNull: false },
  fungsiBangunan: { type: DataTypes.STRING, allowNull: false },
  penghasilanBulan: { type: DataTypes.INTEGER, allowNull: false },
  statusKepemilikanRumah: { type: DataTypes.STRING, allowNull: false },
  asetRumahDiTempatLain: { type: DataTypes.STRING, allowNull: false },
  statusKepemilikanTanah: { type: DataTypes.STRING, allowNull: false },
  asetTanahDiTempatLain: { type: DataTypes.STRING, allowNull: false },
  sumberPenerangan: { type: DataTypes.STRING, allowNull: false },
  dayaListrik: { type: DataTypes.INTEGER, allowNull: false },
  bantuanPerumahan: { type: DataTypes.STRING, allowNull: false },
  modelRumah: { type: DataTypes.STRING, allowNull: false },
  pondasi: { type: DataTypes.STRING, allowNull: false },
  kolom: { type: DataTypes.STRING, allowNull: false },
  rangkaAtap: { type: DataTypes.STRING, allowNull: false },
  plafon: { type: DataTypes.STRING, allowNull: false },
  balok: { type: DataTypes.STRING, allowNull: false },
  sloof: { type: DataTypes.STRING, allowNull: false },
  pintuJendelaKonsen: { type: DataTypes.STRING, allowNull: false },
  ventilasi: { type: DataTypes.STRING, allowNull: false },
  materialLantaiTerluas: { type: DataTypes.STRING, allowNull: false },
  kondisiLantai: { type: DataTypes.STRING, allowNull: false },
  materialDindingTerluas: { type: DataTypes.STRING, allowNull: false },
  kondisiDinding: { type: DataTypes.STRING, allowNull: false },
  materialPenutupAtapTerluas: { type: DataTypes.STRING, allowNull: false },
  kondisiPenutupAtap: { type: DataTypes.STRING, allowNull: false },
  luasRumah: { type: DataTypes.INTEGER, allowNull: false },
  luasTanah: { type: DataTypes.INTEGER, allowNull: false },
  buanganAirLimbahRumahTangga: { type: DataTypes.STRING, allowNull: false },
  saranaPengelolaanLimbahCair: { type: DataTypes.STRING, allowNull: false },
  pemiliharaanSaranaPengelolaanLimbahCair: { type: DataTypes.STRING, allowNull: false },
  jenisTempatPembuanganAirTinja: { type: DataTypes.STRING, allowNull: false },
  kepemilikanKamarMandiDanJamban: { type: DataTypes.STRING, allowNull: false },
  jumlahJamban: { type: DataTypes.INTEGER, allowNull: false },
  jenisKloset: { type: DataTypes.STRING, allowNull: false },
  jenisTangkiSeptik: { type: DataTypes.STRING, allowNull: false },
  materialTangkiSeptik: { type: DataTypes.STRING, allowNull: false },
  alasTangkiSeptik: { type: DataTypes.STRING, allowNull: false },
  lubangPenyedotan: { type: DataTypes.STRING, allowNull: false },
  posisiTangkiSeptik: { type: DataTypes.STRING, allowNull: false },
  jarakTangkiSeptikDenganSumberAir: { type: DataTypes.INTEGER, allowNull: false },
  sumberAirMinum: { type: DataTypes.STRING, allowNull: false },
  titikKoordinatRumah: { type: DataTypes.STRING, allowNull: false },
  manualTitikKoordinatRumah: { type: DataTypes.STRING, allowNull: false },
  tanggalPendataan: { type: DataTypes.DATE, allowNull: false },
  adminId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
        model: Admin, 
        key: 'id'
    }
},
  kategori: { type: DataTypes.STRING, allowNull: false },
});

DataRecap.belongsTo(Admin, { foreignKey: 'adminId', as: 'surveyor' });


module.exports = DataRecap;
