from abc import ABC, abstractmethod

class DBAdapter(ABC):
    @abstractmethod
    def request(self) -> str:
        pass

class PostgresAdapter(DBAdapter):
    def request(self) -> str:
        return "DATA FROM POSTGREST"

class MongoAdapter(DBAdapter):
    def request(self) -> str:
        return "DATA FROM MONGO"


class Client:
    db : DBAdapter
    def __init__(self, db: DBAdapter) -> None:
        self.db = db
    def fetch_data(self):
        print(self.db.request())

postrgres_adapter = PostgresAdapter()
mongo_adapter = MongoAdapter()

client_instance = Client(db= postrgres_adapter)
client_instance.fetch_data()

client_instance.db = mongo_adapter
client_instance.fetch_data()