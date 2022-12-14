# Generated by Django 4.1.3 on 2022-12-12 05:46

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Pegawai',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nama', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=50)),
                ('nik', models.CharField(max_length=16)),
                ('nip', models.CharField(max_length=18)),
                ('phone', models.CharField(max_length=12)),
                ('provinsi', models.CharField(choices=[('aceh', 'Aceh'), ('sumut', 'Sumatera Utara'), ('sumsel', 'Sumatera Selatan'), ('sumbar', 'Sumatera Barat'), ('bengkulu', 'Bengkulu'), ('riau', 'Riau'), ('kepriau', 'Kepulauan Riau'), ('jambi', 'Jambi'), ('lampung', 'Lampung'), ('bangka', 'Bangka Belitung'), ('kalbar', 'Kalimantan Barat'), ('kalsel', 'Kalimantan Selatan'), ('kalteng', 'Kalimantan Tengah'), ('kalut', 'Kalimantan Utara'), ('banten', 'Banten'), ('jakarta', 'DKI Jakarta'), ('jabar', 'Jawa Barat'), ('jateng', 'Jawa Tengah'), ('diy', 'Daerah Istimewa Yogyakarta'), ('jatim', 'Jawa Timur'), ('bali', 'Bali'), ('ntt', 'Nusa Tenggara Timur'), ('ntb', 'Nusa Tenggara Barat'), ('gorontalo', 'Gorontalo'), ('sulbar', 'Sulawesi Barat'), ('sulteng', 'Sulawesi Tengah'), ('sulut', 'Sulawesi Utara'), ('sulteng', 'Sulawesi Tenggara'), ('sulsel', 'Sulawesi Selatan'), ('malut', 'Maluku Utara'), ('maluku', 'Maluku'), ('pabar', 'Papua Barat'), ('papua', 'Papua'), ('pateng', 'Papua Tengah'), ('papeg', 'Papua Pegunungan'), ('pasel', 'Papua Selatan'), ('pabada', 'Papua Barat Daya')], default='jateng', max_length=10)),
                ('kota', models.CharField(max_length=10)),
                ('organisasi', models.CharField(choices=[('pemerintahankabpurworejo', 'Pemerintahan Kabupaten Purworejo')], default='pemerintahankabpurworejo', max_length=100)),
                ('organisasi_unit', models.CharField(choices=[('bupatidanwakilbupati', 'Bupati dan Wakil Bupati'), ('sekretariatdaerah', 'Sekretariat Daerah'), ('sekretariatdprd', 'Sekretariat DPRD'), ('dinasdaerah', 'Dinas Daerah'), ('inspektorat', 'Inspektorat'), ('satpolppdamkar', 'Satuan Pamong Praja dan Pemadam Kebakaran'), ('lembagateknis', 'Lembaga Teknis Daerah'), ('kecamatan', 'Kecamatan'), ('kelurahan', 'Kelurahan')], max_length=100)),
                ('jabatan', models.CharField(choices=[('bupati', 'Bupati Purworejo'), ('wabup', 'Wakil Bupati Purworejo'), ('sekda', 'Sekretaris Daerah'), ('aspekra', 'Asisten Pemerintahan dan Kesejahteraan Rakyat'), ('kebagpe', 'Kepala Bagian Pemerintahan'), ('kebaghu', 'Kepala Bagian Hukum'), ('kebagorgap', 'Kepala Bagian Organisasi dan Aparatur'), ('asekpem', 'Asisten Ekonomi dan Pembangunan'), ('kebagpersdm', 'Kepala Bagian Perekonomian dan Sumber Daya Alam'), ('kebagadpem', 'Kepala Bagian Administrasi Pembangunan'), ('kebagbajas', 'Kepala Bagian Barang dan Jasa'), ('asadum', 'Asisten Administrasi dan Umum'), ('kebagkerak', 'Ketua Bagian Kesejahteraan Rakyat'), ('kebagum', 'Kepala Bagian Umum'), ('kebagprokompim', 'Kepala Bagian Protokol dan Komunikasi Pimpinan'), ('sekdprd', 'Sekretaris DPRD'), ('kadinpenbu', 'Kepala Dinas Pendidikan dan Kebudayaaan'), ('kadinkes', 'Kepala Dinas Kesehatan'), ('kadinpupr', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang'), ('kadinprkpp', 'Kepala Dinas Perumahan Rakyat, Kawasan Pemukiman dan Pertanahan'), ('kadinkpp', 'Kepala Dinas Ketahanan Pangan dan Pertanian'), ('kadinlhp', 'Kepala Dinas Lingkungan Hidup dan Perikanan'), ('kadinakps', 'Kepala Dinas Admin Kependudukan dan Pencatatan Sipil'), ('kadinpppapmd', 'Kepala Dinas Pemberdayaan Perempuan dan Perlindungan Anak serta Pemberdayaan Masyarakat dan Desa'), ('kadinperhubungan', 'Kepala Dinas Perhubungan'), ('kadinkominfostasandi', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian'), ('kadinkop', 'Kepala Dinas Kepemudaan, Olahraga dan Pariwisata'), ('kadinperpan', 'Kepala Dinas Perpustakaan dan Kearsipan'), ('kadinkukmp', 'Kepala Dinas Koperasi, Usaha Kecil, Menengah dan Perdagangan'), ('kadinpttk', 'Kepala Dinas Perindustrian, Transmigrasi, dan Tenaga Kerja'), ('inspektur', 'Inspektur'), ('kasatpp', 'Kepala Satpol PP Damkar'), ('kabadppdpp', 'Kepala Badan Perencanaan Pembangunan Daerah, Penelitian dan Pembangunan'), ('kabadkpsdm', 'Kepala Badan Kepegawaian dan Pengembangan Sumber Daya Manusia'), ('kabadpkpad', 'Kepala Badan Pengelolaan Keuangan, Pendapatan dan Aset Daerah'), ('kabadpbd', 'Kepala Pelaksana Badan Penanggulangan Bencana Daerah'), ('kabadkbp', 'Kepala Badan Kesatuan Bangsa dan Politik'), ('direktur', 'Direktur RSUD Tjitro Wardojo'), ('capur', 'Camat Purworejo'), ('caban', 'Camat Banyuurip'), ('cabay', 'Camat Bayan'), ('caka', 'Camat Kaligesing'), ('caku', 'Camat Kutoarjo'), ('cabu', 'Camat Butuh'), ('cagra', 'Camat Grabag'), ('capurwod', 'Camat Purwodadi'), ('cabag', 'Camat Bagelen'), ('cango', 'Camat Ngombol'), ('capit', 'Camat Pituruh'), ('cakem', 'Camat Kemiri'), ('cabru', 'Camat Bruno'), ('calo', 'Camat Loano'), ('caben', 'Camat Bener'), ('cageb', 'Camat Gebang'), ('lurpur', 'Lurah Purworejo'), ('lurbal', 'Lurah Baledono'), ('lursin', 'Lurah Sindurjan'), ('lurdop', 'Lurah Doplang'), ('lurpangjuteng', 'Lurah Pangenjurutengah'), ('lurpangen', 'Lurah Pangenrejo'), ('lurmra', 'Lurah Mranti'), ('lurpad', 'Lurah Paduroso'), ('lurmu', 'Lurah Mudal'), ('lurkes', 'Lurah Keseneng'), ('lurtam', 'Lurah Tambakrejo'), ('lurcanglo', 'Lurah Cangkrep Lor'), ('lurcangkid', 'Lurah Cangkrep Kidul'), ('lurked', 'Lurah Kedungsari'), ('lurlug', 'Lurah Lugosobo'), ('lursuteng', 'Lurah Sucenjuru Tengah'), ('lurbor', 'Lurah Borokulon'), ('lurklekra', 'Lurah Kledung Kradenan'), ('lurklekar', 'Lurah Kledung Karangdalem'), ('lurkut', 'Lurah Kutoarjo'), ('lurban', 'Lurah Bandung'), ('lurbay', 'Lurah Bayem'), ('lurseda', 'Lurah Semawung Daleman'), ('lursekem', 'Lurah Semawung Kembaran'), ('lurkat', 'Lurah Katerban')], max_length=100)),
                ('certif', models.CharField(max_length=10)),
                ('status', models.CharField(choices=[('update', 'Update'), ('hapus', 'Hapus')], max_length=100)),
                ('type_certif', models.CharField(choices=[('besign', 'BeSign'), ('perurisign', 'Peruri Sign'), ('mekariesign', 'Mekari E-Sign'), ('privysign', 'Privy Sign')], max_length=100)),
                ('status_data', models.CharField(choices=[('aktif', 'Aktif'), ('tidak', 'Tidak Aktif')], max_length=10)),
                ('tanggal_pengajuan', models.DateField()),
                ('tanggal_terbit', models.DateField()),
                ('status_pegawai', models.CharField(choices=[('aktif', 'Aktif'), ('pensiun', 'Pensiun')], max_length=10)),
                ('dokumen_pendukung', models.FileField(blank=True, upload_to='upload')),
                ('petugas', models.CharField(max_length=100)),
                ('verifikator', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Pengguna',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=50)),
            ],
        ),
    ]
