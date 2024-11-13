
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(100) NOT NULL,               
    data_nascimento DATE NOT NULL,           
    email VARCHAR(100),                       
    telefone VARCHAR(15)                      
);

CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,                
    descricao TEXT,                        
    ano_letivo INT NOT NULL,                
    id_professor INT,                         
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor) -- 
);
CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,                 
    email VARCHAR(100),                          
    telefone VARCHAR(15)                          
);

CREATE TABLE Chamada (
    id_chamada INT PRIMARY KEY AUTO_INCREMENT,   
    data_chamada DATE NOT NULL,                
    id_turma INT,                               
    id_aluno INT,                               
    presente BOOLEAN NOT NULL,                    
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma),  

    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno)   


);

