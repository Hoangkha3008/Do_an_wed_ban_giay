GO
CREATE DATABASE WEBGIAY3
GO
USE WEBGIAY3
--------------------------------------------------Tạo Bảng----------------------------------------------------------
CREATE TABLE NHANVIEN
(
MANV CHAR(10),
TENNV NVARCHAR(100),
NGAYSINH DATE,
GIOITINH NVARCHAR(10),
SDT INT,
DIACHI NVARCHAR(100),
Images NVARCHAR(500)
CONSTRAINT PK_NHANVIEN PRIMARY KEY (MANV)
)

CREATE TABLE SANPHAM
(
MASP NVARCHAR(20),
TENSP NVARCHAR(100),
THUONGHIEU CHAR(20),
MAUSAC NVARCHAR(100),
CHATLIEU NVARCHAR(50),
GIOITINH NVARCHAR(10),
DONGIA FLOAT,
Images VARCHAR(500)
CONSTRAINT PK_SANPHAM PRIMARY KEY (MASP)
)
CREATE TABLE ACCOUNT
(
TAIKHOAN CHAR(50),
MATKHAU CHAR(50)
CONSTRAINT PK_ACCOUNT PRIMARY KEY (TAIKHOAN,MATKHAU)
)
CREATE TABLE KHACHHANG
(
MAKH CHAR(10),
TENKH NVARCHAR(50),
GIOITINH NVARCHAR(10),
NGAYSINH DATE,
SDT INT,
DIACHI NVARCHAR(100),
MATKHAU CHAR(50)
CONSTRAINT PK_KHACHHANG PRIMARY KEY (MAKH)
)
CREATE TABLE HOADON
(
MAHD CHAR(10),
MAKH CHAR(10),
NGAYLAP DATE,
TONGTIEN FLOAT
CONSTRAINT PK_HOADON PRIMARY KEY (MAHD)
)
ALTER TABLE HOADON
ADD CONSTRAINT FK_HOADON_KHACHHANG FOREIGN KEY (MAKH) REFERENCES KHACHHANG (MAKH)
CREATE TABLE CTHOADON
(
MAHD CHAR(10),
MASP NVARCHAR(20),
SOLUONG INT,
DONGIA FLOAT,
GIAMGIA FLOAT,
THANHTIEN FLOAT
CONSTRAINT PK_CTHOADON PRIMARY KEY (MAHD,MASP)
)
ALTER TABLE CTHOADON
ADD CONSTRAINT FK_CTHOADON_HOADON FOREIGN KEY (MAHD) REFERENCES HOADON (MAHD)
ALTER TABLE CTHOADON
ADD CONSTRAINT FK_CTHOADON_SANPHAM FOREIGN KEY (MASP) REFERENCES SANPHAM (MASP)
ALTER TABLE HOADON
ADD MANV CHAR(10)
ALTER TABLE HOADON 
ADD CONSTRAINT FK_HOADON_NHANVIEN FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
INSERT INTO SANPHAM
VALUES
('SP001',N'Nike Air Max Bolt',N'Nike',N'Wolf Grey/White/Racer Blue/Black',N'Vải nỉ và cao su',N'Nam',2649000.000,'images/Mennikeairmaxbolt.jpg'),
('SP002',N'Nike Air Max Bolt',N'Nike',N'Wolf Grey/White/Racer Blue/Black',N'Vải nỉ và cao su',N'Nữ',2649000.000,'images/Mennikeairmaxbolt.jpg'),
('SP004',N'Jordan Air NFH',N'Nike',N'White/Light Smoke Grey/Grey Fog/Black',N'Vải nỉ và cao su',N'Nữ',3239000.000,'images/NikeJordanNFH.jpg'),
('SP005',N'Jordan Air NFH',N'Nike',N'White/Light Smoke Grey/Grey Fog/Black',N'Vải nỉ và cao su',N'Nam',3239000.000,'images/NikeJordanNFH.jpg'),
('SP006',N'Nike React Infinity Run Flyknit 2',N'Nike',N'Platinum Tint/Grey Fog/Dynamic Turquoise/White',N'Vải nỉ và cao su',N'Nam',4699000.000,'images/NikeReactFly.jpg'),
('SP007',N'Nike React Infinity Run Flyknit 2',N'Nike',N'Platinum Tint/Grey Fog/Dynamic Turquoise/White',N'Vải nỉ và cao su',N'Nữ',4699000.000,'images/NikeReactFly.jpg'),
('SP008',N'Nike Air Force 1 GORE-TEX',N'Nike',N'Medium Olive/Carbon Green/Sail/Black',N'Vải nỉ và cao su',N'Nam',4699000.000,'images/NikeAirForce1Gore.jpg'),
('SP009',N'Nike Air Force 1 GORE-TEX',N'Nike',N'Medium Olive/Carbon Green/Sail/Black',N'Vải nỉ và cao su',N'Nữ',4699000.000,'images/NikeAirForce1Gore.jpg'),
('SP010',N'Nike ACG Mountain Fly Low',N'Nike',N'Light Mulberry/Flash Crimson',N'Vải nỉ và cao su',N'Nam',5279000.000,'images/NikeACG.jpg'),
('SP011',N'Nike ACG Mountain Fly Low',N'Nike',N'Light Mulberry/Flash Crimson',N'Vải nỉ và cao su',N'Nữ',5279000.000,'images/NikeACG.jpg'),
('SP012',N'Nike SB Zoom Blazer Mid Premium',N'Nike',N'Black/Wolf Grey/Cool Grey/White',N'Vải nỉ và cao su',N'Nam',3089000.000,'images/NikeSB.jpg'),
('SP013',N'Nike SB Zoom Blazer Mid Premium',N'Nike',N'Black/Wolf Grey/Cool Grey/White',N'Vải nỉ và cao su',N'Nữ',3089000.000,'images/NikeSB.jpg'),
('SP014',N'STAN SMITH WHITE HOLOGRAM','Adidas',N'White',N'Cao Su Tổng Hợp',N'Nam',2200000.000,'images/STANB.jpg'),
('SP015',N'NMD R1 V2','Adidas',N'Black',N'Vãi',N'Nam',2800000.000,'images/NMD.png'),
('SP016',N'NMD R1 V2','Adidas',N'Black',N'Vãi',N'Nữ',2800000.000,'images/NMD.png'),
('SP017',N'NMD R1 METALLIC GOLD','Adidas',N'Gold',N'Da',N'Nữ',2800000.000,'images/NMDR1.jpg'),
('SP018',N'NMD R1 METALLIC GOLD','Adidas',N'Gold',N'Da',N'Nam',2800000.000,'images/NMDR1.jpg'),
('SP019',N'ULTRABOOST 20 NASA CORE BLACK','Adidas',N'Black',N'Cao Su Tổng Hợp',N'Nữ',4200000.000,'images/ULTRABOOSTB.jpg'),
('SP020',N'ULTRABOOST 20 NASA CORE BLACK','Adidas',N'Black',N'Cao Su Tổng Hợp',N'Nam',4200000.000,'images/ULTRABOOSTB.jpg'),
('SP021',N'ULTRABOOST 20 NASA CORE WHITE','Adidas',N'White',N'Cao Su Tổng Hợp',N'Nữ',4200000.000,'images/ULTRABOOSTW.jpg'),
('SP022',N'ULTRABOOST 20 NASA CORE WHITE','Adidas',N'White',N'Cao Su Tổng Hợp',N'Nam',4200000.000,'images/ULTRABOOSTW.jpg'),
('SP023',N'ADGE LUX 3','Adidas',N'White/Black',N'Cao Su Tổng Hợp',N'Nam',2800000.000,'images/AdidasAdge.jpg'),
('SP024',N'ADGE LUX 3','Adidas',N'White/Black',N'Cao Su Tổng Hợp',N'Nữ',2800000.000,'images/AdidasAdge.jpg'),
('SP025',N'Converse Chuck Taylor All Star Lift Canvas','Converse',N'Black',N'Canvas',N'Nữ',1800000.000,'images/ConverseC.jpg'),
('SP026',N'Converse Chuck Taylor All Star Lift Canvas','Converse',N'Black',N'Canvas',N'Nam',1800000.000,'images/ConverseC.jpg'),
('SP027',N'Converse Chuck Taylor All Star Lift Festival','Converse',N'Egret/Sesame/Black',N'Polyester',N'Nữ',1800000.000,'images/ConverseF.jpg'),
('SP028',N'Converse Chuck Taylor All Star Lift Festival','Converse',N'Egret/Sesame/Black',N'Polyester',N'Nam',1800000.000,'images/ConverseF.jpg'),
('SP029',N'Converse Chuck Taylor All Star 1970s Archive Paint Splatter ','Converse',N'Egret/Digital Blue/Egret',N'Canvas',N'Nữ',2000000.000,'images/Converse1970A.jpg'),
('SP030',N'Converse Chuck Taylor All Star 1970s Archive Paint Splatter ','Converse',N'Egret/Digital Blue/Egret',N'Canvas',N'Nam',2000000.000,'images/Converse1970A.jpg'),
('SP031',N'Converse Run Star Hike Valentines Day','Converse',N'Black/White/University Red',N'Canavas',N'Nữ',2500000.000,'images/ConverseR.jpg'),
('SP032',N'Converse Run Star Hike Valentines Day','Converse',N'Black/White/University Red',N'Canavas',N'Nam',2500000.000,'images/ConverseR.jpg'),
('SP033',N'Converse Chuck Taylor All Star CX Explore Roots','Converse',N'Black/Court Green/Hyper Pink',N'Cotton',N'Nữ',2300000.000,'images/ConverseCX.jpg'),
('SP034',N'Converse Chuck Taylor All Star CX Explore Roots','Converse',N'Black/Court Green/Hyper Pink',N'Cotton',N'Nam',2300000.000,'images/ConverseCX.jpg'),
('SP035',N'Converse Chuck Taylor All Star 1970s Renew','Converse',N'Saffron Yellow/Lemon Venom',N'Renew Cotton',N'Nữ',2200000.000,'images/ConverseRenew.jpg'),
('SP036',N'Converse Chuck Taylor All Star 1970s Renew','Converse',N'Saffron Yellow/Lemon Venom',N'Renew Cotton',N'Nam',2200000.000,'images/ConverseRenew.jpg'),
('SP037',N'BST HaNoi Culture Patchwork Old Wall Yellow','BiTisHunTer',N'Nâu',N'Renew Cotton',N'Nữ',899000.000,'images/Bitishanoiyl.jpg'),
('SP038',N'BST HaNoi Culture Patchwork Old Wall Yellow','BiTisHunTer',N'Nâu',N'Renew Cotton',N'Nam',899000.000,'images/Bitishanoiyl.jpg'),
('SP039',N'BST HaNoi Culture Patchwork Concrete Grey','BiTisHunTer',N'Đen',N'Renew Cotton',N'Nữ',899000.000,'images/Bitishanoigray.jpg'),
('SP040',N'BST HaNoi Culture Patchwork Concrete Grey','BiTisHunTer',N'Đen',N'Renew Cotton',N'Nam',899000.000,'images/Bitishanoigray.jpg'),
('SP041',N'Bitis Hunter X Festive Frosty-White','BiTisHunTer',N'Trắng',N'Renew Cotton',N'Nữ',899000.000,'images/BitisXFes.jpg'),
('SP042',N'Bitis Hunter X Festive Aurora Black','BiTisHunTer',N'Xanh Dương',N'Renew Cotton',N'Nam',999000.000,'images/BitisXA.jpg'),
('SP043',N'Bitis Hunter Nameless Edition','BiTisHunTer',N'Kem',N'Renew Cotton',N'Nữ',1499000.000,'images/BitisNE.jpg'),
('SP044',N'Giày Thể Thao Bitis Hunter Street Z Collection High White ','BiTisHunTer',N'White',N'Da',N'Nam',799000.000,'images/BitisStreetZ.jpg'),
('SP045',N'Giày Thể Thao Bitis Hunter Street Z Collection High White ','BiTisHunTer',N'White',N'Da',N'Nữ',799000.000,'images/BitisStreetZ.jpg'),
('SP046',N'Giày Thể Thao Bitis Hunter Street Z Collection High Purple ','BiTisHunTer',N'Tím',N'Da',N'Nữ',799000.000,'images/BitisStreetZTim.jpg'),
('SP047',N'Giày Thể Thao Cao Cấp Bitis Hunter X Classik Grey ','BiTisHunTer',N'Xám',N'Vãi',N'Nam',899000.000,'images/BitisHunterXClasikG.png'),
('SP048',N'Giày Thể Thao Cao Cấp Bitis Hunter X Old Kool Black ','BiTisHunTer',N'Black',N'Vãi',N'Nam',899000.000,'images/BitisHunterXOldKoolB.png')

INSERT INTO ACCOUNT
VALUES('Admin','kha123')
SELECT *FROM KHACHHANG
SET DATEFORMAT DMY
INSERT INTO KHACHHANG
VALUES
('KH01',N'Lê Quốc Nhiên','Nam','23/09/2001','0987654321',N'Phú Yên','123'),
('KH02',N'Phạm Ngọc Khoa','Nam','23/09/2001','0987654321',N'Phú Yên','123')
select * from ACCOUNT
alter table sanpham
alter column masp char(20)
SELECT * FROM SANPHAM
WHERE DONGIA>4500000 AND GIOITINH=N'Nữ'

select masp,images,tensp,dongia
from sanpham
where masp='SPN001'
select * from sanpham
select count(masp)
from sanpham
where masp='sp002'
group by masp
