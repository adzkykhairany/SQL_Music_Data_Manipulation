SELECT * FROM MsBranch;
SELECT * FROM MsMusicInsType;
SELECT * FROM MsEmployee;
SELECT * FROM MsMusicIns;
SELECT * FROM HeaderTransaction;
SELECT * FROM DetailTransaction;

INSERT INTO MsBranch VALUES ('BR001','Cabang Merdeka','Jl. Gang Merdeka No. 17','021-7771234');
INSERT INTO MsBranch VALUES ('BR002','Cabang Sejahtera','Jl. Sejahtera Sehat Selalu No. 88','022-2008972');
INSERT INTO MsBranch VALUES ('BR003','Cabang Adil','Jl. Adil No. 33','021-8983234');
INSERT INTO MsBranch VALUES ('BR004','Cabang Makmur','Jl. Gang Makmur No. 12','021-6526321');
INSERT INTO MsBranch VALUES ('BR005','Cabang Damai','Jl. Damai Aman Sentosa No. 45','044-8989898');

INSERT INTO MsEmployee VALUES ('EM001','Kikis Sabrina Mona','Jl. Putar-Putar No. 8','022-1239995','F','1989-03-21','3500000','BR001');
INSERT INTO MsEmployee VALUES ('EM002','Marlene Martani','Jl. Gajebo No. 32','022-5675542','F','1988-06-14','4250000','BR002');
INSERT INTO MsEmployee VALUES ('EM003','Rakhmat Suryahadi','Gang Gansing No. 19','021-3451232','M','1988-01-30','3670000','BR002');
INSERT INTO MsEmployee VALUES ('EM004','Suhandi','Jl. Pintu Lima No. 5','022-4519377','M','1985-02-10','5600000','BR001');
INSERT INTO MsEmployee VALUES ('EM005','Lisye Mareta Cahya','Jl. Gang Medan Merdeka No. 25','021-9798123','F','1986-12-12','5400000','BR001');
INSERT INTO MsEmployee VALUES ('EM006','Sofian Chandra','Jl. Putar-Putar No. 12','021-8763445','M','1987-12-11','5500000','BR005');
INSERT INTO MsEmployee VALUES ('EM007','William Salim','Jl. Pusing-Pusing No. 76','022-4859345','M','1987-08-14','5490000','BR005');
INSERT INTO MsEmployee VALUES ('EM008','William Wijaya','Jl. Gichung No. 10','022-7859123','M','1989-11-04','5590000','BR003');

INSERT INTO MsMusicInsType VALUES ('MT001','Guitar');
INSERT INTO MsMusicInsType VALUES ('MT002','Violin');
INSERT INTO MsMusicInsType VALUES ('MT003','Piano');
INSERT INTO MsMusicInsType VALUES ('MT004','Drum');
INSERT INTO MsMusicInsType VALUES ('MT005','Keyboard');

INSERT INTO MsMusicIns VALUES ('MI001','Yamaha CX-40','1150000','23','MT001');
INSERT INTO MsMusicIns VALUES ('MI002','Yamaha KX-5000','5950000','12','MT005');
INSERT INTO MsMusicIns VALUES ('MI003','Yamaha C-390','1250000','10','MT001');
INSERT INTO MsMusicIns VALUES ('MI004','Excellent P-77','25700000','17','MT003');
INSERT INTO MsMusicIns VALUES ('MI005','Board B-123','5650000','30','MT005');
INSERT INTO MsMusicIns VALUES ('MI006','Pearl Q-300','9570000','26','MT004');
INSERT INTO MsMusicIns VALUES ('MI007','Supernova X-23','4510000','56','MT002');
INSERT INTO MsMusicIns VALUES ('MI008','Yamaha Grand X-1','49750000','12','MT003');

INSERT INTO HeaderTransaction VALUES ('TR001','2010-10-02 15:30:00.000','EM003','Veronica');
INSERT INTO HeaderTransaction VALUES ('TR002','2010-10-15 09:50:00.000','EM008','Richard Parker');
INSERT INTO HeaderTransaction VALUES ('TR003','2010-10-16 13:26:00.000','EM005','Steven Michael');
INSERT INTO HeaderTransaction VALUES ('TR004','2010-11-22 10:55:00.000','EM004','Anabelle Setiawan Wati');
INSERT INTO HeaderTransaction VALUES ('TR005','2010-11-25 15:30:00.000','EM003','Michelle Regina');
INSERT INTO HeaderTransaction VALUES ('TR006','2010-12-13 08:23:00.000','EM001','Dian Sastro');
INSERT INTO HeaderTransaction VALUES ('TR007','2010-12-13 18:19:00.000','EM001','Cathy');
INSERT INTO HeaderTransaction VALUES ('TR008','2010-12-27 15:21:00.000','EM006','Stephanie Meyer');
INSERT INTO HeaderTransaction VALUES ('TR009','2010-01-02 10:28:00.000','EM007','Michael J.');
INSERT INTO HeaderTransaction VALUES ('TR010','2010-01-03 12:39:00.000','EM002','Arnold Swasana Segar');

INSERT INTO DetailTransaction VALUES ('TR001','MI001','1');
INSERT INTO DetailTransaction VALUES ('TR001','MI004','2');
INSERT INTO DetailTransaction VALUES ('TR002','MI003','1');
INSERT INTO DetailTransaction VALUES ('TR002','MI005','2');
INSERT INTO DetailTransaction VALUES ('TR002','MI008','5');
INSERT INTO DetailTransaction VALUES ('TR003','MI007','4');
INSERT INTO DetailTransaction VALUES ('TR004','MI004','3');
INSERT INTO DetailTransaction VALUES ('TR004','MI006','3');
INSERT INTO DetailTransaction VALUES ('TR005','MI002','1');
INSERT INTO DetailTransaction VALUES ('TR006','MI001','2');
INSERT INTO DetailTransaction VALUES ('TR007','MI003','3');
INSERT INTO DetailTransaction VALUES ('TR007','MI006','5');
INSERT INTO DetailTransaction VALUES ('TR008','MI002','3');
INSERT INTO DetailTransaction VALUES ('TR008','MI004','2');
INSERT INTO DetailTransaction VALUES ('TR008','MI008','1');
INSERT INTO DetailTransaction VALUES ('TR009','MI002','2');
INSERT INTO DetailTransaction VALUES ('TR009','MI005','4');
INSERT INTO DetailTransaction VALUES ('TR010','MI001','2');
INSERT INTO DetailTransaction VALUES ('TR010','MI003','2');
INSERT INTO DetailTransaction VALUES ('TR010','MI004','2');
INSERT INTO DetailTransaction VALUES ('TR011','MI004','1');
INSERT INTO DetailTransaction VALUES ('TR011','MI005','1');

SELECT MusicInsTypeID, MusicIns FROM MsMusicIns;
SELECT MusicInsID, Qty FROM DetailTransaction WHERE TransactionID = 'TR011';
SELECT MusicInsID, Qty FROM DetailTransaction;

UPDATE DetailTransaction 
SET Qty = 3
WHERE TransactionID = 'TR011' AND MusicInsID = 'MI005';

UPDATE DetailTransaction 
SET Qty = 5
WHERE TransactionID = 'TR011';

DELETE FROM DetailTransaction WHERE TransactionID = 'TR011'; 

UPDATE DetailTransaction SET QTY = 5;

DELETE FROM DetailTransaction; 