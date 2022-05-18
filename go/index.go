// Pacote Go
package main

// Importar fmt Go
import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
	_ "github.com/lib/pq"
)

const (
	DB_USER     = "postgres"
	DB_PASSWORD = "pocoroxo10"
	DB_NAME     = "tb01"
)

// DB set up
func setupDB() *sql.DB {
	dbinfo := fmt.Sprintf("user=%s password=%s dbname=%s sslmode=disable", DB_USER, DB_PASSWORD, DB_NAME)
	db, err := sql.Open("postgres", dbinfo)

	checkErr(err)

	return db
}

func enableCors(w *http.ResponseWriter) {
	(*w).Header().Set("Access-Control-Allow-Origin", "*")
}

type TB01 struct {
	TB01Texto string `json:"col_texto"`
	TB01Data  string `json:"col_dt"`
}

type JsonResponse struct {
	Type    string `json:"type"`
	Data    []TB01 `json:"data"`
	Message string `json:"message"`
}

// Função para o tratamento de mensagens
func printMessage(message string) {
	fmt.Println("")
	fmt.Println(message)
	fmt.Println("")
}

// Função para o tratamento de erros
func checkErr(err error) {
	if err != nil {
		panic(err)
	}
}

// Create a tb01

// response and request handlers
func CreateTB01(w http.ResponseWriter, r *http.Request) {

	enableCors(&w)
	tb01Texto := r.FormValue("col_texto")

	var response = JsonResponse{}

	if tb01Texto == "" {
		response = JsonResponse{Type: "error", Message: "Faltando tb01Texto."}
	} else {
		db := setupDB()

		printMessage("Inserindo tb01 no BD")

		fmt.Println("Inserindo novo tb01 com texto: " + tb01Texto)

		var lastInsertID int
		err := db.QueryRow("INSERT INTO tb01 (col_texto, col_dt) VALUES($1, current_timestamp) returning id;", tb01Texto).Scan(&lastInsertID)

		// check errors
		checkErr(err)

		response = JsonResponse{Type: "successo", Message: "O TB01 foi inserido corretamente!"}
	}

	json.NewEncoder(w).Encode(response)
}

// Função main
func main() {
	// Inicia a rota mux
	router := mux.NewRouter()

	// Create a movie
	router.HandleFunc("/go/tb01", CreateTB01).Methods("POST")

	// servidor do app
	fmt.Println("Server at 8080")
	log.Fatal(http.ListenAndServe(":8080", router))
}
