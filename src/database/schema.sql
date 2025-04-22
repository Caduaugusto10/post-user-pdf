CREATE DATABASE cadastro;

\c cadastro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Aarav Sharma', 'aarav.sharma@email.in'),
    ('Ananya Gupta', 'ananya.gupta@email.in'),
    ('Vivaan Kumar', 'vivaan.kumar@email.in'),
    ('Diya Patel', 'diya.patel@email.in'),
    ('Aditya Singh', 'aditya.singh@email.in'),
    ('Ishita Mehta', 'ishita.mehta@email.in'),
    ('Arjun Reddy', 'arjun.reddy@email.in'),
    ('Kavya Nair', 'kavya.nair@email.in'),
    ('Rohan Das', 'rohan.das@email.in'),
    ('Priya Iyer', 'priya.iyer@email.in'),
    ('Krishna Joshi', 'krishna.joshi@email.in'),
    ('Sneha Choudhary', 'sneha.choudhary@email.in'),
    ('Aryan Verma', 'aryan.verma@email.in'),
    ('Meera Rao', 'meera.rao@email.in'),
    ('Kabir Malhotra', 'kabir.malhotra@email.in'),
    ('Sanya Kapoor', 'sanya.kapoor@email.in'),
    ('Dev Mishra', 'dev.mishra@email.in'),
    ('Riya Jain', 'riya.jain@email.in'),
    ('Harsh Thakur', 'harsh.thakur@email.in'),
    ('Pooja Aggarwal', 'pooja.aggarwal@email.in'),
    ('Yash Bhatia', 'yash.bhatia@email.in'),
    ('Nisha Saxena', 'nisha.saxena@email.in'),
    ('Rajesh Yadav', 'rajesh.yadav@email.in'),
    ('Anjali Chauhan', 'anjali.chauhan@email.in'),
    ('Siddharth Kulkarni', 'siddharth.kulkarni@email.in'),
    ('Neha Desai', 'neha.desai@email.in'),
    ('Ayaan Shetty', 'ayaan.shetty@email.in'),
    ('Tanya Pillai', 'tanya.pillai@email.in'),
    ('Ritik Ghosh', 'ritik.ghosh@email.in'),
    ('Shruti Roy', 'shruti.roy@email.in'),
    ('Karan Bhatt', 'karan.bhatt@email.in'),
    ('Aditi Sengupta', 'aditi.sengupta@email.in'),
    ('Manav Chatterjee', 'manav.chatterjee@email.in'),
    ('Sakshi Banerjee', 'sakshi.banerjee@email.in'),
    ('Raghav Mukherjee', 'raghav.mukherjee@email.in'),
    ('Isha Paul', 'isha.paul@email.in'),
    ('Nikhil Dutta', 'nikhil.dutta@email.in'),
    ('Pallavi Bose', 'pallavi.bose@email.in'),
    ('Arnav Chakraborty', 'arnav.chakraborty@email.in'),
    ('Simran Sinha', 'simran.sinha@email.in'),
    ('Vikram Dasgupta', 'vikram.dasgupta@email.in'),
    ('Aarushi Basu', 'aarushi.basu@email.in'),
    ('Rajat Sengupta', 'rajat.sengupta@email.in'),
    ('Anushka Ghoshal', 'anushka.ghoshal@email.in'),
    ('Kunal Bhattacharya', 'kunal.bhattacharya@email.in'),
    ('Radhika Bose', 'radhika.bose@email.in'),
    ('Amitava Sen', 'amitava.sen@email.in'),
    ('Nandini Dey', 'nandini.dey@email.in'),
    ('Saurabh Chandra', 'saurabh.chandra@email.in'),
    ('Avni Tripathi', 'avni.tripathi@email.in'),
    ('Ravi Tiwari', 'ravi.tiwari@email.in');
    

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