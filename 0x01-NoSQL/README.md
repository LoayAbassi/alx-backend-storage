# nosql = not only sql / non relational 
when using realtional db with massive data , the system becomes slow in terms of response time 
don't follow strict schemas 

1. collection 
like sql table , stores multiple documents 

2. document 
single record in collection
json-like but optimized of dbs (BSON)
{ "name": "Alice", "age": 25 }

3. filed

key-value pair 
{ "name": "Alice" }

# ACID : 
1. Atomicity:

    A transaction is all-or-nothing. If any part of it fails, the entire transaction is rolled back.

    Example: If transferring money between two accounts, either both accounts are updated, or none are.
    
2. Consistency:

    Ensures the database stays in a valid state before and after a transaction.
    
    Example: If a bank account balance can’t be negative, the database enforces this rule.

3. Isolation:

    Transactions are independent of each other and don’t interfere.
    
    Example: Two users withdrawing from the same account won’t affect each other’s transactions.

4. Durability:

    Once a transaction is committed, it is permanently saved, even in case of a crash.
    
    Example: After transferring money, the update won’t disappear due to a power failure.

# shell 
1. inserting
    db.users.insertOne({"lakab":"abassi","noumrou":5558887455,"win":"sidi hssine sahbi"})

2. searching
    db.users.find({"lakab":"abassii"}) 
    // will return any document with the key-value like that
    db.users.find() // will return all documents

3. deleting

    db.users.deleteOne({ lakab: "loay" }); // deletes first document that matches this 

    db.users.deleteMany({age:{$lt:18}}) // deletes all documents with age lower than 18
    db.users.deleteMany() // will dleete all documents

4. updating 

    db.users.updateOne({name:"Alice"},{$set:{email:"mail@mail.mail",something:5}})

5. counting

    db.school.countDocuments()
    db.collection.countDocuments({ age: { $gt: 25 } })

