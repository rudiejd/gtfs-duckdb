#!/bin/bash
if [[ $# -ne 2 ]]; then
   echo "Usage: $0 (gtfs_dir) (output_db_name)";
   echo "'gtfs_dir' is the directory of the unzipped gtfs bundle you want to turn into a SQL database";
   echo "'output_db_name' is the name of your new GTFS database";
   echo "You can then open the database using 'duckdb .(output_db_name)";
   exit 1;
fi

duckdb_createdb_file_name="$2.duckdb.sql"
for file in $1/*; do
    if [[ $file == *.txt ]]; then
       base=$(basename ${file})
       echo "CREATE TABLE ${base%%.*} AS" >> $duckdb_createdb_file_name
       echo " SELECT * FROM read_csv('$file', sample_size = -1);" >> $duckdb_createdb_file_name
    fi
done

duckdb_db_filename="$2"
echo "EXPORT DATABASE '$2';" >> $duckdb_createdb_file_name

# create the database by running the create DB script
duckdb $duckdb_db_filename < $duckdb_createdb_file_name;

# open the DB interactively
duckdb $duckdb_db_filename
