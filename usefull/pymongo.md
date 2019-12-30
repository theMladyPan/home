# some usefull mongodb tricks

```python
#!/usr/bin/env python3

import pymongo

mongo = pymongo.MongoClient('localhost', 27017)
database = mongo.databaseName
database.authenticate("username", "pass")
collection = database.collectionName

collection.find_one({"_id": 2123}) # return first matching entry
try:
    collection.insert_one({"_id": "112", "data": [1,2,"Leco"]})
except pymongo.errors.DuplicateKeyError:
    col_tickets.replace_one({"data": [1,2,"Leco"]})
```

from commandline (sudo apt install mongo-client (?))
```shell
mongo 192.168.1.100/databaseName -u "username"

db.createUser(
  {
    user: "stanke",
    pwd: "passwd",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)

db.createUser(
  {
    user: "stanke",
    pwd: "otherpassword",
    roles: [ { role: "readWrite", db: "crypto" } ]
  }
)
```
