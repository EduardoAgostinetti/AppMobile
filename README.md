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
- Atualização de dados do usuário:
  - Alterar nome
  - Alterar email (com validação)
  - Alterar senha

### 📋 Gestão de Fichas de Treino
- Criar nova ficha de treino (exercícios com grupo muscular, nome e séries)
- Listar todas as fichas de treino de um usuário
- Editar ficha de treino por ID
- Excluir ficha de treino por ID
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
- Perfil do Usuário (edição de nome, email e senha)

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
4. Configurar o arquivo `.env` com os dados do banco e variáveis sensíveis, incluindo:
   - `EMAIL_USER` e `EMAIL_PASS` para envio de email
   - `JWT_SECRET` para geração dos tokens
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
- `POST /api/auth/forgot` – Envia código para o email para recuperação de senha
- `POST /api/auth/verify-code` – Verifica o código enviado
- `POST /api/auth/reset` – Redefine a senha
- `GET /api/auth/user/:id` – Obter dados do usuário (sem senha)
- `PUT /api/auth/user/:id/name` – Atualiza nome do usuário
- `PUT /api/auth/user/:id/email` – Atualiza email do usuário (verifica duplicidade)
- `PUT /api/auth/user/:id/password` – Atualiza senha do usuário

---

## 🧩 Estrutura das Rotas de Fichas de Treino (Backend)

/workout

- `POST /workout/` – Criar nova ficha de treino
- `GET /workout/user/:userId` – Listar todas as fichas de treino de um usuário
- `PUT /workout/:id` – Atualizar ficha de treino por ID
- `DELETE /workout/:id` – Deletar ficha de treino por ID

---

## ✨ Estilo Visual

- Telas estilizadas com tons de **azul** e **verde**
- Interface intuitiva, com links para navegação fácil entre as telas de autenticação e gestão de treino

---

