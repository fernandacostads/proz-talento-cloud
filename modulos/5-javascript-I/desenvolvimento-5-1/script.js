const titulo = document.getElementById("titulo");
const link = document.querySelector("a");
const listaNaoOrdenada = document.querySelector("ul");
const listaOrdenada = document.getElementById("lista-ordenada");

titulo.innerText = "Projeto com JavaScript";
link.innerText = "Proz Educação";

listaNaoOrdenada.innerHTML = `
    <li>Exemplo de conteúdo 1</li>
    <li>Exemplo de conteúdo 2</li>
    <li>Exemplo de conteúdo 3</li>
`;

listaOrdenada.innerHTML = `
    <li><a href="https://www.google.com">Google</a></li>
    <li><a href="https://www.youtube.com">YouTube</a></li>
    <li><a href="https://aws.amazon.com/">AWS</a></li>
`;
