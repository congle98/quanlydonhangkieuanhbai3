create database quanlysuatnhaphangbai3kieuanh;
use quanlysuatnhaphangbai3kieuanh;
create table vattu(
                      id int primary key auto_increment,
                      ma_vt varchar(50),
                      ten_vt varchar(50),
                      donvitinh varchar(50),
                      giatien double
);
create table tonkho(
                       id int primary key  auto_increment,
                       vattu_id int,
                       soluong int,
                       tongluongnhap int,
                       tongluongxuat int,
                       foreign key (vattu_id) references  vattu(id)
);
create table nhacungcap(
                           id int primary key auto_increment,
                           ma_ncc varchar(50),
                           ten_ncc varchar(50),
                           diachi_ncc varchar(255),
                           sodienthoai_ncc varchar(50)
);
create table dondathang(
                           id int primary key  auto_increment,
                           ma_donhang varchar(50),
                           ngaydathang date,
                           ncc_id int,
                           foreign key (ncc_id) references nhacungcap(id)
);

insert into vattu(ma_vt, ten_vt, donvitinh, giatien)
VALUES ('vt01','Xẻng Quân Dụng','Cái',50000);
insert into vattu(ma_vt, ten_vt, donvitinh, giatien)
VALUES ('vt02','Súng Trường AK47','Cái',2000000);
insert into vattu(ma_vt, ten_vt, donvitinh, giatien)
VALUES ('vt03','Đinh 5cm','Cân',70000);
insert into vattu(ma_vt, ten_vt, donvitinh, giatien)
VALUES ('vt04','Xi Măng','Tấn',800000);
insert into vattu(ma_vt, ten_vt, donvitinh, giatien)
VALUES ('vt05','Búa Tạ','Cái',90000);

create table phieunhap(
                          id int primary key auto_increment,
                          ma_phieunhap varchar(50),
                          ngaynhap date,
                          donhang_id int,
                          foreign key (donhang_id) references dondathang(id)
);

create table phieuxuat(
                          id int primary key  auto_increment,
                          ma_phieuxuat varchar(50),
                          ngayxuat date,
                          tenkhachhang varchar(50)
);

create table chitietdonhang(
                               id int primary key auto_increment,
                               donhang_id int,
                               vattu_id int,
                               soluongdat int,
                               foreign key (donhang_id) references dondathang(id),
                               foreign key (vattu_id) references vattu(id)
);

create table chitietphieunhap(
                                 id int primary key auto_increment,
                                 phieunhap_id int,
                                 vattu_id int,
                                 soluongnhap int,
                                 dongianhap double,
                                 ghichu varchar(255),
                                 foreign key (phieunhap_id) references phieunhap(id),
                                 foreign key (vattu_id) references vattu(id)
);

create table chitietphieuxuat(
                                 id int primary key auto_increment,
                                 phieuxuat_id int,
                                 vattu_id int,
                                 soluongxuat int,
                                 dongiaxuat double,
                                 ghichu varchar(255),
                                 foreign key (phieuxuat_id) references phieuxuat(id),
                                 foreign key (vattu_id) references vattu(id)
);

insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (1,50,10,30);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (2,20,40,10);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (3,0,10,50);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (4,0,0,0);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (5,10,10,0);

insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (1,0,0,30);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (2,0,0,0);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (3,50,0,0);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (4,20,10,10);
insert into tonkho(vattu_id, soluong, tongluongnhap, tongluongxuat)
values (5,10,0,0);


insert into nhacungcap(ma_ncc, ten_ncc, diachi_ncc, sodienthoai_ncc)
values ('ncc1','công ty Thành Công','Hà Nội','0342910909');
insert into nhacungcap(ma_ncc, ten_ncc, diachi_ncc, sodienthoai_ncc)
values ('ncc2','công ty Hải Hồng','Hà Nội','0342910808');
insert into nhacungcap(ma_ncc, ten_ncc, diachi_ncc, sodienthoai_ncc)
values ('ncc3','công ty Tuấn Kiệt','Hải Phòng','0342910707');
insert into nhacungcap(ma_ncc, ten_ncc, diachi_ncc, sodienthoai_ncc)
values ('ncc4','công ty Viettel','TP.Hồ Chí Minh','0342910505');
insert into nhacungcap(ma_ncc, ten_ncc, diachi_ncc, sodienthoai_ncc)
values ('ncc5','công ty Dạng Đông','Lào Cai','0342910202');



insert into dondathang(ma_donhang, ngaydathang, ncc_id)
VALUES ('ddh1','2021-08-20',1) ;
insert into dondathang(ma_donhang, ngaydathang, ncc_id)
VALUES ('ddh2','2021-09-25',2) ;
insert into dondathang(ma_donhang, ngaydathang, ncc_id)
VALUES ('ddh3','2021-10-28',5) ;


insert into phieunhap(ma_phieunhap, ngaynhap, donhang_id)
values ('pn1','2022-01-05',1);
insert into phieunhap(ma_phieunhap, ngaynhap, donhang_id)
values ('pn2','2022-01-08',2);
insert into phieunhap(ma_phieunhap, ngaynhap, donhang_id)
values ('pn3','2022-01-25',3);


insert into phieuxuat(ma_phieuxuat, ngayxuat, tenkhachhang)
values ('px1','2022-03-10','Nguyễn Thu Minh');
insert into phieuxuat(ma_phieuxuat, ngayxuat, tenkhachhang)
values ('px2','2022-04-05','Đào Hải Yến');
insert into phieuxuat(ma_phieuxuat, ngayxuat, tenkhachhang)
values ('px3','2022-03-15','Phạm Thu Trang');



insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (1,1,10);
insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (2,3,20);
insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (3,5,15);
insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (1,2,50);
insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (1,4,45);
insert into chitietdonhang(donhang_id, vattu_id, soluongdat)
values (3,4,25);


insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (1,1,60,1000,'nhập 60 cái xẻng của công ty Thành Công');
insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (2,2,40,1300000,'nhập 40 khẩu ak của công ty Hải Hồng');
insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (3,5,30,50000,'nhập 60 cái búa tạ của công ty Dạng Đông');
insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (1,1,30,1200,'nhập 30 cái xẻng của công ty Thành Công');
insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (2,2,20,1200000,'nhập 20 khẩu ak của công ty Hải Hồng');
insert into chitietphieunhap(phieunhap_id, vattu_id, soluongnhap, dongianhap, ghichu)
values (3,5,30,55000,'nhập 30 cái búa tạ của công ty Dạng Đông');


insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (1,1,20,2000,'Bán 20 cái xẻng cho khách Nguyễn Thu Minh');
insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (2,2,15,2000000,'Bán 15 khẩu ak cho khách Đào Hải Yến');
insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (3,5,30,70000,'Bán 30 cái búa tạ cho khách Phạm Thu Trang');
insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (1,1,10,2200,'Bán 10 cái xẻng cho khách Nguyễn Thu Minh');
insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (2,2,25,2300000,'Bán 25 khẩu ak cho khách Đào Hải Yến');
insert into chitietphieuxuat(phieuxuat_id, vattu_id, soluongxuat, dongiaxuat, ghichu)
values (3,5,20,75000,'Bán 20 cái búa tạ cho khách Phạm Thu Trang');


# câu 1
select
    ma_phieunhap,
    ma_vt,soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id;

# câu 2
select
    ma_phieunhap,
    ma_vt,
    ten_vt,
    soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id;

# câu 3
select
    ma_phieunhap,
    ngaynhap,
    ma_donhang,
    ma_vt,
    ten_vt,
    soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id
         join dondathang d on d.id = phieunhap.donhang_id;

# câu 4

select
    ma_phieunhap,
    ngaynhap,
    ma_donhang,
    ma_ncc,
    ma_vt,
    ten_vt,
    soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id
         join dondathang d on d.id = phieunhap.donhang_id
         join nhacungcap n on n.id = d.ncc_id;

# câu 5

select
    ma_phieunhap,
    ma_vt,soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id
where soluongnhap>30;

# câu 6
select
    ma_phieunhap,
    ma_vt,
    ten_vt,
    soluongnhap,
    dongianhap,
    (soluongnhap*dongianhap) as "Thành Tiền"
from phieunhap
         join chitietphieunhap on phieunhap.id = chitietphieunhap.phieunhap_id
         join vattu v on chitietphieunhap.vattu_id = v.id
where donvitinh = 'cái';


# câu 7
select
    ma_phieuxuat,
    ma_vt,
    ten_vt,
    soluongxuat,
    dongiaxuat,
    (soluongxuat*dongiaxuat) as "Thành Tiền"
from chitietphieuxuat
         join phieuxuat p on chitietphieuxuat.phieuxuat_id = p.id
         join vattu v on v.id = chitietphieuxuat.vattu_id;

# câu 8
select
    ma_phieuxuat,
    ma_vt,
    ten_vt,
    soluongxuat,
    dongiaxuat
from chitietphieuxuat
         join phieuxuat p on chitietphieuxuat.phieuxuat_id = p.id
         join vattu v on v.id = chitietphieuxuat.vattu_id;

# câu 9
select
    ma_phieuxuat,
    tenkhachhang,
    ma_vt,
    ten_vt,
    soluongxuat,
    dongiaxuat
from chitietphieuxuat
         join phieuxuat p on chitietphieuxuat.phieuxuat_id = p.id
         join vattu v on v.id = chitietphieuxuat.vattu_id;
