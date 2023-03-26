package main

import "fmt"

type DBAdapter interface {
	request() string
}

type MongoAdapter struct{}

func (this *MongoAdapter) request() string {
	return "DATA FROM MONGO DB"
}

type PostgresAdapter struct{}

func (this *PostgresAdapter) request() string {
	return "DATA FROM POSTGRES"
}

type Client struct {
	db DBAdapter
}

func (this *Client) fetchData() {
	fmt.Println(this.db.request())
}

func main() {

	postgresAdapter := &PostgresAdapter{}
	mongoAdapter := &MongoAdapter{}

	client := Client{db: postgresAdapter}
	client.fetchData()

	client.db = mongoAdapter
	client.fetchData()

}
