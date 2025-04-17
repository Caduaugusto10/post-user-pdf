CREATE DATABASE cadastro;

\c cadastro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiago.ferreira@email.com'),
    ('Marcelo Carboni', 'marcelo.carboni@email.com'),
    ('Eduardo Correia', 'eduardo.correia@email.com'),
    ('Felipe Santos', 'felipe.santos@email.com');
    

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    photo VARCHAR(500), 
    user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO posts (title, content, photo, user_id) VALUES
    ('Paisagem', 'Uma bela paisagem no fim de tarde', 'https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg', 1),
    ('Foto', 'Um grande dia de pesca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s', 2),
    ('Dia de praia', 'Um belo dia de piscina', 'https://all.accor.com/magazine/imagerie/ferias-na-praia-onde-passar-melhores-praias-do-brasil-4b26.jpg', 3),
    ('Piscina', 'Uma bela piscina', 'https://th.bing.com/th/id/R.b131627446e8c40b9737614a4cac1201?rik=v01MfxvfneDQqg&pid=ImgRaw&r=0', 4);