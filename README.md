# 📘 Projeto Phoenix LiveView — README

## 👤 Dados

Aluno: Gabriel Felipe Carvalho Silva
Disciplina: TÓPICOS EM ENGENHARIA DA COMPUTAÇÃO II - INTRODUÇÃO A PROGRAMAÇÃO FUNCIONAL

## 🔗 Link do Tutorial

[Tutorial Todo list](https://profsergiocosta.notion.site/Como-Criar-um-App-Todo-List-com-Elixir-e-LiveView-do-Zero-2a8cce97509380eba53fc82bbeb08435)

---

## 📄 Descrição Breve

Este projeto foi desenvolvido seguindo um tutorial passo a passo utilizando o ecossistema **Phoenix**.  
Ele utiliza:

- **Phoenix Framework** — Base da aplicação web.
- **LiveView** — Para interfaces reativas sem usar JavaScript no front.
- **Ecto** — Para lidar com banco de dados, schemas e queries.
- **DaisyUI** — Biblioteca de componentes estilizados para o TailwindCSS.

O objetivo é criar uma aplicação funcional explorando os principais conceitos do Phoenix e LiveView, incluindo rotas, renderização dinâmica, persistência de dados e organização de componentes.

---

## 🚀 Como Rodar o Projeto

### ✔️ Pré-requisitos

Antes de começar, você precisa ter instalado:

- **Elixir** (1.14 ou superior)
- **Phoenix**
- **Node.js**
- **PostgreSQL** (ou o banco configurado no `config/dev.exs`)

---

### 📦 Instalação das Dependências

```bash
mix deps.get
```

Instalar dependências do front-end:

```bash
cd assets
npm install
cd ..
```

### 🗄️ Preparar o Banco de Dados

Criar o banco:

```bash
mix ecto.create
```

Rodar migrações:

```bash
mix ecto.migrate
```

### ▶️ Rodar o Servidor

```bash
mix phx.server
```

Depois, acesse: `http://localhost:4000`
