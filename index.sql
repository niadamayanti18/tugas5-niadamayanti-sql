-----SOAL 1
CREATE DATABASE books_store;

CREATE TABLE books
(
    id_buku INT
    AUTO_INCREMENT PRIMARY KEY,
    judul_buku VARCHAR
    (255),
    pengarang VARCHAR
    (255),
    tahun_terbit YEAR,
    penerbit VARCHAR
    (255),
    tanggal_dibuat DATE DEFAULT CURRENT_DATE,
    tangal_diupdate DATE DEFAULT CURRENT_DATE
);

    CREATE TABLE category
    (
        id_category INT
        AUTO_INCREMENT PRIMARY KEY,
    nama_category VARCHAR
        (255),
    tanggal_dibuat DATE DEFAULT CURRENT_DATE,
    tangal_diupdate DATE DEFAULT CURRENT_DATE
);

        -----SOAL 2
        INSERT INTO books
            (judul_buku,pengarang,tahun_terbit,penerbit)
        VALUES
            ('Building Microservices', 'Sam Newman', 2014, 'O Reily Media'),
            ('Clean Code', 'Robert C Martin', 2008, 'Prentice Hall'),
            ('The Pragmatic', 'Andrew Hunt', 1999, 'Addison Wesley'),
            ('Design Pattern', 'Erich Gamma', 1994, 'Addisson Wesley'),
            ('Introduction to Algoritm', 'Thomas H Cormen', 1990, 'MIT Press'),
            ('The Art of Computer Prog', 'Donald E Knuth', 1968, 'Addison Wesley'),
            ('Clean Architecture', 'Robert C Martin', 2017, 'Prentice Hall'),
            ('Refactoring', 'Martin Fowler', 1999, 'Addison Wesley'),
            ('Domain-Driven Design', 'Eric Evana', 2003, 'Addison Wesley'),
            ('The Mythical Man Month', 'Frederick', 1975, 'Addison Wesley')

        INSERT INTO category
            (nama_category)
        VALUES
            ('Pemograman'),
            ('Fiksi'),
            ('Nonfiksi'),
            ('Bisnis'),
            ('Teknologi'),
            ('Seni'),
            ('Sejarah'),
            ('Sains'),
            ('Hukum'),
            ('Kesehatan')

        -----SOAL 3
        SELECT *
        FROM 'books';
        SELECT *
        FROM 'category';


        ----SOAL 4
        UPDATE books
SET judul_buku = 'Building Microservices: Designing Fine Grained System 1st'
WHERE id_buku = 1;

        ----SOAL 5
        DELETE FROM books WHERE id_buku = 10;
        DELETE FROM category WHERE id_category = 10;

        ----SOAL 6
        ---1
        SELECT judul_buku
        FROM 'books'
        WHERE penerbit = 'Addison Wesley';
        ---2
        SELECT judul_buku
        FROM `books
        ` WHERE tahun_terbit >= 2003 && tahun_terbit <= 2023
        ---3
        SELECT judul_buku
        FROM books
        WHERE judul_buku LIKE '%design%';

        ----SOAL 7
        CREATE TABLE book_categories
        (
            id INT
            AUTO_INCREMENT PRIMARY KEY,
    id_category INT NOT NULL,
    id_book INT NOT NULL,
    tanggal_dibuat DATE DEFAULT CURRENT_DATE,
    tanggal_diupdate DATE DEFAULT CURRENT_DATE
)

            INSERT INTO book_categories
                (id_category,id_book)
            VALUES
                (1, 2)

            ----SOAL 8
            INSERT INTO book_categories
                (id_category,id_book)
            VALUES
                (1, 2),
                (5, 3),
                (1, 1)




            ---SOAL 9
            SELECT book_categories.id, books.judul_buku, category.nama_category
            FROM book_categories
                INNER JOIN books ON book_categories.id = books.id_buku
                INNER JOIN category ON books.id_buku = category.id_category


            ---SOAL 10
            ALTER TABLE books 
            ADD jumlah_halaman INT DEFAULT 100
            AFTER judul_buku





