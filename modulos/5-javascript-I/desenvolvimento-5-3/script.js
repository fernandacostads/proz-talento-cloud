// Cria o elemento título
const titulo = document.createElement('h1');
titulo.textContent = 'Exercício de Javascript';
titulo.id = 'titulo';
titulo.style.color = 'Green';
titulo.style.fontSize = '24px';

// Adiciona o título ao corpo da página
document.body.appendChild(titulo);

// Cria o elemento do produto
const produto = document.createElement('div');
produto.classList.add('produto');

// Cria o nome do produto
const nomeProduto = document.createElement('h2');
nomeProduto.textContent = 'Nome do Produto';

// Cria a descrição do produto
const descricaoProduto = document.createElement('p');
descricaoProduto.textContent = 'Descrição do produto.';

// Cria o preço do produto
const precoProduto = document.createElement('span');
precoProduto.textContent = 'R$ 100,00';

// Adiciona os elementos do produto ao elemento produto
produto.appendChild(nomeProduto);
produto.appendChild(descricaoProduto);
produto.appendChild(precoProduto);

// Adiciona o produto ao corpo da página
document.body.appendChild(produto);
