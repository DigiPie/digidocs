# Cheat-sheet

*Last updated on 14 Jan, 2020*

The purpose of this page is to summarise key `mongodb` commands you will always use.

## Print a collection's documents
```bash
# Select the database
show dbs
use <db-name> 

# Show all collections in the database
show collections 

# Print out all documents in the database
db.<collection>-name.find() 

# Print out in an easy-to-read but less compact format
db.<collection-name>.find().pretty()
```

## Resources

- MongoDB's official guide to *`mongo` Shell Quick Reference*:  
  <https://docs.mongodb.com/manual/reference/mongo-shell/>