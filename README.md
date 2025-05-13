# GymTrack

Aplicativo Flutter para gerenciamento de usuários e fichas de treino de academia. O app permite que os usuários se registrem, façam login, recuperem senha e controlem suas rotinas de treino de forma organizada e intuitiva.

---

## 🚀 Funcionalidades

### 👤 Autenticação de Usuário
- Registro de novos usuários
- Login com email e senha
- Recuperação de senha por email com:
  - Envio de código de verificação
  - Verificação do código enviado por email
  - Redefinição de senha com novo acesso
- Validação e mensagens de erro elegantes

### 📋 Gestão de Fichas de Treino
- Criar nova ficha de treino
- Editar, visualizar e excluir fichas
- Atribuir exercícios por grupo muscular
- Histórico de treinos anteriores

---

## 🛠️ Tecnologias Utilizadas

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- Backend com:
  - [Node.js](https://nodejs.org/)
  - [Express](https://expressjs.com/)
  - [Sequelize ORM](https://sequelize.org/)
  - [PostgreSQL](https://www.postgresql.org/)

---

## 📱 Telas Principais

- Login
- Registro de Usuário
- Recuperar Senha
- Verificação de Código
- Redefinir Senha
- Gestão de Treinos (CRUD)

---

## 📦 Como Rodar o Projeto

### Pré-requisitos

- Flutter SDK instalado
- Android Studio ou VS Code
- Emulador Android ou dispositivo físico
- Node.js + PostgreSQL instalados para o backend

### Backend

1. Clonar o projeto e navegar até a pasta `backend/`
2. Instalar dependências:
   ```bash
   npm install
   ```
3. Criar o banco de dados no PostgreSQL
4. Configurar o arquivo `.env` com os dados do banco
5. Rodar as migrações e iniciar o servidor:
   ```bash
   npx sequelize db:migrate
   node app.js
   ```

### Flutter

1. Navegar até a pasta do app Flutter
2. Rodar no emulador ou dispositivo:
   ```bash
   flutter run -d emulator-5554
   ```

---

## 🧩 Estrutura das Rotas de Autenticação (Backend)

- `POST /api/auth/register` – Cria novo usuário
- `POST /api/auth/login` – Realiza login e retorna token
- `POST /api/auth/forgot-password` – Envia código para o email
- `POST /api/auth/verify-code` – Verifica o código enviado
- `POST /api/auth/reset-password` – Redefine a senha

---

## ✨ Estilo Visual

- Telas estilizadas com tons de **azul** e **verde**
- Interface intuitiva, com links para navegação fácil entre as telas de autenticação

---

## 📧 Contato

Para dúvidas ou sugestões, entre em contato com a equipe GymTrack.