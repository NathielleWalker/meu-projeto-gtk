# meu-projeto-gtk
Aplicativo desktop desenvolvido com Python e GTK.

#  Plataforma de E-commerce

> Projeto Escolar — Plataforma web para compra e venda de roupas já usadas (brecho).

---

## 🔥 Motivação

A motivação do projeto está em **ajudar pessoas a acharem roupas de qualidade de lojas confiaveis com um preço acessível** feitas através de um site web.

A importância se baseia na **dificuldade que muitos têm ao comprar roupas de qualidade (mesmo que já usadas) por um preço acessível**, dada a grande variedade de plataformas web não confiáveis existentes hoje em dia.

---

## 🎨 Design

### Paleta de Cores e Tipografia

---

## 📝 Prototipação

---

## 🚧 Em Desenvolvimento

A plataforma está em desenvolvimento. Em breve terá funcionalidades como:

- Cadastro tanto do vendedor quanto do cliente
- Login do vendedor e do cliente
- Recomendação de brechos verificados
- Interação entre vendedor e cliente por meio de um chat privado 
- Analise de aproveitamento de recomendação
- Lista de compras
- Forum de publicações

---

# 🔐 Sistema de Cadastro e Login — E-commerce Brechó

O sistema possui dois tipos principais de usuários:

Cliente (usuário que compra e faz o quiz para receber recomendações)

Vendedor (usuário que cadastra peças no sistema para vender)

---

##✅ 1. Cadastro de Usuário

Durante o cadastro, o sistema deve identificar o tipo de perfil (cliente ou vendedor), coletar os dados básicos e permitir futuras personalizações de estilo ou catálogo.

**🧾 Campos Comuns:**

Nome completo

E-mail

Senha (com confirmação)

Data de nascimento (para perfil etário + verificação)

Gênero (opcional)

Tipo de conta: Cliente ou Vendedor

**🛍️ Campos Adicionais (Cliente):**

Aceite para receber recomendações personalizadas

Interesses de estilo (pode puxar dos resultados do quiz)

Endereço de entrega (pode ser preenchido depois)

**🧵 Campos Adicionais (Vendedor):**

Nome da loja / perfil de venda

Descrição da loja (estilo, foco, filosofia)

Imagem do perfil / logo

Endereço para cálculo de frete

Política de envio e devolução

Links de redes sociais (opcional)

**📌 Após o cadastro, o vendedor é redirecionado para uma área de gestão de peças.**

---

##✅ 2. Login
Campos:

E-mail

Senha

**🔒 Funcionalidades adicionais:**

Esqueci minha senha (com envio por e-mail)

Lembrar de mim (login persistente)

Login com Google ou redes sociais (opcional, mas recomendado)

---

##✅ 3. Área Logada (Painéis separados)

**🧑 Painel do Cliente:**

Acesso ao quiz de estilo

Histórico de compras

Favoritos / wishlist

Recomendados para você

Mensagens com vendedores

Atualizar dados do perfil

**🧑‍🎨 Painel do Vendedor:**

Dashboard com estatísticas (visitas, vendas, etc)

Cadastro de produtos (com upload de imagens, descrição, medidas, preço, categoria etc)

Gerenciar estoque

Responder mensagens de clientes

Atualizar perfil da loja

---

# 🧠 Sistema de E-commerce — Critérios de Mapeamento (Brecho)

Este projeto utiliza quizzes para mapear as preferências dos usuários e recomendar um estilo com base em critérios cuidadosamente selecionados. Abaixo estão os principais eixos utilizados no sistema:

---

##✅ 1. Estilo Pessoal (Identidade Visual)

Ajuda a identificar o estilo predominante do usuário, facilitando recomendações mais assertivas de roupas e acessórios.

**Categorias:**

Clássico

Casual / Básico

Streetwear / Urbano

Romântico

Vintage / Retrô

Boho / Hippie Chic

Minimalista

Alternativo / Gótico / Punk

Y2K / Anos 2000

📌 Quiz:
"Qual dessas frases combina mais com seu estilo do dia a dia?"
(ex: “Prefiro conforto com um toque moderno” / “Sou fã de looks com pegada retrô”)

---

##✅ 2. Ocasião de Uso

Compreende o contexto em que o usuário pretende usar as roupas, refinando as sugestões.

**Categorias:**

Trabalho / Escritório

Eventos sociais

Dia a dia / Casual

Festas / Noite

Viagem / Férias

Atividades ao ar livre

📌 Quiz:
"Você está procurando roupas para qual tipo de ocasião?"
(com opções ilustradas visualmente)

---

##✅ 3. Faixa Etária Estilística (Público-Alvo)

Ajuda a calibrar o nível de ousadia ou formalidade das peças sugeridas.

**Categorias:**

Adolescente (até 18)

Jovem (19–24)

Jovem adulto (25–34)

Adulto (35–49)

Maduro (50+)

📌 Quiz:
"Com qual dessas faixas você mais se identifica no seu estilo hoje?"

---

##✅ 4. Preferência de Cores

Identifica as cores que o usuário mais gosta ou costuma usar, evitando sugestões fora do perfil.

**Categorias:**

Neutros (preto, branco, bege, cinza)

Terrosos (caramelo, mostarda, marrom)

Vibrantes (vermelho, laranja, pink)

Tons frios (azul, verde, roxo)

Pastéis (lavanda, rosa bebê, azul claro)

📌 Quiz:
"Qual paleta de cores mais te representa na hora de se vestir?"

---

##✅ 5. Categoria de Produto Favorita

Foca nas peças que o cliente mais procura para facilitar a curadoria do sistema.

**Categorias:**

Roupas (blusas, calças, vestidos, saias)

Casacos / Jaquetas

Acessórios (bolsas, cintos, lenços)

Calçados

Peças statement (diferentonas)

📌 Quiz:
"Qual tipo de peça você mais ama garimpar em um brechó?"

---

##✅ 6. Motivação de Compra (Valores e Intenção)

Compreende os valores por trás da escolha do brechó como canal de consumo, e isso ajuda a alinhar comunicação e engajamento.

**Categorias:**

Sustentabilidade / Consumo consciente

Economia (preço acessível)

Exclusividade (peças únicas)

Estilo retrô / amor por moda vintage

Curiosidade ou tendência

📌 Quiz:
"O que te atrai na hora de comprar em um brechó?"

---
