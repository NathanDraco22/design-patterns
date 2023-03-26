
mixin DBAdapter{
  String request();
}

class MongoAdapter with DBAdapter{
  @override
  String request() => "Data from MongoDB";
}

class PostgresAdapter with DBAdapter{
  @override
  String request() => "Data from Postgres";
}

class Client{

  DBAdapter db;
  Client(this.db);
  void fecthData() => print(db.request());

}

void main(List<String> args) {
  
  final postgresAdapter = PostgresAdapter();
  final mongoAdapter = MongoAdapter();

  final client = Client(postgresAdapter);

  client.fecthData();

  client.db = mongoAdapter;

  client.fecthData();

}