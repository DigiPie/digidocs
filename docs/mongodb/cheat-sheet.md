# Cheat sheet

*Last updated on: 19 January, 2020*  
*Compiled by: [Evan Tay](https://evantay.com/)*

The purpose of this page is to summarise key `mongodb` commands you will always use.

## Print a collection's documents
``` bash
# Select the database
show dbs
use <db-name> 

# Show all collections in the database
show collections 

# Print out all documents in the database
db.<collection-name>.find() 

# Print out in an easy-to-read but less compact format
db.<collection-name>.find().pretty()
```

## Delete documents
``` bash
show dbs
use <db-name> 

# Show all collections in the database
show collections 

# Remove all documents in the collection
db.<collection-name>.remove( { } )

# See reference for more information
```

## Resources

- MongoDB's official guide to *`mongo` Shell Quick Reference*:  
  <https://docs.mongodb.com/manual/reference/mongo-shell/>
- MongoDB's official guide to `db.collection.remove()`:   
  <https://docs.mongodb.com/manual/reference/method/db.collection.remove/>