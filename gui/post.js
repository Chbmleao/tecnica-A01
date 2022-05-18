
function fazPost(url, body) {
    console.log("Body=", body);
    let request = new XMLHttpRequest();
    request.open("POST", url, true);
    request.setRequestHeader("Content-type", "application/json");
    
    request.send(JSON.stringify(body));

    request.onload = function() {
        console.log(this.responseText);
    }

    return request.responseText;
}

function insereTB01() {
    event.preventDefault();
    let url = "https://localhost:8080/go/tb01";
    let texto = document.getElementById("col_texto").value;
    body = {
        "col_texto": texto
    };

    fazPost(url, body);
    return false;
}