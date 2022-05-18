function fazGet(url) {
    let request = new XMLHttpRequest()
    request.open("GET", url, false)
    request.send()
    return request.responseText
}

function criaLinha(usuario) {
    let linha = document.createElement("tr");
    tdId = document.createElement("td");
    tdTexto = document.createElement("td");
    tdData = document.createElement("td");

    tdId.innerHTML = usuario.id;
    tdTexto.innerHTML = usuario.col_texto;
    tdData.innerHTML = usuario.col_dt;

    linha.appendChild(tdId);
    linha.appendChild(tdTexto);
    linha.appendChild(tdData);

    return linha;
}

function main() {
    
    let data = fazGet("http://localhost:3000/api/tb01");
    let usuarios = JSON.parse(data);
    let tabela = document.getElementById("tabela");

    usuarios.forEach(element => {
        let linha = criaLinha(element);
        tabela.appendChild(linha);
    });
}

main()