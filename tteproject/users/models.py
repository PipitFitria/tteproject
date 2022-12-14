from django.db import models
from django.conf import settings
import os


class Pegawai(models.Model):
    PROVINSI_CHOICES = [
        ('aceh', 'Aceh'), 
        ('sumut', 'Sumatera Utara'), 
        ('sumsel','Sumatera Selatan'), 
        ('sumbar', 'Sumatera Barat'),
        ('bengkulu', 'Bengkulu'), 
        ('riau', 'Riau'), 
        ('kepriau', 'Kepulauan Riau'), 
        ('jambi', 'Jambi'),
        ('lampung', 'Lampung'), 
        ('bangka', 'Bangka Belitung'), 
        ('kalbar', 'Kalimantan Barat'), 
        ('kalsel', 'Kalimantan Selatan'),
        ('kalteng', 'Kalimantan Tengah'), 
        ('kalut', 'Kalimantan Utara'), 
        ('banten', 'Banten'), 
        ('jakarta', 'DKI Jakarta'),
        ('jabar', 'Jawa Barat'), 
        ('jateng', 'Jawa Tengah'), 
        ('diy', 'Daerah Istimewa Yogyakarta'), 
        ('jatim', 'Jawa Timur'),
        ('bali', 'Bali'), 
        ('ntt', 'Nusa Tenggara Timur'), 
        ('ntb', 'Nusa Tenggara Barat'), 
        ('gorontalo', 'Gorontalo'),
        ('sulbar', 'Sulawesi Barat'), 
        ('sulteng', 'Sulawesi Tengah'), 
        ('sulut', 'Sulawesi Utara'), 
        ('sulteng', 'Sulawesi Tenggara'),
        ('sulsel', 'Sulawesi Selatan'), 
        ('malut', 'Maluku Utara'), 
        ('maluku', 'Maluku'), 
        ('pabar', 'Papua Barat'),
        ('papua', 'Papua'), 
        ('pateng', 'Papua Tengah'), 
        ('papeg', 'Papua Pegunungan'), 
        ('pasel', 'Papua Selatan'), 
        ('pabada', 'Papua Barat Daya')
    ]

    STATUSDATA_CHOICES = (
        ('aktif', 'Aktif'),
        ('tidak', 'Tidak Aktif'),
    )

    STATUSPEGAWAI_CHOICES = (
        ('aktif', 'Aktif'),
        ('pensiun', 'Pensiun'),
    )

    STATUS_CHOICES = (
        ('update', 'Update'),
        ('hapus', 'Hapus'),
    )

    ORGANISASI_CHOICES = (
        ('pemerintahankabpurworejo', 'Pemerintahan Kabupaten Purworejo'),
    )

    ORGANISASIUNIT_CHOICES = (
        ('bupatidanwakilbupati', 'Bupati dan Wakil Bupati'),
        ('sekretariatdaerah', 'Sekretariat Daerah'),
        ('sekretariatdprd', 'Sekretariat DPRD'),
        ('dinasdaerah', 'Dinas Daerah'),
        ('inspektorat', 'Inspektorat'),
        ('satpolppdamkar', 'Satuan Pamong Praja dan Pemadam Kebakaran'),
        ('lembagateknis', 'Lembaga Teknis Daerah'),
        ('kecamatan', 'Kecamatan'),
        ('kelurahan', 'Kelurahan'),
    )

    JABATAN_CHOICES = [
        ('bupati', 'Bupati Purworejo'),
        ('wabup', 'Wakil Bupati Purworejo'),
        ('sekda', 'Sekretaris Daerah'),
        ('aspekra', 'Asisten Pemerintahan dan Kesejahteraan Rakyat'),
        ('kebagpe', 'Kepala Bagian Pemerintahan'),
        ('kebaghu', 'Kepala Bagian Hukum'),
        ('kebagorgap', 'Kepala Bagian Organisasi dan Aparatur'),
        ('asekpem', 'Asisten Ekonomi dan Pembangunan'),
        ('kebagpersdm', 'Kepala Bagian Perekonomian dan Sumber Daya Alam'),
        ('kebagadpem', 'Kepala Bagian Administrasi Pembangunan'),
        ('kebagbajas', 'Kepala Bagian Barang dan Jasa'),
        ('asadum', 'Asisten Administrasi dan Umum'),
        ('kebagkerak', 'Ketua Bagian Kesejahteraan Rakyat'),
        ('kebagum', 'Kepala Bagian Umum'),
        ('kebagprokompim', 'Kepala Bagian Protokol dan Komunikasi Pimpinan'),
        ('sekdprd', 'Sekretaris DPRD'),
        ('kadinpenbu', 'Kepala Dinas Pendidikan dan Kebudayaaan'),
        ('kadinkes', 'Kepala Dinas Kesehatan'),
        ('kadinpupr', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang'),
        ('kadinprkpp', 'Kepala Dinas Perumahan Rakyat, Kawasan Pemukiman dan Pertanahan'),
        ('kadinkpp', 'Kepala Dinas Ketahanan Pangan dan Pertanian'),
        ('kadinlhp', 'Kepala Dinas Lingkungan Hidup dan Perikanan'),
        ('kadinakps', 'Kepala Dinas Admin Kependudukan dan Pencatatan Sipil'),
        ('kadinpppapmd', 'Kepala Dinas Pemberdayaan Perempuan dan Perlindungan Anak serta Pemberdayaan Masyarakat dan Desa'),
        ('kadinperhubungan', 'Kepala Dinas Perhubungan'),
        ('kadinkominfostasandi', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian'),
        ('kadinkop', 'Kepala Dinas Kepemudaan, Olahraga dan Pariwisata'),
        ('kadinperpan', 'Kepala Dinas Perpustakaan dan Kearsipan'),
        ('kadinkukmp', 'Kepala Dinas Koperasi, Usaha Kecil, Menengah dan Perdagangan'),
        ('kadinpttk', 'Kepala Dinas Perindustrian, Transmigrasi, dan Tenaga Kerja'),
        ('inspektur', 'Inspektur'),
        ('kasatpp', 'Kepala Satpol PP Damkar'),
        ('kabadppdpp', 'Kepala Badan Perencanaan Pembangunan Daerah, Penelitian dan Pembangunan'),
        ('kabadkpsdm', 'Kepala Badan Kepegawaian dan Pengembangan Sumber Daya Manusia'),
        ('kabadpkpad', 'Kepala Badan Pengelolaan Keuangan, Pendapatan dan Aset Daerah'),
        ('kabadpbd', 'Kepala Pelaksana Badan Penanggulangan Bencana Daerah'),
        ('kabadkbp', 'Kepala Badan Kesatuan Bangsa dan Politik'),
        ('direktur', 'Direktur RSUD Tjitro Wardojo'),
        ('capur', 'Camat Purworejo'),
        ('caban', 'Camat Banyuurip'),
        ('cabay', 'Camat Bayan'),
        ('caka', 'Camat Kaligesing'),
        ('caku', 'Camat Kutoarjo'),
        ('cabu', 'Camat Butuh'),
        ('cagra', 'Camat Grabag'),
        ('capurwod', 'Camat Purwodadi'),
        ('cabag', 'Camat Bagelen'),
        ('cango', 'Camat Ngombol'),
        ('capit', 'Camat Pituruh'),
        ('cakem', 'Camat Kemiri'),
        ('cabru', 'Camat Bruno'),
        ('calo', 'Camat Loano'),
        ('caben', 'Camat Bener'),
        ('cageb', 'Camat Gebang'),
        ('lurpur', 'Lurah Purworejo'),
        ('lurbal', 'Lurah Baledono'),
        ('lursin', 'Lurah Sindurjan'),
        ('lurdop', 'Lurah Doplang'),
        ('lurpangjuteng', 'Lurah Pangenjurutengah'),
        ('lurpangen', 'Lurah Pangenrejo'),
        ('lurmra', 'Lurah Mranti'),
        ('lurpad', 'Lurah Paduroso'),
        ('lurmu', 'Lurah Mudal'),
        ('lurkes', 'Lurah Keseneng'),
        ('lurtam', 'Lurah Tambakrejo'),
        ('lurcanglo', 'Lurah Cangkrep Lor'),
        ('lurcangkid', 'Lurah Cangkrep Kidul'),
        ('lurked', 'Lurah Kedungsari'),
        ('lurlug', 'Lurah Lugosobo'),
        ('lursuteng', 'Lurah Sucenjuru Tengah'),
        ('lurbor', 'Lurah Borokulon'),
        ('lurklekra', 'Lurah Kledung Kradenan'),
        ('lurklekar', 'Lurah Kledung Karangdalem'),
        ('lurkut', 'Lurah Kutoarjo'),
        ('lurban', 'Lurah Bandung'),
        ('lurbay', 'Lurah Bayem'),
        ('lurseda', 'Lurah Semawung Daleman'),
        ('lursekem', 'Lurah Semawung Kembaran'),
        ('lurkat', 'Lurah Katerban'),

        # ('kadin', 'Kepala Dinkominfostasandi'),
        # ('sekretaris', 'Sekretaris'),
        # ('kasubbagperkeu', 'Kasubbag Perencanaan Dan Keuangan'),
        # ('kasubbagumkep', 'Kasubbag Umum dan Kepegawaian'),
        # ('kabidtisp', 'Kepala Bidang Teknologi Informatika, Statistik Dan Persandian'),
        # ('kabidpplkc', 'Kepala Bidang Pengembangan Dan Pengelolaan Layanan Kota Cerdas'),
        # ('kabidikp', 'Kepala Bidang Informasi Dan Komunikasi Publik'),
        # ('nonasn', 'Non ASN'),
    ]

    TYPECERTIF_CHOICES = [
        ('besign', 'BeSign'),
        ('perurisign', 'Peruri Sign'),
        ('mekariesign', 'Mekari E-Sign'),
        ('privysign', 'Privy Sign'),
    ]

    id = models.AutoField(primary_key=True)
    nama = models.CharField(max_length=100)
    email = models.EmailField(max_length=50)
    nik = models.CharField(max_length=16)
    nip = models.CharField(max_length=18)
    phone = models.CharField(max_length=12)
    provinsi = models.CharField(max_length=10, choices=PROVINSI_CHOICES, default='jateng')
    kota = models.CharField(max_length=10)
    organisasi = models.CharField(max_length=100, choices=ORGANISASI_CHOICES, default='pemerintahankabpurworejo')
    organisasi_unit = models.CharField(max_length=100, choices=ORGANISASIUNIT_CHOICES)
    jabatan = models.CharField(max_length=100, choices=JABATAN_CHOICES)
    certif = models.CharField(max_length=10)
    status = models.CharField(max_length=100, choices=STATUS_CHOICES)
    type_certif = models.CharField(max_length=100, choices=TYPECERTIF_CHOICES)
    status_data = models.CharField(max_length=10, choices=STATUSDATA_CHOICES)
    tanggal_pengajuan = models.DateField()
    tanggal_terbit = models.DateField()
    status_pegawai = models.CharField(max_length=10, choices=STATUSPEGAWAI_CHOICES)
    dokumen_pendukung = models.FileField(upload_to="upload", blank=True)
    petugas = models.CharField(max_length=100)
    verifikator = models.CharField(max_length=100)

    def __str__(self):
        return self.nama

class Pengguna(models.Model):
    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)